   M S B A M L   `   `   `  ����G  CChallengeOne, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ChallengeOneChallengeOne  5   	       ChallengeOne.Factorial   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ChallengeOne     5   	     � Title$  	Factorial��5   	   $	��300��6   $	��300��6(   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $��Factorial: ��6   $
��Left=�65   $	��Top=�6P   $��	33,81,0,0q�6h   $��72��6{   �� 5   
   -   5         ��Name$ factorialResultTextBox��5      $
��Left=�62   $��23��6M   $��
110,85,0,0q�6Y    �� TextWrapping$
 Wrap=�6m   $	��Top=�6�   $	��120��6�    �� 
IsReadOnly . ��6�   �� *FactorialResultTextBox+ �� Mode$ TwoWay=�6�   �� 5   
   -   5        $ factorialValueTextBox��5      $
��Left=�61   $��23��6L   $��110,133,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��120��6�   ��6�   �� *FactorialValueTextBox+6�   �� 5   
   -   5         ��Name$ saveBtn��5      $
��Save��6"   $
��Left=�61   $��
95,217,0,0q�6L   $	��Top=�6`   $��75��6x   6�   �� 5   
   -   5        $ calculateBtn��5      $��	Calculate��6'   $
��Left=�6;   $��
95,180,0,0q�6V   $	��Top=�6j   $��75��6�   6�   5      5      