   M S B A M L   `   `   `  ����L  HWPFInteractiveGUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WPFInteractiveGUIWPFInteractiveGUI  5   	   "    WPFInteractiveGUI.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WPFInteractiveGUI     5   	     � Title$  
MainWindow��5   	   $	��300��6   $	��500��6)   .��5	      � .+�5
   
   �� -   5         ��Name$ lblPersonCount��5
      $��Person Count 0
��6(   $
��Left=�6K   $��	50,50,0,0q�6f   $	��Top=�6y   $��25��6�   $	��100��6�   �� 5   
   -   5        $ lblIndex��5      $��	Index -1
��6"   $
��Left=�6:   $��
185,50,0,0q�6U   $	��Top=�6i   $��25��6�   $	��100��6�   �� 5   
   $��	FirstName��6   $
��Left=�6$   $��
50,100,0,0q�6?   $	��Top=�6S   $��25��6k   $��80��6w   �� 5   
   $��LastName��6   $
��Left=�6#   $��
50,130,0,0q�6>   $	��Top=�6R   $��25��6j   $��80��6v   �� 5   
   $	��Age��6   $
��Left=�6   $��
50,160,0,0q�69   $	��Top=�6M   $��25��6e   $��80��6q   �� 5   
   $��TelephoneNo��6   $
��Left=�6&   $��
50,190,0,0q�6A   $	��Top=�6U   $��25��6m   $��80��6y   �� 5   
   -   5         ��Name$ tbFirstName��5      $
��Left=�6'   $��135,100,0,0q�6B    �� TextWrapping$
 Wrap=�6W   $	��Top=�6k   $	��150��6�   $��25��6�   ${�False��6�   �� 5   
   -   5        $ 
tbLastName��5      $
��Left=�6&   $��135,130,0,0q�6A   $
 Wrap=�6V   $	��Top=�6j   $	��150��6�   $��25��6�   ${�False��6�   �� 5   
   -   5        $ tbAge��5      $
��Left=�6!   $��135,160,0,0q�6<   $
 Wrap=�6Q   $	��Top=�6e   $	��150��6}   $��25��6�   ${�False��6�   �� 5   
   -   5        $ tbTelephoneNo��5      $
��Left=�6)   $��135,190,0,0q�6D   $
 Wrap=�6Y   $	��Top=�6m   $	��150��6�   $��25��6�   ${�False��6�   �� 5   
   -   5         ��Name$ btnNewPerson��5      $��
New Person��6'   $
��Left=�6<   $��300,100,0,0q�6W   $	��Top=�6l   $��25��6�   $	��100��6�   6�   �� 5   
   -   5        $ btnDeletePerson��5      $��Delete Person��6*   $
��Left=�6B   $��300,130,0,0q�6]   $	��Top=�6r   $��25��6�   $	��100��6�   ${�False��6�   �� 5   
   -	   5        $ btnUp��5      $��Up��6    $
��Left=�6-   $��300,160,0,0q�6H   $	��Top=�6]   $��25��6u   $	��100��6�   ${�False��6�   �� 5   
   -
   5        $ btnDown��5      $
��Down��6"   $
��Left=�61   $��300,190,0,0q�6L   $	��Top=�6a   $��25��6y   $	��100��6�   ${�False��6�   5      5      