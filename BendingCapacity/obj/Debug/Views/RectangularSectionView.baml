   M S B A M L   `   `   `  ����J  FBendingCapacity, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:BendingCapacity.ViewsBendingCapacity.Views  5      G(clr-namespace:BendingCapacity.ViewModelsBendingCapacity.ViewModels  5      ?$clr-namespace:BendingCapacity.ModelsBendingCapacity.Models  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5	      2    ,BendingCapacity.Views.RectangularSectionView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:BendingCapacity.Views     5      >	viewModel(clr-namespace:BendingCapacity.ViewModels     5      4src$clr-namespace:BendingCapacity.Models     5      9System&clr-namespace:System;assembly=mscorlib     5	        � 	Resources  5       �� DataType-  'System.Windows.Controls.ValidationError �� Path   
enumValues S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName/   )BendingCapacity.Models.RectangularSection  rectsect  textBoxInError �� 
TargetType �� Triggers	 P� Property
 P� Value �� Property �� Value �� Self �� RelativeSource��%  (��       5      *, +)&	  �     &	     &	      �� 6   "  6   .R�5      �� $��Italic$�6   
��� ���$
��Left=�5   	   $	��0,1q�5   	   ��5   	   �� $ ErrorContent�5      S� 5      $ 	GetValues��5      "  5       5      M� 5      $ src:Reinforcement��6   5        5      6   �� 5      " ��5        5!      P� 5"      	 �@=�HasError
 . . �5$      ��  �@�ToolTip 5%      �� # Z $) #(Validation.Errors)[0].ErrorContent�5'      5)      5+      ��5,      �� 5-      .��5/      �  � RowDefinitions 50      �� 51      $��40 �6   �� 52      $��40 �6   �� 53      $��40 �6   �� 54      $��40 �6   �� 55      $��40 �6   �� 56      $��40 �6   �� 57      $��40 �6    � ColumnDefinitions 59      �� 5:      $	��275 �6   �� 5<      $��* �6     5@        alternatingWithTriggers��%�  &	       �� 5A      " ��5B      .�5C      ��  � ��
 �����5D      �� 5E       � ��
 �   �5F      �� 5G       �@J�Opacity$
 0.90Q�5H       5I      P� 5J      	 �@��AlternationIndex$
 1��5K   	   . �5L      ��  � ��
 �����5M   	   �� 5N       � ��
 �����5O   	   �� 5P       �@J�Opacity$
 0.90Q�5Q   	   5R      5T      5V      .+�5X      �  � Orientation$ 
Horizontal=�6   $��0��5Y      $��5q�5Z      $��Right=�5[      $��Center=�5\      .+�5]      �� 
�������.��6   Wysokość h [mm]:60   �� 5^      -   5         ��Name$ HeightTextBox��5e      #��[ 5^      ���	#FF2B2B2B
������� �� 
CaretBrush
 �   � �� SelectionBrush
 �   �
������� �� 	MaxLength$ 5��5d      $��0��5f      $	��100��5j      ��5g      �� *RectangularSection.Height+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . 5j      5k      � 5m      $ 
Horizontal=�6   $��1��5n      $��5q�5o      $��Right=�5p      $��Center=�5q      .+�5r      �� 
�������.��6   Szerokość b [mm]:61   �� 5s      -   5        $ WidthTextBox��5z      #��[ 5s      ���	#FF2B2B2B
�������
 �   �
 �   �
�������$ 5��5y      $	��100��5~      ��5{      �� *RectangularSection.Width+$ PropertyChanged=� . 5~      5      � 5�      $ 
Horizontal=�6   $��2��5�      $��5q�5�      $��Right=�5�      $��Center=�5�      .+�5�      �� 
�������.��6   Otulina [mm]:6-   �� 5�      -   5        $ CoverTextBox��5�      #��[ 5�      ���	#FF2B2B2B
�������
 �   �
 �   �
�������$ 5��5�      $	��100��5�      ��5�      �� *RectangularSection.Cover+$ PropertyChanged=� . 5�      5�      � 5�      $ 
Horizontal=�6   $��3��5�      $��5q�5�      $��Right=�5�      $��Center=�5�      .+�5�      �� 
�������.��6   Średnica prętów [mm]:65   �� 5�      -   5        $ BarDiameterTextBox��5�      #��[ 5�      ���	#FF2B2B2B
�������
 �   �
 �   �
�������$ 5��5�      $	��100��5�      ��5�      �� * RectangularSection.BarDiameter+$ PropertyChanged=� . 5�      5�      � 5�      $ 
Horizontal=�6   $��4��5�      $��5q�5�      $��Right=�5�      $��Center=�5�      .+�5�      �� 
�������.��6   Ilość prętów:6-   �� 5�      -   5        $ BarCountTextBox��5�      #��[ 5�      ���	#FF2B2B2B
�������
 �   �
 �   �
�������$ 5��5�      $	��100��5�      ��5�      �� *RectangularSection.BarCount+$ PropertyChanged=� . 5�      5�      � 5�      $ 
Horizontal=�6   $��5��5�      $��5q�5�      $��Right=�5�      $��Center=�5�      .+�5�      �� 
�������.��6   Moment zginający [kNm]:67   �� 5�      -   5        $ BendingMomentTextBox��5�      #��[ 5�      ���	#FF2B2B2B
�������
 �   �
 �   �
�������$ 5��5�      $	��100��5�      ��5�      �� *" RectangularSection.BendingMoment+$ PropertyChanged=� . 5�      5�      � 5�      $ 
Horizontal=�6   $��6��5�      $��5q�5�      $��Right=�5�      $��Center=�5�      .+�5�      �� 
�������.��6   
Zbrojenie:6*   �� 5�      -   5         ��Name$ ReinforcementCombobox��5�      ���	#FF2B2B2B
�������
�������$	��100��5�      ��5�      ��  �� Source# [   �� SelectedItem 5�      �� $- 'RectangularSection.tensionReinforcement� �� Mode$ TwoWay=�5�      �� 5�      $��1��6   $��6��5�      $��6��5�       �� Orientation$ 
Horizontal=�5�      $��Center=�5�      $
��Left=�5�      .+�5�      �� ���	#FF2B2B2B
�������
�������$��Dodaj��5�      $	��190��6   ��5�      �� *CalculateAndAddCommand+$ PropertyChanged=���5�      �� 5�      " ��6   .�5�      ��  � {� .  5�   	    5�      ^� 5�   	    ^� 
Conditions 5�   
   �� 5�       �� Binding 6   �� *(Validation.HasError)+ �� ElementName$ HeightTextBox��  �� Value	  false5�      �� 5�       6   �� *(Validation.HasError)+$ WidthTextBox��	  false5�      �� 5�       6   �� *(Validation.HasError)+$ CoverTextBox��	  false5�      �� 5�       6   �� *(Validation.HasError)+$ BarDiameterTextBox��	  false5�      �� 5       6   �� *(Validation.HasError)+$ BarCountTextBox��	  false5     �� 5      6   �� *(Validation.HasError)+$ BendingMomentTextBox��	  false5     .0�5  
   ��  � {� . 6&   5  
   5
     5     �� 5     ���	#FF2B2B2B
�������
�������$��Usuń��5     $	��190��5     ��5     �� *DeleteItemCommand+{�5     �� *SelectedItems.Count+$ SectionListView���� 5     ���	#FF2B2B2B
�������
�������$��Usuń wszystkie��5     $	��190��5     ��5     �� *ClearListItemsCommand+5     5     �� 5     -   5        ! ��Name$! SectionListView��5     $��0,0,10,0q�5     $��2��5      $��6��5!     " �� AlternationCount$" 2��5"     #��[ 5#     $��0��5$     # J� Opacity$	# 0.6Q�5)     ��5%     �� *RectangularSectionList+$ PropertyChanged=� 5'     �� *SelectedSection+��5(     Z� ��5*     �� 5+     $ �� Color$$ 	#FF232222��6   % �� Opacity$	% 0.8Q�5,  
   & �� View& 5/     �� 50     !' �� ColumnHeaderContainerStyle' 51     �� 52     " ��6   .�53  	   ��  � {� .  6%   �� 54  	    � �� �	#FF2B2B2B6&   �� 55  	    � ��
 �����6&   �� 56  	    � ��$ 12(�6$   �� 57  	    � ��$ 0,0,0,1q�6+   �� 58  	    � �� �	#FF2B2B2B6'   59  	   .P�5;     �� $��h [mm]��6   ( �� Width$( 51��5<  
   ) �� DisplayMemberBinding) 5=  
   �� *Height+�� 5>     $��b [mm]��6   $( 51��5?  
   ) 5@  
   �� *Width+�� 5A     $��∅ [mm]��6   $( 51��5B  
   ) 5C  
   �� *BarDiameter+�� 5D     $��	Sztuk [-]��6   $( 55��5E  
   ) 5F  
   �� *
BarCount+�� 5G     $��	Zbrojenie��6   $( 65��5H  
   ) 5I  
   �� *tensionReinforcement+�� 5J     $��Obciążenie [kNm]��6   $	( 105��5K  
   ) 5L  
   �� *BendingMoment+�� 5M     $��Nośność [kNm]��6   $( 95��5N  
   ) 5O  
   �� *BendingCapacity+�� 5P     $��Wytężenie [%]��6   $	( 105��5Q  
   ) 5R  
   �� *UsedCapacity+5S     5U     5V     5W     