   M S B A M L   `   `   `  ����G  CChallengeOne, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ChallengeOneChallengeOne  5   	   A%clr-namespace:ChallengeOne.ConvertersChallengeOne.Converters  5   	       ChallengeOne.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ChallengeOne     5   	   6conv%clr-namespace:ChallengeOne.Converters     5   	     � Title$  User Control��5	   	   $	��350��6   $	��525��6+   ���	#FF1F1E1E � 	Resources 5
      .  (ChallengeOne.Converters.BoolToVisibility   bool2vis  FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background 	 Button.Disabled.Border 
 Button.Disabled.Foreground  RoundedButtonStyle �� 
TargetType �� 
TargetType	 ��Name
 �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border  TextBox.MouseOver.Border  TextBox.Focus.Border-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%  &	        &	      &	 �     &	 �     &	     &	 &    &	 I    &	 l    &	 �    &		 �    &	
 �    &	 �    7  7  7  7  7  7  7  7  7 	 7 
 &	 �    &	 �    &	     '�� 1    7  7  7    5   
   63   �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6+   .�5      ��  �@�FocusVisualStyle8   61   �� 5        � ��8  6+   �� 5!       � ��8  6,   �� 5"       � ��# � ��6+   �� 5#       � ��$ 1q�60   �� 5$       � ��$ Center=�6;   �� 5%       � ��$ Center=�69   �� 5&       � ��$ 1q�6(   �� 5'       � �� 5(      �� 5)      " ��6&   .R�5*      �� $	 border��6!   #��z��61   $��0q�6]   #��z��6q    . $
 10��6�   ._�5+      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5,       5-      P� 5.       �@��IsDefaulted . . �5/   "   �� $ border��6@   # � ��6T    � ��50      P� 51       �@J�IsMouseOver . . �52   "   �� $ border��6?   8   � ��6S   �� 53   "   $ border��6@   8   � ��6T   54      P� 55       � �� . . �56   "   �� $ border��6?   8   � ��6S   �� 57   "   $ border��6@   8   � ��6T   58      P� 59       � {� .  . �5:   "   �� $ border��6?   8   � ��6S   �� 5;   "   $ border��6@   8   � ��6T   �� 5<   "   $ contentPresenter��6K   8 	  � ��6i   5=      5?      5A      5B      �� 5C   
   $ 	#FFABAdB3��68   �� 5D   
   $ 	#FF7EB4EA��6;   �� 5E   
   $ 	#FF569DE5��67   �� 5F   
   " ��6   .�5G      ��  � ��# � ��6+   �� 5H       � ��8   6,   �� 5I       � ��# � ��6+   �� 5J       � ��$ 1q�60   �� 5K       �@ TabNavigation$
 None=�6A   �� 5L       � ��$
 Left=�6;   �� 5M       �@�FocusVisualStyle 61   Z� �� 5N       �@J�	AllowDrop . 6*   �� 5O       �@��PanningMode$ VerticalFirst=�69   �� 5P       �@��IsFlicksEnabled .  67   �� 5Q       � �� 5R      �� 5S      " ��6&   .R�5T      �� $	 border��6!   #��z��61   $��0q�6]   $
 10��6r   #��z��6�    . ._�5U      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5V       5W      P� 5X       � {� .  . �5Y   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5Z      P� 5[       �@J�IsMouseOver . . �5\   "   �� $ border��6@   8   � ��6T   5]      P� 5^       �@J�IsKeyboardFocused . . �5_   "   �� $ border��6@   8   � ��6T   5`      5b      5d       5e      ]� 5f       5g      �� 5h      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5i       �@��IsSelectionActive .  6A   ./�5k      ��  �@��SelectionBrush# � /�67   5l      5n      5o      .��5p      � .+�5q   
   �� -   5         ��Name$ groupBox��5q      $
��Mode��6%   $
��Left=�63   $��
160,23,0,0q�6N   $	��Top=�6b   $	��103��6z   $	��191��6�   
����������	#FFA68B96.��5r      � $
��Left=�6   $��90��6.   $��
0,-7,-2,-2q�6:   $	��Top=�6N   $	��181��6f   .+�5s      �� -   5         ��Name$ 
modeButton��5s      $
��Mode��6-   $
��Left=�6<   $��	52,62,0,0q�6W   $	��Top=�6j   $��75��6�   ���	#FF474747
����������	#FF4F4646#���  6�   �� 5t      -   5         ��Name$ firstGetFunction��5t      $
��Left=�64   $��23��6O   $��	29,24,0,0q�6[    �� TextWrapping$
 Wrap=�6n   $	��Top=�6�   $	��120��6�    �� 
IsReadOnly . ���	#FF6A616A
������� �� TextAlignment$ Center=�6  ��6�   �� *FirstGetFunction+6  5u      5v      �� 5w   
   -   5        $ 	groupBox1��5w      $��
Mode Value��6&   $
��Left=�6:   $��
10,177,0,0q�6U   $	��Top=�6i   $	��112��6�   $	��497��6�   
����������	#FFA68B96.��5x      � $��10,10,10,19q�6   .+�5y      �� -   5        $ sliderValueTextBox��5y      $
��Left=�66   $��23��6Q   $��	337,0,0,0q�6]   $
 Wrap=�6p   $	��Top=�6�   $	��120��6�    . ���	#FF6A616A
�������$ Center=�6  ��6�   �� *TextBoxText+6  �� 5z      -   5        $ 	factorial��5z      $��	Factorial��6,   $
��Left=�6@   $��
359,40,0,0q�6[   $	��Top=�6o   $��75��6�   ���	#FF474747
����������	#FF4F4646#���  6�   �� 5{      -   5         ��Name$ controlSlider��5{      $
��Left=�6|   $��0,21,0,0q�6�   $	��Top=�6�   $	��315��6�   ���	#FFFFFDFDy�60   �� *IsSldierVisible+ �� 	Converter# [  6�   5|      5}      �� 5~   
   -   5         ��Name$ image��5~      $
��Left=�6   $��58��6:   $��9,3,0,0q�6F   $	��Top=�6W   $��73��6o   $+��%/Resources/ThunderBERT3DIconWhite.png��6z   5      5�      