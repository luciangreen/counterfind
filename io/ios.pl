% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1,counterexample,[last_rev,4],none).
io(2,differs,[len_append,[4,3,2]],false).
io(3,plunit_test,[sum_fold,[4,4]],":- begin_tests(sum_fold).\n% the rewrite gave 8\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[4,4],C),C==8.\n:- end_tests(sum_fold).\n").
io(4,counterexample,[sum_fold,3],none).
io(5,differs,[last_rev,[3,0,4,1,1]],false).
io(6,plunit_test,[sum_fold,[4,2,2,3]],":- begin_tests(sum_fold).\n% the rewrite gave 11\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[4,2,2,3],C),C==11.\n:- end_tests(sum_fold).\n").
io(7,counterexample,[rev_rev,0],none).
io(8,differs,[max_first,[0,1,1,1]],true).
io(9,plunit_test,[sort_for_msort,[]],":- begin_tests(sort_for_msort).\n% the rewrite gave []\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[],C),C==[].\n:- end_tests(sort_for_msort).\n").
io(10,counterexample,[last_rev,0],none).
io(11,differs,[max_first,[4,3,4]],false).
io(12,plunit_test,[sub_comm,[2,2,4]],":- begin_tests(sub_comm).\n% the rewrite gave -8\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[2,2,4],F),F==4.\n:- end_tests(sub_comm).\n").
io(13,counterexample,[rev_rev,4],none).
io(14,differs,[rev_rev,[]],false).
io(15,plunit_test,[sum_fold,[4,3,0,3]],":- begin_tests(sum_fold).\n% the rewrite gave 10\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[4,3,0,3],C),C==10.\n:- end_tests(sum_fold).\n").
io(16,counterexample,[sum_fold,1],none).
io(17,differs,[sort_for_msort,[3,0]],false).
io(18,plunit_test,[sub_comm,[2,3,2,1]],":- begin_tests(sub_comm).\n% the rewrite gave -8\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[2,3,2,1],F),F==0.\n:- end_tests(sub_comm).\n").
io(19,counterexample,[sum_fold,2],none).
io(20,differs,[last_rev,[3,2,1]],false).
io(21,plunit_test,[len_append,[0]],":- begin_tests(len_append).\n% the rewrite gave 2\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[0],D),D==2.\n:- end_tests(len_append).\n").
io(22,counterexample,[len_append,2],none).
io(23,differs,[sum_fold,[0,1,2]],false).
io(24,plunit_test,[max_first,[2,1,1,3,4]],":- begin_tests(max_first).\n% the rewrite gave 2\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[2,1,1,3,4],C),C==4.\n:- end_tests(max_first).\n").
io(25,counterexample,[last_rev,4],none).
io(26,differs,[max_first,[1,4,1,0]],true).
io(27,plunit_test,[rev_rev,[4,4]],":- begin_tests(rev_rev).\n% the rewrite gave [4,4]\ntest(rev_rev_counterexample):-call([A,B]>>(reverse(A,C),reverse(C,B)),[4,4],D),D==[4,4].\n:- end_tests(rev_rev).\n").
io(28,counterexample,[sub_comm,0],none).
io(29,differs,[rev_rev,[]],false).
io(30,plunit_test,[sum_fold,[0,1,2,0]],":- begin_tests(sum_fold).\n% the rewrite gave 3\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[0,1,2,0],C),C==3.\n:- end_tests(sum_fold).\n").
io(31,counterexample,[sum_fold,0],none).
io(32,differs,[len_append,[]],false).
io(33,plunit_test,[len_append,[1,2,3,3]],":- begin_tests(len_append).\n% the rewrite gave 8\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[1,2,3,3],D),D==8.\n:- end_tests(len_append).\n").
io(34,counterexample,[sum_fold,4],none).
io(35,differs,[sort_for_msort,[2,2,2,4]],true).
io(36,plunit_test,[last_rev,[4]],":- begin_tests(last_rev).\n% the rewrite gave 4\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[4],D),D==4.\n:- end_tests(last_rev).\n").
io(37,counterexample,[len_append,3],none).
io(38,differs,[sub_comm,[0,4]],true).
io(39,plunit_test,[last_rev,[1,0]],":- begin_tests(last_rev).\n% the rewrite gave 0\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[1,0],D),D==0.\n:- end_tests(last_rev).\n").
io(40,counterexample,[sub_comm,4],input([1])).
io(41,differs,[sum_fold,[]],false).
io(42,plunit_test,[len_append,[4,0,4,2]],":- begin_tests(len_append).\n% the rewrite gave 8\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[4,0,4,2],D),D==8.\n:- end_tests(len_append).\n").
io(43,counterexample,[len_append,0],none).
io(44,differs,[sort_for_msort,[3]],false).
io(45,plunit_test,[len_append,[4,2,4]],":- begin_tests(len_append).\n% the rewrite gave 6\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[4,2,4],D),D==6.\n:- end_tests(len_append).\n").
io(46,counterexample,[rev_rev,1],none).
io(47,differs,[rev_rev,[0,0,4,0]],false).
io(48,plunit_test,[sub_comm,[3,4]],":- begin_tests(sub_comm).\n% the rewrite gave -7\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[3,4],F),F==1.\n:- end_tests(sub_comm).\n").
io(49,counterexample,[sub_comm,4],input([1])).
io(50,differs,[max_first,[4]],false).
io(51,plunit_test,[len_append,[3,1]],":- begin_tests(len_append).\n% the rewrite gave 4\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[3,1],D),D==4.\n:- end_tests(len_append).\n").
io(52,counterexample,[max_first,2],input([0,1])).
io(53,differs,[len_append,[0]],false).
io(54,plunit_test,[rev_rev,[1,2]],":- begin_tests(rev_rev).\n% the rewrite gave [1,2]\ntest(rev_rev_counterexample):-call([A,B]>>(reverse(A,C),reverse(C,B)),[1,2],D),D==[1,2].\n:- end_tests(rev_rev).\n").
io(55,counterexample,[last_rev,2],none).
io(56,differs,[rev_rev,[]],false).
io(57,plunit_test,[sum_fold,[2,3,1,1]],":- begin_tests(sum_fold).\n% the rewrite gave 7\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[2,3,1,1],C),C==7.\n:- end_tests(sum_fold).\n").
io(58,counterexample,[len_append,0],none).
io(59,differs,[rev_rev,[1]],false).
io(60,plunit_test,[max_first,[2,2,2,0,0]],":- begin_tests(max_first).\n% the rewrite gave 2\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[2,2,2,0,0],C),C==2.\n:- end_tests(max_first).\n").
io(61,counterexample,[sum_fold,3],none).
io(62,differs,[last_rev,[]],false).
io(63,plunit_test,[len_append,[1,4]],":- begin_tests(len_append).\n% the rewrite gave 4\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[1,4],D),D==4.\n:- end_tests(len_append).\n").
io(64,counterexample,[last_rev,3],none).
io(65,differs,[max_first,[]],false).
io(66,plunit_test,[sub_comm,[4,0,0,0]],":- begin_tests(sub_comm).\n% the rewrite gave -4\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[4,0,0,0],F),F== -4.\n:- end_tests(sub_comm).\n").
io(67,counterexample,[max_first,0],none).
io(68,differs,[len_append,[4,2]],false).
io(69,plunit_test,[len_append,[4,4]],":- begin_tests(len_append).\n% the rewrite gave 4\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[4,4],D),D==4.\n:- end_tests(len_append).\n").
io(70,counterexample,[sum_fold,3],none).
io(71,differs,[rev_rev,[]],false).
io(72,plunit_test,[sub_comm,[4]],":- begin_tests(sub_comm).\n% the rewrite gave -4\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[4],F),F==4.\n:- end_tests(sub_comm).\n").
io(73,counterexample,[rev_rev,2],none).
io(74,differs,[last_rev,[2,1,2]],false).
io(75,plunit_test,[rev_rev,[1]],":- begin_tests(rev_rev).\n% the rewrite gave [1]\ntest(rev_rev_counterexample):-call([A,B]>>(reverse(A,C),reverse(C,B)),[1],D),D==[1].\n:- end_tests(rev_rev).\n").
io(76,counterexample,[last_rev,1],none).
io(77,differs,[len_append,[0]],false).
io(78,plunit_test,[sum_fold,[]],":- begin_tests(sum_fold).\n% the rewrite gave 0\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[],C),C==0.\n:- end_tests(sum_fold).\n").
io(79,counterexample,[rev_rev,4],none).
io(80,differs,[rev_rev,[4,3,1,1,4]],false).
io(81,plunit_test,[rev_rev,[0,2,0]],":- begin_tests(rev_rev).\n% the rewrite gave [0,2,0]\ntest(rev_rev_counterexample):-call([A,B]>>(reverse(A,C),reverse(C,B)),[0,2,0],D),D==[0,2,0].\n:- end_tests(rev_rev).\n").
io(82,counterexample,[sub_comm,2],input([1])).
io(83,differs,[max_first,[0,0,4,2,3]],true).
io(84,plunit_test,[len_append,[4,2]],":- begin_tests(len_append).\n% the rewrite gave 4\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[4,2],D),D==4.\n:- end_tests(len_append).\n").
io(85,counterexample,[last_rev,3],none).
io(86,differs,[rev_rev,[0]],false).
io(87,plunit_test,[sum_fold,[4,4,4]],":- begin_tests(sum_fold).\n% the rewrite gave 12\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[4,4,4],C),C==12.\n:- end_tests(sum_fold).\n").
io(88,counterexample,[rev_rev,3],none).
io(89,differs,[sum_fold,[3,4,1,1,3]],false).
io(90,plunit_test,[last_rev,[3,4,2,1,1]],":- begin_tests(last_rev).\n% the rewrite gave 1\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[3,4,2,1,1],D),D==1.\n:- end_tests(last_rev).\n").
io(91,counterexample,[sub_comm,4],input([1])).
io(92,differs,[sub_comm,[1,1]],true).
io(93,plunit_test,[last_rev,[1,4,3,1,0]],":- begin_tests(last_rev).\n% the rewrite gave 0\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[1,4,3,1,0],D),D==0.\n:- end_tests(last_rev).\n").
io(94,counterexample,[max_first,4],input([0,1])).
io(95,differs,[max_first,[3,2]],false).
io(96,plunit_test,[sort_for_msort,[1,1]],":- begin_tests(sort_for_msort).\n% the rewrite gave [1]\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[1,1],C),C==[1,1].\n:- end_tests(sort_for_msort).\n").
io(97,counterexample,[last_rev,1],none).
io(98,differs,[sum_fold,[]],false).
io(99,plunit_test,[max_first,[1]],":- begin_tests(max_first).\n% the rewrite gave 1\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[1],C),C==1.\n:- end_tests(max_first).\n").
io(100,counterexample,[last_rev,4],none).
io(101,differs,[sub_comm,[4,1,2]],true).
io(102,plunit_test,[sub_comm,[4,2]],":- begin_tests(sub_comm).\n% the rewrite gave -6\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[4,2],F),F== -2.\n:- end_tests(sub_comm).\n").
io(103,counterexample,[len_append,0],none).
io(104,differs,[last_rev,[]],false).
io(105,plunit_test,[sum_fold,[]],":- begin_tests(sum_fold).\n% the rewrite gave 0\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[],C),C==0.\n:- end_tests(sum_fold).\n").
io(106,counterexample,[last_rev,1],none).
io(107,differs,[sum_fold,[2,4,4]],false).
io(108,plunit_test,[sub_comm,[2,1,1,1,2]],":- begin_tests(sub_comm).\n% the rewrite gave -7\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[2,1,1,1,2],F),F==3.\n:- end_tests(sub_comm).\n").
io(109,counterexample,[max_first,0],none).
io(110,differs,[rev_rev,[4,0,1,2,2]],false).
io(111,plunit_test,[last_rev,[2,1,4,0,3]],":- begin_tests(last_rev).\n% the rewrite gave 3\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[2,1,4,0,3],D),D==3.\n:- end_tests(last_rev).\n").
io(112,counterexample,[len_append,0],none).
io(113,differs,[last_rev,[4,1,2]],false).
io(114,plunit_test,[max_first,[3,0,2]],":- begin_tests(max_first).\n% the rewrite gave 3\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[3,0,2],C),C==3.\n:- end_tests(max_first).\n").
io(115,counterexample,[last_rev,3],none).
io(116,differs,[rev_rev,[1,2]],false).
io(117,plunit_test,[last_rev,[0,0,2]],":- begin_tests(last_rev).\n% the rewrite gave 2\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[0,0,2],D),D==2.\n:- end_tests(last_rev).\n").
io(118,counterexample,[max_first,1],none).
io(119,differs,[sort_for_msort,[4,1,2,4]],true).
io(120,plunit_test,[len_append,[1,3]],":- begin_tests(len_append).\n% the rewrite gave 4\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[1,3],D),D==4.\n:- end_tests(len_append).\n").
io(121,counterexample,[sub_comm,2],input([1])).
io(122,differs,[last_rev,[0,4,1]],false).
io(123,plunit_test,[sort_for_msort,[1,1]],":- begin_tests(sort_for_msort).\n% the rewrite gave [1]\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[1,1],C),C==[1,1].\n:- end_tests(sort_for_msort).\n").
io(124,counterexample,[len_append,1],none).
io(125,differs,[sum_fold,[0]],false).
io(126,plunit_test,[rev_rev,[]],":- begin_tests(rev_rev).\n% the rewrite gave []\ntest(rev_rev_counterexample):-call([A,B]>>(reverse(A,C),reverse(C,B)),[],D),D==[].\n:- end_tests(rev_rev).\n").
io(127,counterexample,[rev_rev,0],none).
io(128,differs,[len_append,[3,3]],false).
io(129,plunit_test,[sub_comm,[4,3,1,0,2]],":- begin_tests(sub_comm).\n% the rewrite gave -10\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[4,3,1,0,2],F),F==4.\n:- end_tests(sub_comm).\n").
io(130,counterexample,[rev_rev,4],none).
io(131,differs,[max_first,[2,2]],false).
io(132,plunit_test,[rev_rev,[3]],":- begin_tests(rev_rev).\n% the rewrite gave [3]\ntest(rev_rev_counterexample):-call([A,B]>>(reverse(A,C),reverse(C,B)),[3],D),D==[3].\n:- end_tests(rev_rev).\n").
io(133,counterexample,[last_rev,3],none).
io(134,differs,[max_first,[1,3,4]],true).
io(135,plunit_test,[len_append,[0,4,0]],":- begin_tests(len_append).\n% the rewrite gave 6\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[0,4,0],D),D==6.\n:- end_tests(len_append).\n").
io(136,counterexample,[rev_rev,4],none).
io(137,differs,[len_append,[3,3,4,3]],false).
io(138,plunit_test,[sum_fold,[4,2,0,0,3]],":- begin_tests(sum_fold).\n% the rewrite gave 9\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[4,2,0,0,3],C),C==9.\n:- end_tests(sum_fold).\n").
io(139,counterexample,[sub_comm,0],none).
io(140,differs,[len_append,[4,3,3,4,0]],false).
io(141,plunit_test,[sub_comm,[3,1]],":- begin_tests(sub_comm).\n% the rewrite gave -4\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[3,1],F),F== -2.\n:- end_tests(sub_comm).\n").
io(142,counterexample,[rev_rev,0],none).
io(143,differs,[sub_comm,[4,3]],true).
io(144,plunit_test,[last_rev,[2,4,3,2]],":- begin_tests(last_rev).\n% the rewrite gave 2\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[2,4,3,2],D),D==2.\n:- end_tests(last_rev).\n").
io(145,counterexample,[rev_rev,0],none).
io(146,differs,[rev_rev,[1]],false).
io(147,plunit_test,[len_append,[2]],":- begin_tests(len_append).\n% the rewrite gave 2\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[2],D),D==2.\n:- end_tests(len_append).\n").
io(148,counterexample,[last_rev,0],none).
io(149,differs,[len_append,[2,2,3,1,3]],false).
io(150,plunit_test,[max_first,[]],":- begin_tests(max_first).\n% the rewrite gave none\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[],C),C==none.\n:- end_tests(max_first).\n").
io(151,counterexample,[rev_rev,2],none).
io(152,differs,[max_first,[4,3,2,1]],false).
io(153,plunit_test,[len_append,[1]],":- begin_tests(len_append).\n% the rewrite gave 2\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[1],D),D==2.\n:- end_tests(len_append).\n").
io(154,counterexample,[sum_fold,1],none).
io(155,differs,[sub_comm,[1]],true).
io(156,plunit_test,[sort_for_msort,[3,3,2,0]],":- begin_tests(sort_for_msort).\n% the rewrite gave [0,2,3]\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[3,3,2,0],C),C==[0,2,3,3].\n:- end_tests(sort_for_msort).\n").
io(157,counterexample,[max_first,1],none).
io(158,differs,[rev_rev,[2,4,0]],false).
io(159,plunit_test,[sort_for_msort,[1,0]],":- begin_tests(sort_for_msort).\n% the rewrite gave [0,1]\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[1,0],C),C==[0,1].\n:- end_tests(sort_for_msort).\n").
io(160,counterexample,[rev_rev,2],none).
io(161,differs,[last_rev,[1]],false).
io(162,plunit_test,[sort_for_msort,[1,2,3,0]],":- begin_tests(sort_for_msort).\n% the rewrite gave [0,1,2,3]\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[1,2,3,0],C),C==[0,1,2,3].\n:- end_tests(sort_for_msort).\n").
io(163,counterexample,[len_append,0],none).
io(164,differs,[sum_fold,[4,1,1]],false).
io(165,plunit_test,[max_first,[4,3,0,4,3]],":- begin_tests(max_first).\n% the rewrite gave 4\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[4,3,0,4,3],C),C==4.\n:- end_tests(max_first).\n").
io(166,counterexample,[rev_rev,2],none).
io(167,differs,[last_rev,[]],false).
io(168,plunit_test,[max_first,[2,0,4,2,4]],":- begin_tests(max_first).\n% the rewrite gave 2\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[2,0,4,2,4],C),C==4.\n:- end_tests(max_first).\n").
io(169,counterexample,[sum_fold,0],none).
io(170,differs,[last_rev,[2,3,3]],false).
io(171,plunit_test,[max_first,[1]],":- begin_tests(max_first).\n% the rewrite gave 1\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[1],C),C==1.\n:- end_tests(max_first).\n").
io(172,counterexample,[rev_rev,4],none).
io(173,differs,[sort_for_msort,[]],false).
io(174,plunit_test,[sub_comm,[4,0]],":- begin_tests(sub_comm).\n% the rewrite gave -4\ntest(sub_comm_counterexample):-call([A,B]>>foldl([C,D,E]>>(E is C-D),A,0,B),[4,0],F),F== -4.\n:- end_tests(sub_comm).\n").
io(175,counterexample,[sum_fold,3],none).
io(176,differs,[sort_for_msort,[2,0]],false).
io(177,plunit_test,[last_rev,[]],":- begin_tests(last_rev).\n% the rewrite gave none\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[],D),D==none.\n:- end_tests(last_rev).\n").
io(178,counterexample,[last_rev,4],none).
io(179,differs,[sub_comm,[2,0]],false).
io(180,plunit_test,[len_append,[1]],":- begin_tests(len_append).\n% the rewrite gave 2\ntest(len_append_counterexample):-call([A,B]>>(append(A,A,C),length(C,B)),[1],D),D==2.\n:- end_tests(len_append).\n").
io(181,counterexample,[sum_fold,4],none).
io(182,differs,[sort_for_msort,[]],false).
io(183,plunit_test,[last_rev,[1,3,2,4]],":- begin_tests(last_rev).\n% the rewrite gave 4\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[1,3,2,4],D),D==4.\n:- end_tests(last_rev).\n").
io(184,counterexample,[len_append,4],none).
io(185,differs,[sort_for_msort,[4,0,0,0]],true).
io(186,plunit_test,[sum_fold,[2,0,2,1,2]],":- begin_tests(sum_fold).\n% the rewrite gave 7\ntest(sum_fold_counterexample):-call([A,B]>>sum_list(A,B),[2,0,2,1,2],C),C==7.\n:- end_tests(sum_fold).\n").
io(187,counterexample,[len_append,1],none).
io(188,differs,[max_first,[4,3,2,3]],false).
io(189,plunit_test,[sort_for_msort,[0,2,2,1]],":- begin_tests(sort_for_msort).\n% the rewrite gave [0,1,2]\ntest(sort_for_msort_counterexample):-call([A,B]>>msort(A,B),[0,2,2,1],C),C==[0,1,2,2].\n:- end_tests(sort_for_msort).\n").
io(190,counterexample,[max_first,4],input([0,1])).
io(191,differs,[sum_fold,[2,2,4]],false).
io(192,plunit_test,[max_first,[]],":- begin_tests(max_first).\n% the rewrite gave none\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[],C),C==none.\n:- end_tests(max_first).\n").
io(193,counterexample,[sort_for_msort,2],input([0,0])).
io(194,differs,[max_first,[3,2,2,4]],true).
io(195,plunit_test,[max_first,[2,4,1,0,4]],":- begin_tests(max_first).\n% the rewrite gave 2\ntest(max_first_counterexample):-call([A,B]>>(A==[]->B=none;max_list(A,B)),[2,4,1,0,4],C),C==4.\n:- end_tests(max_first).\n").
io(196,counterexample,[sub_comm,1],input([1])).
io(197,differs,[sub_comm,[4,4,3,0]],true).
io(198,plunit_test,[last_rev,[]],":- begin_tests(last_rev).\n% the rewrite gave none\ntest(last_rev_counterexample):-call([A,B]>>(last(A,C)->B=C;B=none),[],D),D==none.\n:- end_tests(last_rev).\n").
io(199,counterexample,[sum_fold,0],none).
io(200,differs,[sub_comm,[0,0]],false).
