   M S B A M L   `   `   `  ����E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WeatherApp
WeatherApp  5   	       WeatherApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WeatherApp     5   	     � Title$  Twoja pogoda��5   	   $	��350��6   $	��525��6+   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��69* �6   �� 5      $
��190* �6   �� 5      $	��61* �6   .+�5   
   �� -   5         ��Name$ textBlockCountry��5      $
��Left=�6.   $��	56,10,0,0q�6I   $
��Wrap=�6\   $��Country��6p   $	��Top=�6   �� 5   
   -   5        $ textBlockCity��5      $
��Left=�6+   $��
216,10,0,0q�6F   $
��Wrap=�6Z   $
��City��6n   $	��Top=�6z   �� 5   
   -   5         ��Name$ textBoxCountry��5      $
��Left=�6*   $��23��6E   $��	26,36,0,0q�6Q    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x   $	��120��6�   �� 5   
   -   5        $ textBoxCity��5      $
��Left=�6'   $��23��6B   $��
181,36,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $	��120��6�   �� 5   
   -   5         ��Name$ buttonCheck��5      $��Check!��6&   $
��Left=�67   $��
364,36,0,0q�6R   $	��Top=�6f   $��75��6~   6�   �� 5   
   -   5        $ textBlockWeatherNow��5      $
��Left=�61   $��
146,40,0,0q�6L   $��1��6`   $
��Wrap=�6m   $��	TextBlock��6�   $	��Top=�6�   $	��155��6�   �� 5   
   -   5        $ textBlockTemp��5      $
��Left=�6+   $��
146,76,0,0q�6F   $��1��6Z   $
��Wrap=�6g   $��	TextBlock��6{   $	��Top=�6�   $	��155��6�   �� 5   
   -   5        $ textBlockWind��5      $
��Left=�6+   $��146,117,0,0q�6F   $��1��6[   $
��Wrap=�6h   $��	TextBlock��6|   $	��Top=�6�   $	��155��6�   �� 5   
   -	   5        $ 	textBlock��5      $
��Left=�6'   $��	10,43,0,0q�6B   $��1��6U   $
��Wrap=�6b   $��Weather��6v   $	��Top=�6�   $��57��6�   �� 5   
   -
   5        $ textBlock_Copy��5      $
��Left=�6,   $��	10,79,0,0q�6G   $��1��6Z   $
��Wrap=�6g   $��Temperature��6{   $	��Top=�6�   $��79��6�   �� 5   
   -   5        $ textBlock_Copy1��5      $
��Left=�6-   $��
10,117,0,0q�6H   $��1��6\   $
��Wrap=�6i   $
��Wind��6}   $	��Top=�6�   $��57��6�   �� 5   
   -   5        $ textBlockError��5      $
��Left=�6,   $��
104,10,0,0q�6G   $��2��6[   $
��Wrap=�6h   $	��Top=�6|   $��20(�6�   �� 5   
   -   5         ��Name$ imageOfWeather��5      $
��Left=�6(   $	��100��6C   $��
364,43,0,0q�6P   $��1��6d   $	��Top=�6q   $	��100��6�   5      5      