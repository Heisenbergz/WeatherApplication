using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using System.Text.RegularExpressions;

namespace WeatherApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        Weather myWeather;
        string ApiKey = "cd7be481df71d676";

        private void buttonCheck_Click(object sender, RoutedEventArgs e)
        {
            string LongCountryName;
            string LongCityName; 
            myWeather = new Weather();
            LongCountryName = textBoxCountry.Text.Trim();
            LongCityName = textBoxCity.Text.Trim();
            myWeather.CountryName = Regex.Replace(LongCountryName, @"\s+", "");
            myWeather.CityName = Regex.Replace(LongCityName, @"\s+", "");
            

            Console.WriteLine(myWeather.CityName);
            string Request = String.Format("http://api.wunderground.com/api/{0}/forecast/geolookup/conditions/q/{1}/{2}.xml", ApiKey, myWeather.CountryName, myWeather.CityName);
            XmlDocument myDocument = new XmlDocument();
            myDocument.Load(Request);

            XmlNode NodeToFind;
            XmlElement root = myDocument.DocumentElement;
            imageOfWeather.Source = null;
            NodeToFind = root.SelectSingleNode("//weather");


            if(NodeToFind == null)
            {
                textBlockError.Text = "No matching city or country found!";
                textBlockError.Background = Brushes.Red;
                textBlockWeatherNow.Text = "-";
                textBlockTemp.Text = "-";
                textBlockWind.Text = "-";
            }
            else
            {
                XmlNode CurrentObservation = myDocument.SelectSingleNode("response").SelectSingleNode("current_observation");
                myWeather.WeatherNow = CurrentObservation.SelectSingleNode("weather").InnerText;
                myWeather.Temp = CurrentObservation.SelectSingleNode("temp_c").InnerText + "C";
                myWeather.Wind = CurrentObservation.SelectSingleNode("wind_kph").InnerText + "km/h";
               

                DisplayWeather();
                DisplayIcon();
            }
            
        }

        public void DisplayWeather()
        {
            textBlockWeatherNow.Text = myWeather.WeatherNow;
            textBlockTemp.Text = myWeather.Temp;
            textBlockWind.Text = myWeather.Wind;
            textBlockError.Text = "";
            textBlockError.Background = null;
            
        }

        public void DisplayIcon()
        {
            if (myWeather.WeatherNow.Contains("Mist") || myWeather.WeatherNow.Contains("Fog"))
            {
                ImageSource imageSource = new BitmapImage(new Uri("C:/Users/Łukasz/Desktop/foggy.png"));
                imageOfWeather.Source = imageSource;
           }

            if ((myWeather.WeatherNow.Contains("Overcast")))
            {
                ImageSource imageSource = new BitmapImage(new Uri("C:/Users/Łukasz/Desktop/Overcast.png"));
                imageOfWeather.Source = imageSource;
            }

            if ((myWeather.WeatherNow.Contains("Clear")) || (myWeather.WeatherNow.Contains("Sunny")) )
            {
                ImageSource imageSource = new BitmapImage(new Uri("C:/Users/Łukasz/Desktop/sunny.png"));
                imageOfWeather.Source = imageSource;
            }

            if ((myWeather.WeatherNow.Contains("Rain")) || (myWeather.WeatherNow.Contains("Rainy")))
            {
                ImageSource imageSource = new BitmapImage(new Uri("C:/Users/Łukasz/Desktop/rainy.png"));
                imageOfWeather.Source = imageSource;
            }
        }
    }
}
