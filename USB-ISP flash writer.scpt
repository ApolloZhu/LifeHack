FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
 *  Simple USB-ISP flash writer for Mac
 *  June-2014, tedd
 *
 * this program is distributed under Apache-2.0 license
 *   http://opensource.org/licenses/Apache-2.0
      � 	 	P 
   *     S i m p l e   U S B - I S P   f l a s h   w r i t e r   f o r   M a c 
   *     J u n e - 2 0 1 4 ,   t e d d 
   * 
   *   t h i s   p r o g r a m   i s   d i s t r i b u t e d   u n d e r   A p a c h e - 2 . 0   l i c e n s e 
   *       h t t p : / / o p e n s o u r c e . o r g / l i c e n s e s / A p a c h e - 2 . 0 
     
  
 l     ��������  ��  ��     ��  i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 newfile newFile��    k     ;       l         r         m        �   , / V o l u m e s / C R P \   D I S A B L D /  o      ���� 0 
targetpath 
targetPath    target volume     �      t a r g e t   v o l u m e      l        r       !   m     " " � # #  f i r m w a r e . b i n ! o      ����  0 deletefilename deleteFilename  / ) delete this file before copying new file     � $ $ R   d e l e t e   t h i s   f i l e   b e f o r e   c o p y i n g   n e w   f i l e   % & % l    ' ( ) ' r     * + * b     , - , b     . / . b     0 1 0 m    	 2 2 � 3 3  r m   1 o   	 
���� 0 
targetpath 
targetPath / o    ����  0 deletefilename deleteFilename - m     4 4 � 5 5  ; + o      ���� 0 action1   (   delete command    ) � 6 6    d e l e t e   c o m m a n d &  7 8 7 l    9 : ; 9 r     < = < b     > ? > b     @ A @ b     B C B m     D D � E E , s y n c ; d i s k u t i l   u n m o u n t   C o    ���� 0 
targetpath 
targetPath A m     F F � G G  ; ? m     H H � I I 
 e x i t ; = o      ���� 0 action3   :   unmount    ; � J J    u n m o u n t 8  K L K l   ��������  ��  ��   L  M N M l   ! O P Q O r    ! R S R n     T U T 1    ��
�� 
psxp U o    ���� 0 newfile newFile S o      ���� 0 newfilename newFileName P 0 * get the file name and path in PSIX format    Q � V V T   g e t   t h e   f i l e   n a m e   a n d   p a t h   i n   P S I X   f o r m a t N  W X W l  " - Y Z [ Y r   " - \ ] \ b   " + ^ _ ^ b   " ) ` a ` b   " ' b c b b   " % d e d m   " # f f � g g  c p   e o   # $���� 0 newfilename newFileName c m   % & h h � i i    a o   ' (���� 0 
targetpath 
targetPath _ m   ) * j j � k k  ; ] o      ���� 0 action2   Z   copy command    [ � l l    c o p y   c o m m a n d X  m n m l  . 5 o p q o r   . 5 r s r b   . 3 t u t b   . 1 v w v o   . /���� 0 action1   w o   / 0���� 0 action2   u o   1 2���� 0 action3   s o      ���� 0 comm   p + % concatinate all commands in a string    q � x x J   c o n c a t i n a t e   a l l   c o m m a n d s   i n   a   s t r i n g n  y z y l  6 6��������  ��  ��   z  {�� { l  6 ; | } ~ | I  6 ;�� ��
�� .sysoexecTEXT���     TEXT  o   6 7���� 0 comm  ��   } &   execute all commands on a shell    ~ � � � @   e x e c u t e   a l l   c o m m a n d s   o n   a   s h e l l��  ��       �� � ���   � ��
�� .aevtodocnull  �    alis � �� ���� � ���
�� .aevtodocnull  �    alis�� 0 newfile newFile��   � ������������������ 0 newfile newFile�� 0 
targetpath 
targetPath��  0 deletefilename deleteFilename�� 0 action1  �� 0 action3  �� 0 newfilename newFileName�� 0 action2  �� 0 comm   �   " 2 4 D F H�� f h j��
�� 
psxp
�� .sysoexecTEXT���     TEXT�� <�E�O�E�O�%�%�%E�O�%�%�%E�O��,E�O�%�%�%�%E�O��%�%E�O�j ascr  ��ޭ