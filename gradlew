����   2 � 8kotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core  java/lang/Object  ConcurrentWeakMap.kt Ikotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator  KeyValueIterator 3kotlinx/coroutines/debug/internal/ConcurrentWeakMap 	 Core shift I 	threshold load load$FU 7Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater; keys 2Ljava/util/concurrent/atomic/AtomicReferenceArray; values 	allocated this$0 5Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap; index (I)I�7y�  	   this :Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core; hash getImpl &(Ljava/lang/Object;)Ljava/lang/Object; (TK;)TV; $Lorg/jetbrains/annotations/Nullable; #Lorg/jetbrains/annotations/NotNull; hashCode ()I % &
  '  
  )  	  + 0java/util/concurrent/atomic/AtomicReferenceArray - get (I)Ljava/lang/Object; / 0
 . 1 /kotlinx/coroutines/debug/internal/HashedWeakRef 3 ()Ljava/lang/Object; / 5
 4 6 kotlin/jvm/internal/Intrinsics 8 areEqual '(Ljava/lang/Object;Ljava/lang/Object;)Z : ;
 9 <  	  > (kotlinx/coroutines/debug/internal/Marked @ ref Ljava/lang/Object; B C	 A D removeCleanedAt (I)V F G
  H  	  J value k w 1Lkotlinx/coroutines/debug/internal/HashedWeakRef; key compareAndSet ((ILjava/lang/Object;Ljava/lang/Object;)Z Q R
 . S  	  U access$decrementSize 8(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)V W X
 
 Y oldValue putImpl i(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object; P(TK;TV;Lkotlinx/coroutines/debug/internal/HashedWeakRef<TK;>;)Ljava/lang/Object;  	  _  	  a 5kotlinx/coroutines/debug/internal/ConcurrentWeakMapKt c access$getREHASH$p &()Lkotlinx/coroutines/internal/Symbol; e f
 d g  	  i 5java/util/concurrent/atomic/AtomicIntegerFieldUpdater k (Ljava/lang/Object;II)Z Q m
 l n access$getWeakRefQueue$p U(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)Ljava/lang/ref/ReferenceQueue; p q
 
 r <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V t u
 4 v decrementAndGet (Ljava/lang/Object;)I x y
 l z n -$i$a$-update-ConcurrentWeakMap$Core$putImpl$1 upd$iv cur$iv $this$update$iv $i$f$update weakKey loadIncremented Z weakKey0 putImpl$default �(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object; \ ]
  � rehash <()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core; D()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<TK;TV;>.Core; size � &
 
 � kotlin/ranges/RangesKt � coerceAtLeast (II)I � �
 � � java/lang/Integer � highestOneBit � 
 � � 9(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V t �
  � access$mark >(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/Marked; � �
 d � kotlin/_Assertions � ENABLED � �	 � � Assertion failed � java/lang/AssertionError � (Ljava/lang/Object;)V t �
 � � java/lang/Throwable � newCore newCapacity cleanWeakRef 4(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V 7(Lkotlinx/coroutines/debug/internal/HashedWeakRef<*>;)V  	 4 � weakRef keyValueIterator 6(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator; _<E:Ljava/lang/Object;>(Lkotlin/jvm/functions/Function2<-TK;-TV;+TE;>;)Ljava/util/Iterator<TE;>; ](Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Lkotlin/jvm/functions/Function2;)V t �
  � java/util/Iterator � factory  Lkotlin/jvm/functions/Function2; ()V t �
  � numberOfLeadingZeros � 
 � � t G
 . � access$getAllocated$p =(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)I $this Lkotlin/Metadata; mv           bv    d1���8




��

	

��
)

��


	��20:#B0¢J02
0¢	J82
8��¢J020H¢J380"28��880¢J302
8��282
8��0¢J0��R8��80¢J020H¢R08@X¢
 R!08@X¢
! R"08@X¢
" ¨$ d2   E Lkotlin/Function2; kotlinx-coroutines-core <clinit>  
newUpdater \(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater; � �
 l � Code LineNumberTable LocalVariableTable StackMapTable 	Signature RuntimeInvisibleAnnotations $RuntimeInvisibleParameterAnnotations InnerClasses 
SourceFile SourceDebugExtension RuntimeVisibleAnnotations 0                B                                    �   >     
h*� |�    �       ] �       
       
       !  �       h*+� (� *= *� ,� 2� 4Y� � W�N-� 7:+� =� #*� ?� 2:� A� � A� E� �� *� I� *� K=�����    �   # � 	R 4B 4� , 4  A �  	 �   2    a 	 b 
 c  c   d & e / f 9 g O i Y j b k e b �   >  9  L C  & ? M C    E N O  	 _      h       h P C  �    " �     #   �     $    F G  �   �     3 *� ?� 2Y� � W�M,� A� �*� ?,� T� *� V� Z����    �     O A �   �