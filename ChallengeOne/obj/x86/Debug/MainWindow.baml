   M S B A M L   `   `   `  ����G  CChallengeOne, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ChallengeOneChallengeOne  5   	   A%clr-namespace:ChallengeOne.ConvertersChallengeOne.Converters  5   	       ChallengeOne.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ChallengeOne     5   	   6conv%clr-namespace:ChallengeOne.Converters     5   	     � Title$  
MainWindow��5	   	   $	��350��6   $	��525��6)    � 	Resources 5
      .  (ChallengeOne.Converters.BoolToVisibility   bool2vis��%   &	          5   
   63   5      .��5      � .+�5   
   �� -   5         ��Name$ controlSlider��5      $
��Left=�6s   $��
10,126,0,0q�6�   $	��Top=�6�   $	��266��6�   y�6(   �� *IsSldierVisible+ �� 	Converter# [  6�   �� 5   
   -   5         ��Name$ 
modeButton��5      $��Button��6%   $
��Left=�66   $��101,170,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   �� 5   
   -   5         ��Name$ sliderValueTextBox��5      $
��Left=�6.   $��23��6I   $��344,121,0,0q�6U    �� TextWrapping$
 Wrap=�6j   $	��Top=�6�   $	��120��6�    �� 
IsReadOnly . ��6~   �� *TextBoxText+6�   5      5      