   M S B A M L   `   `   `  ���� K  GMirzaMediaPlayer, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null3clr-namespace:MirzaMediaPlayerMirzaMediaPlayer  A%clr-namespace:MirzaMediaPlayer.ModelsMirzaMediaPlayer.Models  E'clr-namespace:MirzaMediaPlayer.CommandsMirzaMediaPlayer.Commands  !    MirzaMediaPlayer.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:MirzaMediaPlayer     8models%clr-namespace:MirzaMediaPlayer.Models     7cmd'clr-namespace:MirzaMediaPlayer.Commands     -     � Icon$  Icons/Audio_Cd.ico�� � Title$ Mirza Media Player�����#191919
�������$	��450��$	��600�� � 	Resources /   )MirzaMediaPlayer.Models.PlayListContainer   playListContainer �� 
TargetType  styleButtonCommon �� Property �� Value �� Triggers P� Property P� Value  styleToggleButtonCommon��%  &	        &	      &	 �       �� " ��.���  � ��$ 3q���  � ��$ 3q���  � ��
 ��iA���  � ��$ 2q���  � �� �#191919��  � ��
 ����� P�  �@J�IsMouseOver . . ���  � ��
 �   ���  �@�Cursor$
 Hand���� " d�.���  � ��$ 3q���  � ��$ 3q���  � ��
 ��iA���  � ��$ 2q���  � �� �#191919��  � ��
 ����� P�  �@J�IsMouseOver . . ���  � ��
 �   ���  �@�Cursor$
 Hand��	 J� CommandBindings	 )  #System.Windows.Input.CommandBinding  -   2   ,MirzaMediaPlayer.Commands.PlayerCoreCommands
   LoadCommand   Command# Z
 cmdLoad��  -      PlayPauseCommand# Z cmdPlayPause��  -      PreviousCommand# Z cmdPrevious��  -      NextCommand# Z cmdNext��  -      StopCommand# Z cmdStop��  -      MuteCommand# Z cmdMute��  -   !   RemoveItemsPlaylistCommand# Z cmdRemoveItems��  -	      ClearAllCommand# Z cmdClearAll��.���  � ColumnDefinitions �� $
��2.5* ��� $
��auto ��� $
��1.3* � � RowDefinitions �� �� $
��auto ��� $
��auto ��� $
��auto �.+�� $��2q�.+�r� -
   $��mediaElementMain��$��2q� r� LoadedBehavior$ Manual=��� -   $��
imageAudio��$	��128��$	��128��$y�Hidden=�����  �� 	UriSource$ Icons/playIcon.png?��� ���#303030$��1��$��4��$��5��$��Stretch=� �� ResizeBehavior$ PreviousAndNext=��� 
����iA�$��2q�$��2��$	��5,0q�._��� -   $��listBoxPlaylist�����#191919 �� SelectionMode$ Extended=�����  �� Source# [   �� Path$ PlayListData� �� UpdateSourceTrigger$ PropertyChanged=����� .R�� -   $��3q� �� $
��auto ���  �� �� .+��� $��24��$��24��$��Uniform=�$��2��$��0,0,2,0q����� *Icon+�� $��1��
����iA�$��1q�$��Center=����� *Name+�� $��1��$��1��
����iA�$��1q�$��Center=����� *
FullName+ � ContextMenu �� ���#191919.@�m� 
������� m� Command# Z ���  �� $
��auto ��� .+��� $��Icons/Delete.png��$��24��$��24��$��1,1,2,1q��� $��Remove Selected Item(s)��$��1��$��2,1,1,1q�$��Center=�m� 
�������# Z ���  �� $
��auto ��� .+��� $��Icons/Clear.png��$��24��$��24��$��1,1,2,1q��� $��	Clear All��$��1��$��2,1,1,1q�$��Center=��� $��3��$��1��$��3��$��0,0,0,3q�.+��� .+��� $��2,1,1,1q�Volume�� -   $��sliderVolume�� � Value$	 .75Q� � Maximum$ 1Q�  �� TickPlacement$  TopLeft=��� $��2,1,1,1q�	Balance�� -   $��sliderBalance��$ 0Q�! � Minimum$! -1Q�$ 1Q�$  TopLeft=��� $��2,1,1,1q�Speed�� -   $��sliderSpeed��$ 1Q�$! 0Q�$ 4Q�$  TopLeft=�" �� IsSnapToTickEnabled" . � $��1�� �� $
��auto ��� �� $
��auto �.+��� -   $��textBlockProgress��$��00:00:00��$��Center=�
��� � �$��2q��� -   $��sliderDuration��# � LargeChange$# 10Q�{�. $! 0Q�$	 100Q�$��1��$��3q��� -   $��textBlockDuration��$��00:00:00��
����iA�$��Center=�$��2��$��2q��� $ �� Orientation$$ 
Horizontal=�$��2��$��3q�.+��� -   $��
buttonLoad��$��2��#��Z
 #��[ % � ToolTip$% Load Files (CTRL+O)��.���� $��Icons/Folder.png��$��32��$��32���� -   $��buttonPlayPause��#��[ #��Z $% Play (CTRL+P)��.���� -   & ��Name$& imagePlayPause��$��Icons/play.png��$��32��$��32���� -   $��buttonPrevious��#��[ #��Z $#% Play Previous Media (SHIFT+,)��.���� $��Icons/Previous.png��$��32��$��32���� -   $��
buttonNext��#��[ #��Z $% Play Next Media (SHIFT+.)��.���� $��Icons/Next.png��$��32��$��32���� -   $��
buttonStop��#��[ #��Z $% Stop (CTRL+S)��.���� $��Icons/stop.png��$��32��$��32��d� -   $��
buttonMute��#��[ $% Mute (CTRL+M)��#��Z .���� $��Icons/mute.png��$��32��$��32��� $��3�� �� �� $
��auto �.+��� -   $��textBlockMediaStatus��$��1��$��3,2,2,2q�
�������$��No Media��$��Center=�$��NoWrap=�$��CharacterEllipsis=�A� -   $��ellipseStatus��$��1��
�������$��20��$��20��$��2,2,10,2q�