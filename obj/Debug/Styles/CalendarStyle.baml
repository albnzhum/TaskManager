   M S B A M L   `   `   `  ����F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TaskManagerTaskManager  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   CalendarItemTemplate1  �� 
TargetType5   /System.Windows.Controls.Primitives.CalendarItem � 	Resources �Name � 	Resources  Key �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 �� 
TargetName	
 W� To �� TargetProperty �� CornerRadius � Cursor	 �� To J� Opacity �� Stretch F�Name ��Name � ColumnDefinitions � RowDefinitions ��Name  PreviousButtonTemplate  HeaderButtonTemplate  NextButtonTemplate ��Name  DisabledColor �� RadiusX �� RadiusY �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value �� Value  �� Binding! �� RelativeSource" �� AncestorType&   System.Windows.Controls.Calendar  CalendarStyle2# �� 
TargetType$ ��Name%   Name&   CalendarItemStyle # CalendarCalendarDayButtonStyle2:  4System.Windows.Controls.Primitives.CalendarDayButton'   Transitions%  System.Windows.VisualTransition(   GeneratedDuration) R� KeyTime* R� Value  System.Windows.Visibility+ J� RenderTransformOrigin, J� IsHitTestVisible�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      #localclr-namespace:TaskManager  5      %�'  &	        7  7  7  7  7  &	 �    &	 O    �� 5      "    64    5   
   ���� 5      (��       6   **(CalendarItem.DayTitleTemplateResourceKey+).R�5      �� ���	#FF333333$��	Geomertia)�63   $��Medium"�6J   $��15(�6^   $��Center=�6l   $��0,6,0,6q�6�   $��Center=�6�   ��6�   �� 6�   5	      5
      .R�5   
   (� $	��411��6   $	��422��5      .��5      � $ 	PART_Root��6    5      ���� 5      DisabledColor $ 	#A5FFFFFF��6<   5       5        5      CommonStates��. 5        
Normal��6&     5      Disabled��. 5      �� .��5   "   W� $ 0D�62   $	 PART_DisabledVisual��6?   $
 1X�6k   $ Opacity�6r   5      5      5      .+�5      �� #��z��6   #��z��6C   #��z��6o   $ 1��6�   ._�5      �� ���	#FFFFFFFF$��2q�65   $ 1��6I   ._�5      �  5      ���� 5   "   PreviousButtonTemplate "  ��6Q   .R�5    &   � $
 Hand��6+    5!   *     5"   .   CommonStates��. 5#   2     
Normal��6>     5$   2   	MouseOver��. 5%   6   �� .��5&   :   �� $ 0D�6I   $
	 path��6V   $ 	#FF73A9D8X�6s   $* $(Shape.Fill).(SolidColorBrush.Color)�6�   5'   7   5(   3     5)   2   Disabled��. 5*   6   �� .��5+   :   W� $ 0D�6J   $
	 path��6W   $
 .5X�6t   $" (Shape.Fill).(Brush.Opacity)�6|   5,   7   5-   3   5.   /   .+�50   *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   � 51   *   .+�52   .   F� $
 path��63   �����^8 (� �0�� �[�(�� `�c(�� \Oq0�� ��y��V� �ہ�� �ہ|�� ��yѓ' �� �k� X�� k� \f� �'   � �|�� �� S�� �HX
7ϗ?�V� �HX
7ϗ?0�� �� �(�� &� (�� ^Q 0�� ~�& �^8 (� 	���#648381$
��Left=�6�  $��10��6�  $��	14,-6,0,0q�6�  $
 Fill=�6�  $��Center=�6�  $��6��6�  53   +   54   '   55   #   �� 56   "   NextButtonTemplate "  ��6M   .R�57   &   � $
 Hand��6+    58   *     59   .   CommonStates��. 5:   2     
Normal��6>     5;   2   	MouseOver��. 5<   6   �� .��5=   :   �� $ 0D�6I   $
	 path��6V   $ 	#FF73A9D8X�6s   $* $(Shape.Fill).(SolidColorBrush.Color)�6�   5>   7   5?   3     5@   2   Disabled��. 5A   6   �� .��5B   :   W� $ 0D�6J   $
	 path��6W   $
 .5X�6t   $" (Shape.Fill).(Brush.Opacity)�6|   5C   7   5D   3   5E   /   .+�5G   *   �� ���	#11E5EBF1$ 1Q�6E   $
 Fill=�6Q   � 5H   *   .+�5I   .   F� $
 path��63   �����n� (� �� ~�& �� ^Q � &� � �� SD1 �HX
7ϗ?r�) �HX
7ϗ?��1 �� ь`�   � ��� \f� �� X�� �`� �� ќ�1 ��y�r�) �ہD1 �ہ� ��y�� \Oq� `�c� �[Ѱn� (� 	���#648381$��Right=�6�  $��10��6�  $��	0,-6,14,0q�6�  $
 Fill=�6�  $��Center=�6�  $��6��6�  5J   +   5K   '   5L   #   �� 5M   "   HeaderButtonTemplate "  ��6O   .R�5N   &   � $
 Hand��6+    5O   *     5P   .   CommonStates��. 5Q   2     
Normal��6>     5R   2   	MouseOver��. 5S   6   �� .��5T   :   �� $ 0D�6I   $	 buttonContent��6V   $ 	#FF73A9D8X�6|   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6�   5U   7   5V   3     5W   2   Disabled��. 5X   6   �� .��5Y   :   W� $ 0D�6J   $	 buttonContent��6W   $
 .5X�6}   $ Opacity�6�   5Z   7   5[   3   5\   /   .+�5^   *   �� $ buttonContent��6;   #��z��6R   #��z��6�   ���	#FF333333#��z��6�   $��1,4,1,9q�6  #��z��6!  5_   '   5`   #   5a       5b      �� 5c   "   $
��Auto �63   �� 5d   "   $
��Auto �63   �� 5e   "   $
��Auto �63    5g      �� 5h   "   $
��Auto �60   �� 5i   "   $��* �60   .+�5k      �� $ PART_PreviousButton��6%   $��0��6B   |�.  $
��Left=�6d   $��20��6   $��0��6�   8��  $��28��6�   �� 5l      $ PART_HeaderButton��6%   $��1��6@   |�.  $
��Bold"�6b   $��20(�6t   $��Center=�6�   $��0��6�   8�� $��Center=�6�   �� 5m      $ PART_NextButton��6%   $��2��6>   |�.  $��Right=�6`   $��20��6|   $��0��6�   8�� $��28��6�   � 5n      $ PART_MonthView��6#   $��3��6;   $��Center=�6O   $��6,-1,6,6q�6l   $��1��6~   $y�Visible=�6�    5o   "   �� 5p   &   $
��Auto �67   �� 5q   &   $
��Auto �67   �� 5r   &   $
��Auto �67   �� 5s   &   $
��Auto �67   �� 5t   &   $
��Auto �67   �� 5u   &   $
��Auto �67   �� 5v   &   $
��Auto �67    5x   "   �� 5y   &   $
��Auto �64   �� 5z   &   $
��Auto �64   �� 5{   &   $
��Auto �64   �� 5|   &   $
��Auto �64   �� 5}   &   $
��Auto �64   �� 5~   &   $
��Auto �64   �� 5   &   $
��Auto �64   5�      � 5�      $ PART_YearView��6#   $��3��6:   $��Center=�6N   $��6,-3,7,6q�6k   $��1��6}   $y�Hidden=�6�    5�   "   �� 5�   &   $
��Auto �67   �� 5�   &   $
��Auto �67   �� 5�   &   $
��Auto �67   �� 5�   &   $
��Auto �67    5�   "   �� 5�   &   $
��Auto �64   �� 5�   &   $
��Auto �64   �� 5�   &   $
��Auto �64   5�      5�      5�      5�      �� 5�      $ PART_DisabledVisual��6   8�� $ 0Q�6_   $ 2��6k   $ 2��6w   8�� $
 Fill=�6�   $��1��6�   $y�	Collapsed=�6�   5�      5�       5�   
   P� 5�       � {� .  . �5�      �� $ PART_DisabledVisual��6/    � y�$ Visible=�6P   5�      �� 5�      $
 Year��6�     6   �� *DisplayMode+! �� *FindAncestor+""  .a�5�      �� $ PART_MonthView��6/    � y�$ Hidden=�6K   �� 5�      $ PART_YearView��6/    � y�$ Visible=�6J   5�      �� 5�      $ Decade��6�     6   �� *DisplayMode+! �� *FindAncestor+""  .a�5�      �� $ PART_MonthView��6/    � y�$ Hidden=�6K   �� 5�      $ PART_YearView��6/    � y�$ Visible=�6J   5�      5�      �� 5�      "#  6#   .�5�   
   ��  � �� �	#FF3333336'   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � ��
 ���� 6(   �� 5�   
    � ��$ 1q�6,   �� 5�   
    � �� 5�      �� 5�      "   6"   .R�5�      �� $$ 	PART_Root��6!   $��Center=�64   .+�5�         $% PART_CalendarItem��6Z   #���   6'   #��z��6u   #��z��6�   #��z��6�   #��z& 6�   5�      5�      5�      5�      �� 5�      "#  64   .�5�   
   ��  � ��$ 40��6"   �� 5�   
    � ��$ 40��6#   �� 5�   
    � ��$ 18(�6%   �� 5�   
    � ��$ 5q�6#   �� 5�   
    �@�Cursor$
 Hand��6#   �� 5�   
    � ��$ Center=�67   �� 5�   
    � ��$ Center=�65   �� 5�   
    � �� 5�      �� 5�      "   6"   .R�5�      �  5�        5�      CommonStates��' 5�   "     5�   &   $( 0:0:0.1D�67   . 5�   "     
Normal��6.     5�   "   	MouseOver��. 5�   &   �� .��5�   *   W� $ 0D�6:   $	 HighlightBackground��6G   $ Opacity�6s   $	
 0.5X�6�   5�   '   5�   #     5�   "   Pressed��. 5�   &   �� .��5�   *   W� $ 0D�6:   $	 HighlightBackground��6G   $ Opacity�6s   $	
 0.5X�6�   5�   '   5�   #     5�   "   Disabled��. 5�   &   �� .��5�   *   W� $ 0D�6:   $	 HighlightBackground��6G   $ Opacity�6s   $
 0X�6�   W� 5�   *   $ 0D�6:   $	 
NormalText��6G   $ Opacity�6j   $	
 .35X�6�   5�   '   5�   #   5�        5�      SelectionStates��' 5�   "     5�   &   $( 0D�67   . 5�   "     
Unselected��6.     5�   "   Selected��. 5�   &   �� .��5�   *   W� $ 0D�6:   $	 SelectedBackground��6G   $ Opacity�6r   $
 .9X�6�   �� 5�   *   $ 0D�69   $	 
NormalText��6F   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6i   $ #FFFFFFX�6�   5�   '   5�   #   5�        5�      CalendarButtonFocusStates��' 5�   "     5�   &   $( 0D�67   . 5�   "     CalendarButtonFocused��. 5�   &   �� .��5�   *   T� $ 0D�6H   $	 DayButtonFocusVisual��6U   $ 
Visibility�6�   ..�5�   .   i� $) 0��6E   * 5�   2    5�   6   Visible=�6J   5�   /   5�   +   5�   '   5�   #     5�   "   CalendarButtonUnfocused��. 5�   &   �� .��5�   *   T� $ 0D�6H   $	 DayButtonFocusVisual��6U   $ 
Visibility�6�   ..�5�   .   i� $) 0��6E   * 5�   2    5�   6   	Collapsed=�6L   5�   /   5�   +   5�   '   5�   #   5�        5�      ActiveStates��' 5�   "     5�   &   $( 0D�67   . 5  "     
Active��6.     5  "   Inactive��. 5  &   �� .��5  *   �� $ 0D�69   $	 
NormalText��6F   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6i   $ #BABABAX�6�   5  '   5  #   5       5     	DayStates��' 5	  "     5
  &   $( 0D�67   . 5  "     
RegularDay��6.     5  "   	Today��. 5  &   �� .��5  *   W� $ 0D�6:   $	 TodayBackground��6G   $ Opacity�6o   $
 1X�6�   �� 5  *   $ 0D�69   $	 
NormalText��6F   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6i   $ 	#FFFFFFFFX�6�   5  '   5  #   5       5     BlackoutDayStates��' 5  "     5  &   $( 0D�67   . 5  "     	NormalDay��6.     5  "   BlackoutDay��. 5  &   �� .��5  *   W� $ 0D�6:   $	 Blackout��6G   $ Opacity�6h   $
 .2X�6�   5  '   5  #   5     .+�5      �� $ TodayBackground��6$   ���#648381$ 0Q�6L   $ 30��6X   $ 30��6e   �� 5!     $ SelectedBackground��6$   ���#648381$ 0Q�6O   $ 30��6[   $ 30��6h   �� 5"     #��z��6!   #��z��6K   #��z��6   �� 5#     $ HighlightBackground��6$   ���#c1c1c1$ 0Q�6P   $ 30��6\   $ 30��6i   �� 5$     $ 
NormalText��6+   ���	#FF333333$��Center=�6b   $	��5 3q�6   $��Center=�6�   F� 5%     $ Blackout��6   }�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	���	#FF000000$��Stretch=�6F  $��3q�6d  $ 0Q�6o  $+ 0.5,0.5&�6{  $
 Fill=�6�  $��Stretch=�6�  �� 5&     $ DayButtonFocusVisual��6$   , .  $ 30��6[   $ 30��6h   
������ $y�	Collapsed=�6�   5'     5(     5*     5+     5-     