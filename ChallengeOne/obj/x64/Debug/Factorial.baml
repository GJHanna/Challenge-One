   M S B A M L   `   `   `  ����G  CChallengeOne, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ChallengeOneChallengeOne  5   	       ChallengeOne.Factorial   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ChallengeOne     5   	     � Title$  	Factorial��5   	   $	��300��6   $	��300��6(   ���	#FF1F1E1E � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground �� 
TargetType �� 
TargetType	 ��Name
 �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName 
 TextBox.Static.Border  TextBox.MouseOver.Border  TextBox.Focus.Border-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%�  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    '�� �    7   7  7  7  7  7  7  7  7  7 	 &	
 �    &	 �    &	 �    '��     7 
 7  7  �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 1q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5(      �� $	 border��6!   #��z��61   $��0q�6]   $
 10��6q   #��z��6�    . ._�5)      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5*       5+      P� 5,       �@��IsDefaulted . . �5-   "   �� $ border��6@   # � ��6T    � ��5.      P� 5/       �@J�IsMouseOver . . �50   "   �� $ border��6?   8   � ��6S   �� 51   "   $ border��6@   8   � ��6T   52      P� 53       � �� . . �54   "   �� $ border��6?   8   � ��6S   �� 55   "   $ border��6@   8   � ��6T   56      P� 57       � {� .  . �58   "   �� $ border��6?   8   � ��6S   �� 59   "   $ border��6@   8   � ��6T   �� 5:   "   $ contentPresenter��6K   8 	  � ��6i   5;      5=      5?      5@      �� 5A   
   $ 	#FFABAdB3��68   �� 5B   
   $ 	#FF7EB4EA��6;   �� 5C   
   $ 	#FF569DE5��67   �� 5D   
   " ��6   .�5E      ��  � ��# � ��6+   �� 5F       � ��8   6,   �� 5G       � ��# � ��6+   �� 5H       � ��$ 1q�60   �� 5I       �@ TabNavigation$
 None=�6A   �� 5J       � ��$
 Left=�6;   �� 5K       �@�FocusVisualStyle 61   Z� �� 5L       �@J�	AllowDrop . 6*   �� 5M       �@��PanningMode$ VerticalFirst=�69   �� 5N       �@��IsFlicksEnabled .  67   �� 5O       � �� 5P      �� 5Q      " ��6&   .R�5R      �� $	 border��6!   #��z��61   $��0q�6]   $
 10��6q   #��z��6�    . ._�5S      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5T       5U      P� 5V       � {� .  . �5W   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5X      P� 5Y       �@J�IsMouseOver . . �5Z   "   �� $ border��6@   8   � ��6T   5[      P� 5\       �@J�IsKeyboardFocused . . �5]   "   �� $ border��6@   8   � ��6T   5^      5`      5b       5c      ]� 5d       5e      �� 5f      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5g       �@��IsSelectionActive .  6A   ./�5i      ��  �@��SelectionBrush# � /�67   5j      5l      5m      .��5n      � .+�5o   
   �� -   5         ��Name$ groupBox��5o      $��	Factorial��6%   $
��Left=�68   $	��272��6S   $��	7,13,0,18q�6_   
����������	#FFA68B96.��5p      � $��
10,10,7,14q�6   .+�5q      �� -   5         ��Name$ label��5q      $��Factorial: ��6'   $
��Left=�6=   $	��Top=�6X   $��72��6p   $��	26,10,0,0q�6{   
�������6�   �� 5r      -   5         ��Name$ factorialResultTextBox��5r      $
��Left=�6:   $��23��6U   $��
103,14,0,0q�6a    �� TextWrapping$
 Wrap=�6u   $	��Top=�6�   $	��120��6�    �� 
IsReadOnly . ���	#FF6A616A
������� �� TextAlignment$ Center=�6  ��6�   �� *FactorialResultTextBox+ �� Mode$ TwoWay=�6  �� 5s      -   5        $ factorialValueTextBox��5s      $
��Left=�69   $��23��6T   $��
103,62,0,0q�6`   $
 Wrap=�6t   $	��Top=�6�   $	��120��6�   ���	#FF6A616A
�������$ Center=�6�   ��6�   �� *FactorialValueTextBox+6�   �� 5t      -   5         ��Name$ saveBtn��5t      $
��Save��6*   $
��Left=�69   $��
83,153,0,0q�6T   $	��Top=�6h   $��75��6�   ���	#FF474747
����������	#FF4F46466�   �� 5u      -   5        $ calculateBtn��5u      $��	Calculate��6/   $
��Left=�6C   $��
83,116,0,0q�6^   $	��Top=�6r   $��75��6�   ���	#FF474747
����������	#FF4F46466�   5v      5w      5x      5y      