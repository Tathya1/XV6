
user/_alarmtest:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
       0:	1101                	addi	sp,sp,-32
       2:	ec06                	sd	ra,24(sp)
       4:	e822                	sd	s0,16(sp)
       6:	1000                	addi	s0,sp,32
       8:	87aa                	mv	a5,a0
       a:	feb43023          	sd	a1,-32(s0)
       e:	fef42623          	sw	a5,-20(s0)
      12:	00000097          	auipc	ra,0x0
      16:	070080e7          	jalr	112(ra) # 82 <test0>
      1a:	00000097          	auipc	ra,0x0
      1e:	1a0080e7          	jalr	416(ra) # 1ba <test1>
      22:	00000097          	auipc	ra,0x0
      26:	282080e7          	jalr	642(ra) # 2a4 <test2>
      2a:	00000097          	auipc	ra,0x0
      2e:	46e080e7          	jalr	1134(ra) # 498 <test3>
      32:	4501                	li	a0,0
      34:	00001097          	auipc	ra,0x1
      38:	9a4080e7          	jalr	-1628(ra) # 9d8 <exit>

000000000000003c <periodic>:
      3c:	1141                	addi	sp,sp,-16
      3e:	e406                	sd	ra,8(sp)
      40:	e022                	sd	s0,0(sp)
      42:	0800                	addi	s0,sp,16
      44:	00002797          	auipc	a5,0x2
      48:	fdc78793          	addi	a5,a5,-36 # 2020 <count>
      4c:	439c                	lw	a5,0(a5)
      4e:	2781                	sext.w	a5,a5
      50:	2785                	addiw	a5,a5,1
      52:	0007871b          	sext.w	a4,a5
      56:	00002797          	auipc	a5,0x2
      5a:	fca78793          	addi	a5,a5,-54 # 2020 <count>
      5e:	c398                	sw	a4,0(a5)
      60:	00001517          	auipc	a0,0x1
      64:	20050513          	addi	a0,a0,512 # 1260 <malloc+0x146>
      68:	00001097          	auipc	ra,0x1
      6c:	ec0080e7          	jalr	-320(ra) # f28 <printf>
      70:	00001097          	auipc	ra,0x1
      74:	a20080e7          	jalr	-1504(ra) # a90 <sigreturn>
      78:	0001                	nop
      7a:	60a2                	ld	ra,8(sp)
      7c:	6402                	ld	s0,0(sp)
      7e:	0141                	addi	sp,sp,16
      80:	8082                	ret

0000000000000082 <test0>:
      82:	1101                	addi	sp,sp,-32
      84:	ec06                	sd	ra,24(sp)
      86:	e822                	sd	s0,16(sp)
      88:	1000                	addi	s0,sp,32
      8a:	00001517          	auipc	a0,0x1
      8e:	1de50513          	addi	a0,a0,478 # 1268 <malloc+0x14e>
      92:	00001097          	auipc	ra,0x1
      96:	e96080e7          	jalr	-362(ra) # f28 <printf>
      9a:	00002797          	auipc	a5,0x2
      9e:	f8678793          	addi	a5,a5,-122 # 2020 <count>
      a2:	0007a023          	sw	zero,0(a5)
      a6:	00000597          	auipc	a1,0x0
      aa:	f9658593          	addi	a1,a1,-106 # 3c <periodic>
      ae:	4509                	li	a0,2
      b0:	00001097          	auipc	ra,0x1
      b4:	9d8080e7          	jalr	-1576(ra) # a88 <sigalarm>
      b8:	fe042623          	sw	zero,-20(s0)
      bc:	a099                	j	102 <test0+0x80>
      be:	fec42783          	lw	a5,-20(s0)
      c2:	873e                	mv	a4,a5
      c4:	000f47b7          	lui	a5,0xf4
      c8:	2407879b          	addiw	a5,a5,576 # f4240 <freep+0xf2208>
      cc:	02f767bb          	remw	a5,a4,a5
      d0:	2781                	sext.w	a5,a5
      d2:	eb99                	bnez	a5,e8 <test0+0x66>
      d4:	4605                	li	a2,1
      d6:	00001597          	auipc	a1,0x1
      da:	1a258593          	addi	a1,a1,418 # 1278 <malloc+0x15e>
      de:	4509                	li	a0,2
      e0:	00001097          	auipc	ra,0x1
      e4:	918080e7          	jalr	-1768(ra) # 9f8 <write>
      e8:	00002797          	auipc	a5,0x2
      ec:	f3878793          	addi	a5,a5,-200 # 2020 <count>
      f0:	439c                	lw	a5,0(a5)
      f2:	2781                	sext.w	a5,a5
      f4:	02f04263          	bgtz	a5,118 <test0+0x96>
      f8:	fec42783          	lw	a5,-20(s0)
      fc:	2785                	addiw	a5,a5,1
      fe:	fef42623          	sw	a5,-20(s0)
     102:	fec42783          	lw	a5,-20(s0)
     106:	0007871b          	sext.w	a4,a5
     10a:	1dcd67b7          	lui	a5,0x1dcd6
     10e:	4ff78793          	addi	a5,a5,1279 # 1dcd64ff <freep+0x1dcd44c7>
     112:	fae7d6e3          	bge	a5,a4,be <test0+0x3c>
     116:	a011                	j	11a <test0+0x98>
     118:	0001                	nop
     11a:	4581                	li	a1,0
     11c:	4501                	li	a0,0
     11e:	00001097          	auipc	ra,0x1
     122:	96a080e7          	jalr	-1686(ra) # a88 <sigalarm>
     126:	00002797          	auipc	a5,0x2
     12a:	efa78793          	addi	a5,a5,-262 # 2020 <count>
     12e:	439c                	lw	a5,0(a5)
     130:	2781                	sext.w	a5,a5
     132:	00f05b63          	blez	a5,148 <test0+0xc6>
     136:	00001517          	auipc	a0,0x1
     13a:	14a50513          	addi	a0,a0,330 # 1280 <malloc+0x166>
     13e:	00001097          	auipc	ra,0x1
     142:	dea080e7          	jalr	-534(ra) # f28 <printf>
     146:	a809                	j	158 <test0+0xd6>
     148:	00001517          	auipc	a0,0x1
     14c:	14850513          	addi	a0,a0,328 # 1290 <malloc+0x176>
     150:	00001097          	auipc	ra,0x1
     154:	dd8080e7          	jalr	-552(ra) # f28 <printf>
     158:	0001                	nop
     15a:	60e2                	ld	ra,24(sp)
     15c:	6442                	ld	s0,16(sp)
     15e:	6105                	addi	sp,sp,32
     160:	8082                	ret

0000000000000162 <foo>:
     162:	1101                	addi	sp,sp,-32
     164:	ec06                	sd	ra,24(sp)
     166:	e822                	sd	s0,16(sp)
     168:	1000                	addi	s0,sp,32
     16a:	87aa                	mv	a5,a0
     16c:	feb43023          	sd	a1,-32(s0)
     170:	fef42623          	sw	a5,-20(s0)
     174:	fec42783          	lw	a5,-20(s0)
     178:	873e                	mv	a4,a5
     17a:	002627b7          	lui	a5,0x262
     17e:	5a07879b          	addiw	a5,a5,1440 # 2625a0 <freep+0x260568>
     182:	02f767bb          	remw	a5,a4,a5
     186:	2781                	sext.w	a5,a5
     188:	eb99                	bnez	a5,19e <foo+0x3c>
     18a:	4605                	li	a2,1
     18c:	00001597          	auipc	a1,0x1
     190:	0ec58593          	addi	a1,a1,236 # 1278 <malloc+0x15e>
     194:	4509                	li	a0,2
     196:	00001097          	auipc	ra,0x1
     19a:	862080e7          	jalr	-1950(ra) # 9f8 <write>
     19e:	fe043783          	ld	a5,-32(s0)
     1a2:	439c                	lw	a5,0(a5)
     1a4:	2785                	addiw	a5,a5,1
     1a6:	0007871b          	sext.w	a4,a5
     1aa:	fe043783          	ld	a5,-32(s0)
     1ae:	c398                	sw	a4,0(a5)
     1b0:	0001                	nop
     1b2:	60e2                	ld	ra,24(sp)
     1b4:	6442                	ld	s0,16(sp)
     1b6:	6105                	addi	sp,sp,32
     1b8:	8082                	ret

00000000000001ba <test1>:
     1ba:	1101                	addi	sp,sp,-32
     1bc:	ec06                	sd	ra,24(sp)
     1be:	e822                	sd	s0,16(sp)
     1c0:	1000                	addi	s0,sp,32
     1c2:	00001517          	auipc	a0,0x1
     1c6:	10e50513          	addi	a0,a0,270 # 12d0 <malloc+0x1b6>
     1ca:	00001097          	auipc	ra,0x1
     1ce:	d5e080e7          	jalr	-674(ra) # f28 <printf>
     1d2:	00002797          	auipc	a5,0x2
     1d6:	e4e78793          	addi	a5,a5,-434 # 2020 <count>
     1da:	0007a023          	sw	zero,0(a5)
     1de:	fe042423          	sw	zero,-24(s0)
     1e2:	00000597          	auipc	a1,0x0
     1e6:	e5a58593          	addi	a1,a1,-422 # 3c <periodic>
     1ea:	4509                	li	a0,2
     1ec:	00001097          	auipc	ra,0x1
     1f0:	89c080e7          	jalr	-1892(ra) # a88 <sigalarm>
     1f4:	fe042623          	sw	zero,-20(s0)
     1f8:	a815                	j	22c <test1+0x72>
     1fa:	00002797          	auipc	a5,0x2
     1fe:	e2678793          	addi	a5,a5,-474 # 2020 <count>
     202:	439c                	lw	a5,0(a5)
     204:	2781                	sext.w	a5,a5
     206:	873e                	mv	a4,a5
     208:	47a5                	li	a5,9
     20a:	02e7cc63          	blt	a5,a4,242 <test1+0x88>
     20e:	fe840713          	addi	a4,s0,-24
     212:	fec42783          	lw	a5,-20(s0)
     216:	85ba                	mv	a1,a4
     218:	853e                	mv	a0,a5
     21a:	00000097          	auipc	ra,0x0
     21e:	f48080e7          	jalr	-184(ra) # 162 <foo>
     222:	fec42783          	lw	a5,-20(s0)
     226:	2785                	addiw	a5,a5,1
     228:	fef42623          	sw	a5,-20(s0)
     22c:	fec42783          	lw	a5,-20(s0)
     230:	0007871b          	sext.w	a4,a5
     234:	1dcd67b7          	lui	a5,0x1dcd6
     238:	4ff78793          	addi	a5,a5,1279 # 1dcd64ff <freep+0x1dcd44c7>
     23c:	fae7dfe3          	bge	a5,a4,1fa <test1+0x40>
     240:	a011                	j	244 <test1+0x8a>
     242:	0001                	nop
     244:	00002797          	auipc	a5,0x2
     248:	ddc78793          	addi	a5,a5,-548 # 2020 <count>
     24c:	439c                	lw	a5,0(a5)
     24e:	2781                	sext.w	a5,a5
     250:	873e                	mv	a4,a5
     252:	47a5                	li	a5,9
     254:	00e7cb63          	blt	a5,a4,26a <test1+0xb0>
     258:	00001517          	auipc	a0,0x1
     25c:	08850513          	addi	a0,a0,136 # 12e0 <malloc+0x1c6>
     260:	00001097          	auipc	ra,0x1
     264:	cc8080e7          	jalr	-824(ra) # f28 <printf>
     268:	a80d                	j	29a <test1+0xe0>
     26a:	fe842703          	lw	a4,-24(s0)
     26e:	fec42783          	lw	a5,-20(s0)
     272:	2781                	sext.w	a5,a5
     274:	00e78b63          	beq	a5,a4,28a <test1+0xd0>
     278:	00001517          	auipc	a0,0x1
     27c:	09850513          	addi	a0,a0,152 # 1310 <malloc+0x1f6>
     280:	00001097          	auipc	ra,0x1
     284:	ca8080e7          	jalr	-856(ra) # f28 <printf>
     288:	a809                	j	29a <test1+0xe0>
     28a:	00001517          	auipc	a0,0x1
     28e:	0c650513          	addi	a0,a0,198 # 1350 <malloc+0x236>
     292:	00001097          	auipc	ra,0x1
     296:	c96080e7          	jalr	-874(ra) # f28 <printf>
     29a:	0001                	nop
     29c:	60e2                	ld	ra,24(sp)
     29e:	6442                	ld	s0,16(sp)
     2a0:	6105                	addi	sp,sp,32
     2a2:	8082                	ret

00000000000002a4 <test2>:
     2a4:	1101                	addi	sp,sp,-32
     2a6:	ec06                	sd	ra,24(sp)
     2a8:	e822                	sd	s0,16(sp)
     2aa:	1000                	addi	s0,sp,32
     2ac:	00001517          	auipc	a0,0x1
     2b0:	0b450513          	addi	a0,a0,180 # 1360 <malloc+0x246>
     2b4:	00001097          	auipc	ra,0x1
     2b8:	c74080e7          	jalr	-908(ra) # f28 <printf>
     2bc:	00000097          	auipc	ra,0x0
     2c0:	714080e7          	jalr	1812(ra) # 9d0 <fork>
     2c4:	87aa                	mv	a5,a0
     2c6:	fef42423          	sw	a5,-24(s0)
     2ca:	fe842783          	lw	a5,-24(s0)
     2ce:	2781                	sext.w	a5,a5
     2d0:	0007da63          	bgez	a5,2e4 <test2+0x40>
     2d4:	00001517          	auipc	a0,0x1
     2d8:	09c50513          	addi	a0,a0,156 # 1370 <malloc+0x256>
     2dc:	00001097          	auipc	ra,0x1
     2e0:	c4c080e7          	jalr	-948(ra) # f28 <printf>
     2e4:	fe842783          	lw	a5,-24(s0)
     2e8:	2781                	sext.w	a5,a5
     2ea:	ebd5                	bnez	a5,39e <test2+0xfa>
     2ec:	00002797          	auipc	a5,0x2
     2f0:	d3478793          	addi	a5,a5,-716 # 2020 <count>
     2f4:	0007a023          	sw	zero,0(a5)
     2f8:	00000597          	auipc	a1,0x0
     2fc:	0d458593          	addi	a1,a1,212 # 3cc <slow_handler>
     300:	4509                	li	a0,2
     302:	00000097          	auipc	ra,0x0
     306:	786080e7          	jalr	1926(ra) # a88 <sigalarm>
     30a:	fe042623          	sw	zero,-20(s0)
     30e:	a099                	j	354 <test2+0xb0>
     310:	fec42783          	lw	a5,-20(s0)
     314:	873e                	mv	a4,a5
     316:	000f47b7          	lui	a5,0xf4
     31a:	2407879b          	addiw	a5,a5,576 # f4240 <freep+0xf2208>
     31e:	02f767bb          	remw	a5,a4,a5
     322:	2781                	sext.w	a5,a5
     324:	eb99                	bnez	a5,33a <test2+0x96>
     326:	4605                	li	a2,1
     328:	00001597          	auipc	a1,0x1
     32c:	f5058593          	addi	a1,a1,-176 # 1278 <malloc+0x15e>
     330:	4509                	li	a0,2
     332:	00000097          	auipc	ra,0x0
     336:	6c6080e7          	jalr	1734(ra) # 9f8 <write>
     33a:	00002797          	auipc	a5,0x2
     33e:	ce678793          	addi	a5,a5,-794 # 2020 <count>
     342:	439c                	lw	a5,0(a5)
     344:	2781                	sext.w	a5,a5
     346:	02f04263          	bgtz	a5,36a <test2+0xc6>
     34a:	fec42783          	lw	a5,-20(s0)
     34e:	2785                	addiw	a5,a5,1
     350:	fef42623          	sw	a5,-20(s0)
     354:	fec42783          	lw	a5,-20(s0)
     358:	0007871b          	sext.w	a4,a5
     35c:	1dcd67b7          	lui	a5,0x1dcd6
     360:	4ff78793          	addi	a5,a5,1279 # 1dcd64ff <freep+0x1dcd44c7>
     364:	fae7d6e3          	bge	a5,a4,310 <test2+0x6c>
     368:	a011                	j	36c <test2+0xc8>
     36a:	0001                	nop
     36c:	00002797          	auipc	a5,0x2
     370:	cb478793          	addi	a5,a5,-844 # 2020 <count>
     374:	439c                	lw	a5,0(a5)
     376:	2781                	sext.w	a5,a5
     378:	ef91                	bnez	a5,394 <test2+0xf0>
     37a:	00001517          	auipc	a0,0x1
     37e:	00e50513          	addi	a0,a0,14 # 1388 <malloc+0x26e>
     382:	00001097          	auipc	ra,0x1
     386:	ba6080e7          	jalr	-1114(ra) # f28 <printf>
     38a:	4505                	li	a0,1
     38c:	00000097          	auipc	ra,0x0
     390:	64c080e7          	jalr	1612(ra) # 9d8 <exit>
     394:	4501                	li	a0,0
     396:	00000097          	auipc	ra,0x0
     39a:	642080e7          	jalr	1602(ra) # 9d8 <exit>
     39e:	fe440793          	addi	a5,s0,-28
     3a2:	853e                	mv	a0,a5
     3a4:	00000097          	auipc	ra,0x0
     3a8:	63c080e7          	jalr	1596(ra) # 9e0 <wait>
     3ac:	fe442783          	lw	a5,-28(s0)
     3b0:	eb89                	bnez	a5,3c2 <test2+0x11e>
     3b2:	00001517          	auipc	a0,0x1
     3b6:	ffe50513          	addi	a0,a0,-2 # 13b0 <malloc+0x296>
     3ba:	00001097          	auipc	ra,0x1
     3be:	b6e080e7          	jalr	-1170(ra) # f28 <printf>
     3c2:	0001                	nop
     3c4:	60e2                	ld	ra,24(sp)
     3c6:	6442                	ld	s0,16(sp)
     3c8:	6105                	addi	sp,sp,32
     3ca:	8082                	ret

00000000000003cc <slow_handler>:
     3cc:	1101                	addi	sp,sp,-32
     3ce:	ec06                	sd	ra,24(sp)
     3d0:	e822                	sd	s0,16(sp)
     3d2:	1000                	addi	s0,sp,32
     3d4:	00002797          	auipc	a5,0x2
     3d8:	c4c78793          	addi	a5,a5,-948 # 2020 <count>
     3dc:	439c                	lw	a5,0(a5)
     3de:	2781                	sext.w	a5,a5
     3e0:	2785                	addiw	a5,a5,1
     3e2:	0007871b          	sext.w	a4,a5
     3e6:	00002797          	auipc	a5,0x2
     3ea:	c3a78793          	addi	a5,a5,-966 # 2020 <count>
     3ee:	c398                	sw	a4,0(a5)
     3f0:	00001517          	auipc	a0,0x1
     3f4:	e7050513          	addi	a0,a0,-400 # 1260 <malloc+0x146>
     3f8:	00001097          	auipc	ra,0x1
     3fc:	b30080e7          	jalr	-1232(ra) # f28 <printf>
     400:	00002797          	auipc	a5,0x2
     404:	c2078793          	addi	a5,a5,-992 # 2020 <count>
     408:	439c                	lw	a5,0(a5)
     40a:	2781                	sext.w	a5,a5
     40c:	873e                	mv	a4,a5
     40e:	4785                	li	a5,1
     410:	00e7df63          	bge	a5,a4,42e <slow_handler+0x62>
     414:	00001517          	auipc	a0,0x1
     418:	fac50513          	addi	a0,a0,-84 # 13c0 <malloc+0x2a6>
     41c:	00001097          	auipc	ra,0x1
     420:	b0c080e7          	jalr	-1268(ra) # f28 <printf>
     424:	4505                	li	a0,1
     426:	00000097          	auipc	ra,0x0
     42a:	5b2080e7          	jalr	1458(ra) # 9d8 <exit>
     42e:	fe042623          	sw	zero,-20(s0)
     432:	a039                	j	440 <slow_handler+0x74>
     434:	0001                	nop
     436:	fec42783          	lw	a5,-20(s0)
     43a:	2785                	addiw	a5,a5,1
     43c:	fef42623          	sw	a5,-20(s0)
     440:	fec42783          	lw	a5,-20(s0)
     444:	0007871b          	sext.w	a4,a5
     448:	1dcd67b7          	lui	a5,0x1dcd6
     44c:	4ff78793          	addi	a5,a5,1279 # 1dcd64ff <freep+0x1dcd44c7>
     450:	fee7d2e3          	bge	a5,a4,434 <slow_handler+0x68>
     454:	4581                	li	a1,0
     456:	4501                	li	a0,0
     458:	00000097          	auipc	ra,0x0
     45c:	630080e7          	jalr	1584(ra) # a88 <sigalarm>
     460:	00000097          	auipc	ra,0x0
     464:	630080e7          	jalr	1584(ra) # a90 <sigreturn>
     468:	0001                	nop
     46a:	60e2                	ld	ra,24(sp)
     46c:	6442                	ld	s0,16(sp)
     46e:	6105                	addi	sp,sp,32
     470:	8082                	ret

0000000000000472 <dummy_handler>:
     472:	1141                	addi	sp,sp,-16
     474:	e406                	sd	ra,8(sp)
     476:	e022                	sd	s0,0(sp)
     478:	0800                	addi	s0,sp,16
     47a:	4581                	li	a1,0
     47c:	4501                	li	a0,0
     47e:	00000097          	auipc	ra,0x0
     482:	60a080e7          	jalr	1546(ra) # a88 <sigalarm>
     486:	00000097          	auipc	ra,0x0
     48a:	60a080e7          	jalr	1546(ra) # a90 <sigreturn>
     48e:	0001                	nop
     490:	60a2                	ld	ra,8(sp)
     492:	6402                	ld	s0,0(sp)
     494:	0141                	addi	sp,sp,16
     496:	8082                	ret

0000000000000498 <test3>:
     498:	1101                	addi	sp,sp,-32
     49a:	ec06                	sd	ra,24(sp)
     49c:	e822                	sd	s0,16(sp)
     49e:	1000                	addi	s0,sp,32
     4a0:	00000597          	auipc	a1,0x0
     4a4:	fd258593          	addi	a1,a1,-46 # 472 <dummy_handler>
     4a8:	4505                	li	a0,1
     4aa:	00000097          	auipc	ra,0x0
     4ae:	5de080e7          	jalr	1502(ra) # a88 <sigalarm>
     4b2:	00001517          	auipc	a0,0x1
     4b6:	f4650513          	addi	a0,a0,-186 # 13f8 <malloc+0x2de>
     4ba:	00001097          	auipc	ra,0x1
     4be:	a6e080e7          	jalr	-1426(ra) # f28 <printf>
     4c2:	000007b7          	lui	a5,0x0
     4c6:	0ac78513          	addi	a0,a5,172 # ac <test0+0x2a>
     4ca:	fe042623          	sw	zero,-20(s0)
     4ce:	a031                	j	4da <test3+0x42>
     4d0:	fec42783          	lw	a5,-20(s0)
     4d4:	2785                	addiw	a5,a5,1
     4d6:	fef42623          	sw	a5,-20(s0)
     4da:	fec42783          	lw	a5,-20(s0)
     4de:	0007871b          	sext.w	a4,a5
     4e2:	1dcd67b7          	lui	a5,0x1dcd6
     4e6:	4ff78793          	addi	a5,a5,1279 # 1dcd64ff <freep+0x1dcd44c7>
     4ea:	fee7d3e3          	bge	a5,a4,4d0 <test3+0x38>
     4ee:	87aa                	mv	a5,a0
     4f0:	fef43023          	sd	a5,-32(s0)
     4f4:	fe043703          	ld	a4,-32(s0)
     4f8:	0ac00793          	li	a5,172
     4fc:	00f70b63          	beq	a4,a5,512 <test3+0x7a>
     500:	00001517          	auipc	a0,0x1
     504:	f0850513          	addi	a0,a0,-248 # 1408 <malloc+0x2ee>
     508:	00001097          	auipc	ra,0x1
     50c:	a20080e7          	jalr	-1504(ra) # f28 <printf>
     510:	a809                	j	522 <test3+0x8a>
     512:	00001517          	auipc	a0,0x1
     516:	f1e50513          	addi	a0,a0,-226 # 1430 <malloc+0x316>
     51a:	00001097          	auipc	ra,0x1
     51e:	a0e080e7          	jalr	-1522(ra) # f28 <printf>
     522:	0001                	nop
     524:	60e2                	ld	ra,24(sp)
     526:	6442                	ld	s0,16(sp)
     528:	6105                	addi	sp,sp,32
     52a:	8082                	ret

000000000000052c <_main>:
     52c:	1141                	addi	sp,sp,-16
     52e:	e406                	sd	ra,8(sp)
     530:	e022                	sd	s0,0(sp)
     532:	0800                	addi	s0,sp,16
     534:	00000097          	auipc	ra,0x0
     538:	acc080e7          	jalr	-1332(ra) # 0 <main>
     53c:	4501                	li	a0,0
     53e:	00000097          	auipc	ra,0x0
     542:	49a080e7          	jalr	1178(ra) # 9d8 <exit>

0000000000000546 <strcpy>:
     546:	7179                	addi	sp,sp,-48
     548:	f422                	sd	s0,40(sp)
     54a:	1800                	addi	s0,sp,48
     54c:	fca43c23          	sd	a0,-40(s0)
     550:	fcb43823          	sd	a1,-48(s0)
     554:	fd843783          	ld	a5,-40(s0)
     558:	fef43423          	sd	a5,-24(s0)
     55c:	0001                	nop
     55e:	fd043703          	ld	a4,-48(s0)
     562:	00170793          	addi	a5,a4,1
     566:	fcf43823          	sd	a5,-48(s0)
     56a:	fd843783          	ld	a5,-40(s0)
     56e:	00178693          	addi	a3,a5,1
     572:	fcd43c23          	sd	a3,-40(s0)
     576:	00074703          	lbu	a4,0(a4)
     57a:	00e78023          	sb	a4,0(a5)
     57e:	0007c783          	lbu	a5,0(a5)
     582:	fff1                	bnez	a5,55e <strcpy+0x18>
     584:	fe843783          	ld	a5,-24(s0)
     588:	853e                	mv	a0,a5
     58a:	7422                	ld	s0,40(sp)
     58c:	6145                	addi	sp,sp,48
     58e:	8082                	ret

0000000000000590 <strcmp>:
     590:	1101                	addi	sp,sp,-32
     592:	ec22                	sd	s0,24(sp)
     594:	1000                	addi	s0,sp,32
     596:	fea43423          	sd	a0,-24(s0)
     59a:	feb43023          	sd	a1,-32(s0)
     59e:	a819                	j	5b4 <strcmp+0x24>
     5a0:	fe843783          	ld	a5,-24(s0)
     5a4:	0785                	addi	a5,a5,1
     5a6:	fef43423          	sd	a5,-24(s0)
     5aa:	fe043783          	ld	a5,-32(s0)
     5ae:	0785                	addi	a5,a5,1
     5b0:	fef43023          	sd	a5,-32(s0)
     5b4:	fe843783          	ld	a5,-24(s0)
     5b8:	0007c783          	lbu	a5,0(a5)
     5bc:	cb99                	beqz	a5,5d2 <strcmp+0x42>
     5be:	fe843783          	ld	a5,-24(s0)
     5c2:	0007c703          	lbu	a4,0(a5)
     5c6:	fe043783          	ld	a5,-32(s0)
     5ca:	0007c783          	lbu	a5,0(a5)
     5ce:	fcf709e3          	beq	a4,a5,5a0 <strcmp+0x10>
     5d2:	fe843783          	ld	a5,-24(s0)
     5d6:	0007c783          	lbu	a5,0(a5)
     5da:	0007871b          	sext.w	a4,a5
     5de:	fe043783          	ld	a5,-32(s0)
     5e2:	0007c783          	lbu	a5,0(a5)
     5e6:	2781                	sext.w	a5,a5
     5e8:	40f707bb          	subw	a5,a4,a5
     5ec:	2781                	sext.w	a5,a5
     5ee:	853e                	mv	a0,a5
     5f0:	6462                	ld	s0,24(sp)
     5f2:	6105                	addi	sp,sp,32
     5f4:	8082                	ret

00000000000005f6 <strlen>:
     5f6:	7179                	addi	sp,sp,-48
     5f8:	f422                	sd	s0,40(sp)
     5fa:	1800                	addi	s0,sp,48
     5fc:	fca43c23          	sd	a0,-40(s0)
     600:	fe042623          	sw	zero,-20(s0)
     604:	a031                	j	610 <strlen+0x1a>
     606:	fec42783          	lw	a5,-20(s0)
     60a:	2785                	addiw	a5,a5,1
     60c:	fef42623          	sw	a5,-20(s0)
     610:	fec42783          	lw	a5,-20(s0)
     614:	fd843703          	ld	a4,-40(s0)
     618:	97ba                	add	a5,a5,a4
     61a:	0007c783          	lbu	a5,0(a5)
     61e:	f7e5                	bnez	a5,606 <strlen+0x10>
     620:	fec42783          	lw	a5,-20(s0)
     624:	853e                	mv	a0,a5
     626:	7422                	ld	s0,40(sp)
     628:	6145                	addi	sp,sp,48
     62a:	8082                	ret

000000000000062c <memset>:
     62c:	7179                	addi	sp,sp,-48
     62e:	f422                	sd	s0,40(sp)
     630:	1800                	addi	s0,sp,48
     632:	fca43c23          	sd	a0,-40(s0)
     636:	87ae                	mv	a5,a1
     638:	8732                	mv	a4,a2
     63a:	fcf42a23          	sw	a5,-44(s0)
     63e:	87ba                	mv	a5,a4
     640:	fcf42823          	sw	a5,-48(s0)
     644:	fd843783          	ld	a5,-40(s0)
     648:	fef43023          	sd	a5,-32(s0)
     64c:	fe042623          	sw	zero,-20(s0)
     650:	a00d                	j	672 <memset+0x46>
     652:	fec42783          	lw	a5,-20(s0)
     656:	fe043703          	ld	a4,-32(s0)
     65a:	97ba                	add	a5,a5,a4
     65c:	fd442703          	lw	a4,-44(s0)
     660:	0ff77713          	zext.b	a4,a4
     664:	00e78023          	sb	a4,0(a5)
     668:	fec42783          	lw	a5,-20(s0)
     66c:	2785                	addiw	a5,a5,1
     66e:	fef42623          	sw	a5,-20(s0)
     672:	fec42703          	lw	a4,-20(s0)
     676:	fd042783          	lw	a5,-48(s0)
     67a:	2781                	sext.w	a5,a5
     67c:	fcf76be3          	bltu	a4,a5,652 <memset+0x26>
     680:	fd843783          	ld	a5,-40(s0)
     684:	853e                	mv	a0,a5
     686:	7422                	ld	s0,40(sp)
     688:	6145                	addi	sp,sp,48
     68a:	8082                	ret

000000000000068c <strchr>:
     68c:	1101                	addi	sp,sp,-32
     68e:	ec22                	sd	s0,24(sp)
     690:	1000                	addi	s0,sp,32
     692:	fea43423          	sd	a0,-24(s0)
     696:	87ae                	mv	a5,a1
     698:	fef403a3          	sb	a5,-25(s0)
     69c:	a01d                	j	6c2 <strchr+0x36>
     69e:	fe843783          	ld	a5,-24(s0)
     6a2:	0007c703          	lbu	a4,0(a5)
     6a6:	fe744783          	lbu	a5,-25(s0)
     6aa:	0ff7f793          	zext.b	a5,a5
     6ae:	00e79563          	bne	a5,a4,6b8 <strchr+0x2c>
     6b2:	fe843783          	ld	a5,-24(s0)
     6b6:	a821                	j	6ce <strchr+0x42>
     6b8:	fe843783          	ld	a5,-24(s0)
     6bc:	0785                	addi	a5,a5,1
     6be:	fef43423          	sd	a5,-24(s0)
     6c2:	fe843783          	ld	a5,-24(s0)
     6c6:	0007c783          	lbu	a5,0(a5)
     6ca:	fbf1                	bnez	a5,69e <strchr+0x12>
     6cc:	4781                	li	a5,0
     6ce:	853e                	mv	a0,a5
     6d0:	6462                	ld	s0,24(sp)
     6d2:	6105                	addi	sp,sp,32
     6d4:	8082                	ret

00000000000006d6 <gets>:
     6d6:	7179                	addi	sp,sp,-48
     6d8:	f406                	sd	ra,40(sp)
     6da:	f022                	sd	s0,32(sp)
     6dc:	1800                	addi	s0,sp,48
     6de:	fca43c23          	sd	a0,-40(s0)
     6e2:	87ae                	mv	a5,a1
     6e4:	fcf42a23          	sw	a5,-44(s0)
     6e8:	fe042623          	sw	zero,-20(s0)
     6ec:	a8a1                	j	744 <gets+0x6e>
     6ee:	fe740793          	addi	a5,s0,-25
     6f2:	4605                	li	a2,1
     6f4:	85be                	mv	a1,a5
     6f6:	4501                	li	a0,0
     6f8:	00000097          	auipc	ra,0x0
     6fc:	2f8080e7          	jalr	760(ra) # 9f0 <read>
     700:	87aa                	mv	a5,a0
     702:	fef42423          	sw	a5,-24(s0)
     706:	fe842783          	lw	a5,-24(s0)
     70a:	2781                	sext.w	a5,a5
     70c:	04f05763          	blez	a5,75a <gets+0x84>
     710:	fec42783          	lw	a5,-20(s0)
     714:	0017871b          	addiw	a4,a5,1
     718:	fee42623          	sw	a4,-20(s0)
     71c:	873e                	mv	a4,a5
     71e:	fd843783          	ld	a5,-40(s0)
     722:	97ba                	add	a5,a5,a4
     724:	fe744703          	lbu	a4,-25(s0)
     728:	00e78023          	sb	a4,0(a5)
     72c:	fe744783          	lbu	a5,-25(s0)
     730:	873e                	mv	a4,a5
     732:	47a9                	li	a5,10
     734:	02f70463          	beq	a4,a5,75c <gets+0x86>
     738:	fe744783          	lbu	a5,-25(s0)
     73c:	873e                	mv	a4,a5
     73e:	47b5                	li	a5,13
     740:	00f70e63          	beq	a4,a5,75c <gets+0x86>
     744:	fec42783          	lw	a5,-20(s0)
     748:	2785                	addiw	a5,a5,1
     74a:	0007871b          	sext.w	a4,a5
     74e:	fd442783          	lw	a5,-44(s0)
     752:	2781                	sext.w	a5,a5
     754:	f8f74de3          	blt	a4,a5,6ee <gets+0x18>
     758:	a011                	j	75c <gets+0x86>
     75a:	0001                	nop
     75c:	fec42783          	lw	a5,-20(s0)
     760:	fd843703          	ld	a4,-40(s0)
     764:	97ba                	add	a5,a5,a4
     766:	00078023          	sb	zero,0(a5)
     76a:	fd843783          	ld	a5,-40(s0)
     76e:	853e                	mv	a0,a5
     770:	70a2                	ld	ra,40(sp)
     772:	7402                	ld	s0,32(sp)
     774:	6145                	addi	sp,sp,48
     776:	8082                	ret

0000000000000778 <stat>:
     778:	7179                	addi	sp,sp,-48
     77a:	f406                	sd	ra,40(sp)
     77c:	f022                	sd	s0,32(sp)
     77e:	1800                	addi	s0,sp,48
     780:	fca43c23          	sd	a0,-40(s0)
     784:	fcb43823          	sd	a1,-48(s0)
     788:	4581                	li	a1,0
     78a:	fd843503          	ld	a0,-40(s0)
     78e:	00000097          	auipc	ra,0x0
     792:	28a080e7          	jalr	650(ra) # a18 <open>
     796:	87aa                	mv	a5,a0
     798:	fef42623          	sw	a5,-20(s0)
     79c:	fec42783          	lw	a5,-20(s0)
     7a0:	2781                	sext.w	a5,a5
     7a2:	0007d463          	bgez	a5,7aa <stat+0x32>
     7a6:	57fd                	li	a5,-1
     7a8:	a035                	j	7d4 <stat+0x5c>
     7aa:	fec42783          	lw	a5,-20(s0)
     7ae:	fd043583          	ld	a1,-48(s0)
     7b2:	853e                	mv	a0,a5
     7b4:	00000097          	auipc	ra,0x0
     7b8:	27c080e7          	jalr	636(ra) # a30 <fstat>
     7bc:	87aa                	mv	a5,a0
     7be:	fef42423          	sw	a5,-24(s0)
     7c2:	fec42783          	lw	a5,-20(s0)
     7c6:	853e                	mv	a0,a5
     7c8:	00000097          	auipc	ra,0x0
     7cc:	238080e7          	jalr	568(ra) # a00 <close>
     7d0:	fe842783          	lw	a5,-24(s0)
     7d4:	853e                	mv	a0,a5
     7d6:	70a2                	ld	ra,40(sp)
     7d8:	7402                	ld	s0,32(sp)
     7da:	6145                	addi	sp,sp,48
     7dc:	8082                	ret

00000000000007de <atoi>:
     7de:	7179                	addi	sp,sp,-48
     7e0:	f422                	sd	s0,40(sp)
     7e2:	1800                	addi	s0,sp,48
     7e4:	fca43c23          	sd	a0,-40(s0)
     7e8:	fe042623          	sw	zero,-20(s0)
     7ec:	a81d                	j	822 <atoi+0x44>
     7ee:	fec42783          	lw	a5,-20(s0)
     7f2:	873e                	mv	a4,a5
     7f4:	87ba                	mv	a5,a4
     7f6:	0027979b          	slliw	a5,a5,0x2
     7fa:	9fb9                	addw	a5,a5,a4
     7fc:	0017979b          	slliw	a5,a5,0x1
     800:	0007871b          	sext.w	a4,a5
     804:	fd843783          	ld	a5,-40(s0)
     808:	00178693          	addi	a3,a5,1
     80c:	fcd43c23          	sd	a3,-40(s0)
     810:	0007c783          	lbu	a5,0(a5)
     814:	2781                	sext.w	a5,a5
     816:	9fb9                	addw	a5,a5,a4
     818:	2781                	sext.w	a5,a5
     81a:	fd07879b          	addiw	a5,a5,-48
     81e:	fef42623          	sw	a5,-20(s0)
     822:	fd843783          	ld	a5,-40(s0)
     826:	0007c783          	lbu	a5,0(a5)
     82a:	873e                	mv	a4,a5
     82c:	02f00793          	li	a5,47
     830:	00e7fb63          	bgeu	a5,a4,846 <atoi+0x68>
     834:	fd843783          	ld	a5,-40(s0)
     838:	0007c783          	lbu	a5,0(a5)
     83c:	873e                	mv	a4,a5
     83e:	03900793          	li	a5,57
     842:	fae7f6e3          	bgeu	a5,a4,7ee <atoi+0x10>
     846:	fec42783          	lw	a5,-20(s0)
     84a:	853e                	mv	a0,a5
     84c:	7422                	ld	s0,40(sp)
     84e:	6145                	addi	sp,sp,48
     850:	8082                	ret

0000000000000852 <memmove>:
     852:	7139                	addi	sp,sp,-64
     854:	fc22                	sd	s0,56(sp)
     856:	0080                	addi	s0,sp,64
     858:	fca43c23          	sd	a0,-40(s0)
     85c:	fcb43823          	sd	a1,-48(s0)
     860:	87b2                	mv	a5,a2
     862:	fcf42623          	sw	a5,-52(s0)
     866:	fd843783          	ld	a5,-40(s0)
     86a:	fef43423          	sd	a5,-24(s0)
     86e:	fd043783          	ld	a5,-48(s0)
     872:	fef43023          	sd	a5,-32(s0)
     876:	fe043703          	ld	a4,-32(s0)
     87a:	fe843783          	ld	a5,-24(s0)
     87e:	02e7fc63          	bgeu	a5,a4,8b6 <memmove+0x64>
     882:	a00d                	j	8a4 <memmove+0x52>
     884:	fe043703          	ld	a4,-32(s0)
     888:	00170793          	addi	a5,a4,1
     88c:	fef43023          	sd	a5,-32(s0)
     890:	fe843783          	ld	a5,-24(s0)
     894:	00178693          	addi	a3,a5,1
     898:	fed43423          	sd	a3,-24(s0)
     89c:	00074703          	lbu	a4,0(a4)
     8a0:	00e78023          	sb	a4,0(a5)
     8a4:	fcc42783          	lw	a5,-52(s0)
     8a8:	fff7871b          	addiw	a4,a5,-1
     8ac:	fce42623          	sw	a4,-52(s0)
     8b0:	fcf04ae3          	bgtz	a5,884 <memmove+0x32>
     8b4:	a891                	j	908 <memmove+0xb6>
     8b6:	fcc42783          	lw	a5,-52(s0)
     8ba:	fe843703          	ld	a4,-24(s0)
     8be:	97ba                	add	a5,a5,a4
     8c0:	fef43423          	sd	a5,-24(s0)
     8c4:	fcc42783          	lw	a5,-52(s0)
     8c8:	fe043703          	ld	a4,-32(s0)
     8cc:	97ba                	add	a5,a5,a4
     8ce:	fef43023          	sd	a5,-32(s0)
     8d2:	a01d                	j	8f8 <memmove+0xa6>
     8d4:	fe043783          	ld	a5,-32(s0)
     8d8:	17fd                	addi	a5,a5,-1
     8da:	fef43023          	sd	a5,-32(s0)
     8de:	fe843783          	ld	a5,-24(s0)
     8e2:	17fd                	addi	a5,a5,-1
     8e4:	fef43423          	sd	a5,-24(s0)
     8e8:	fe043783          	ld	a5,-32(s0)
     8ec:	0007c703          	lbu	a4,0(a5)
     8f0:	fe843783          	ld	a5,-24(s0)
     8f4:	00e78023          	sb	a4,0(a5)
     8f8:	fcc42783          	lw	a5,-52(s0)
     8fc:	fff7871b          	addiw	a4,a5,-1
     900:	fce42623          	sw	a4,-52(s0)
     904:	fcf048e3          	bgtz	a5,8d4 <memmove+0x82>
     908:	fd843783          	ld	a5,-40(s0)
     90c:	853e                	mv	a0,a5
     90e:	7462                	ld	s0,56(sp)
     910:	6121                	addi	sp,sp,64
     912:	8082                	ret

0000000000000914 <memcmp>:
     914:	7139                	addi	sp,sp,-64
     916:	fc22                	sd	s0,56(sp)
     918:	0080                	addi	s0,sp,64
     91a:	fca43c23          	sd	a0,-40(s0)
     91e:	fcb43823          	sd	a1,-48(s0)
     922:	87b2                	mv	a5,a2
     924:	fcf42623          	sw	a5,-52(s0)
     928:	fd843783          	ld	a5,-40(s0)
     92c:	fef43423          	sd	a5,-24(s0)
     930:	fd043783          	ld	a5,-48(s0)
     934:	fef43023          	sd	a5,-32(s0)
     938:	a0a1                	j	980 <memcmp+0x6c>
     93a:	fe843783          	ld	a5,-24(s0)
     93e:	0007c703          	lbu	a4,0(a5)
     942:	fe043783          	ld	a5,-32(s0)
     946:	0007c783          	lbu	a5,0(a5)
     94a:	02f70163          	beq	a4,a5,96c <memcmp+0x58>
     94e:	fe843783          	ld	a5,-24(s0)
     952:	0007c783          	lbu	a5,0(a5)
     956:	0007871b          	sext.w	a4,a5
     95a:	fe043783          	ld	a5,-32(s0)
     95e:	0007c783          	lbu	a5,0(a5)
     962:	2781                	sext.w	a5,a5
     964:	40f707bb          	subw	a5,a4,a5
     968:	2781                	sext.w	a5,a5
     96a:	a01d                	j	990 <memcmp+0x7c>
     96c:	fe843783          	ld	a5,-24(s0)
     970:	0785                	addi	a5,a5,1
     972:	fef43423          	sd	a5,-24(s0)
     976:	fe043783          	ld	a5,-32(s0)
     97a:	0785                	addi	a5,a5,1
     97c:	fef43023          	sd	a5,-32(s0)
     980:	fcc42783          	lw	a5,-52(s0)
     984:	fff7871b          	addiw	a4,a5,-1
     988:	fce42623          	sw	a4,-52(s0)
     98c:	f7dd                	bnez	a5,93a <memcmp+0x26>
     98e:	4781                	li	a5,0
     990:	853e                	mv	a0,a5
     992:	7462                	ld	s0,56(sp)
     994:	6121                	addi	sp,sp,64
     996:	8082                	ret

0000000000000998 <memcpy>:
     998:	7179                	addi	sp,sp,-48
     99a:	f406                	sd	ra,40(sp)
     99c:	f022                	sd	s0,32(sp)
     99e:	1800                	addi	s0,sp,48
     9a0:	fea43423          	sd	a0,-24(s0)
     9a4:	feb43023          	sd	a1,-32(s0)
     9a8:	87b2                	mv	a5,a2
     9aa:	fcf42e23          	sw	a5,-36(s0)
     9ae:	fdc42783          	lw	a5,-36(s0)
     9b2:	863e                	mv	a2,a5
     9b4:	fe043583          	ld	a1,-32(s0)
     9b8:	fe843503          	ld	a0,-24(s0)
     9bc:	00000097          	auipc	ra,0x0
     9c0:	e96080e7          	jalr	-362(ra) # 852 <memmove>
     9c4:	87aa                	mv	a5,a0
     9c6:	853e                	mv	a0,a5
     9c8:	70a2                	ld	ra,40(sp)
     9ca:	7402                	ld	s0,32(sp)
     9cc:	6145                	addi	sp,sp,48
     9ce:	8082                	ret

00000000000009d0 <fork>:
     9d0:	4885                	li	a7,1
     9d2:	00000073          	ecall
     9d6:	8082                	ret

00000000000009d8 <exit>:
     9d8:	4889                	li	a7,2
     9da:	00000073          	ecall
     9de:	8082                	ret

00000000000009e0 <wait>:
     9e0:	488d                	li	a7,3
     9e2:	00000073          	ecall
     9e6:	8082                	ret

00000000000009e8 <pipe>:
     9e8:	4891                	li	a7,4
     9ea:	00000073          	ecall
     9ee:	8082                	ret

00000000000009f0 <read>:
     9f0:	4895                	li	a7,5
     9f2:	00000073          	ecall
     9f6:	8082                	ret

00000000000009f8 <write>:
     9f8:	48c1                	li	a7,16
     9fa:	00000073          	ecall
     9fe:	8082                	ret

0000000000000a00 <close>:
     a00:	48d5                	li	a7,21
     a02:	00000073          	ecall
     a06:	8082                	ret

0000000000000a08 <kill>:
     a08:	4899                	li	a7,6
     a0a:	00000073          	ecall
     a0e:	8082                	ret

0000000000000a10 <exec>:
     a10:	489d                	li	a7,7
     a12:	00000073          	ecall
     a16:	8082                	ret

0000000000000a18 <open>:
     a18:	48bd                	li	a7,15
     a1a:	00000073          	ecall
     a1e:	8082                	ret

0000000000000a20 <mknod>:
     a20:	48c5                	li	a7,17
     a22:	00000073          	ecall
     a26:	8082                	ret

0000000000000a28 <unlink>:
     a28:	48c9                	li	a7,18
     a2a:	00000073          	ecall
     a2e:	8082                	ret

0000000000000a30 <fstat>:
     a30:	48a1                	li	a7,8
     a32:	00000073          	ecall
     a36:	8082                	ret

0000000000000a38 <link>:
     a38:	48cd                	li	a7,19
     a3a:	00000073          	ecall
     a3e:	8082                	ret

0000000000000a40 <mkdir>:
     a40:	48d1                	li	a7,20
     a42:	00000073          	ecall
     a46:	8082                	ret

0000000000000a48 <chdir>:
     a48:	48a5                	li	a7,9
     a4a:	00000073          	ecall
     a4e:	8082                	ret

0000000000000a50 <dup>:
     a50:	48a9                	li	a7,10
     a52:	00000073          	ecall
     a56:	8082                	ret

0000000000000a58 <getpid>:
     a58:	48ad                	li	a7,11
     a5a:	00000073          	ecall
     a5e:	8082                	ret

0000000000000a60 <sbrk>:
     a60:	48b1                	li	a7,12
     a62:	00000073          	ecall
     a66:	8082                	ret

0000000000000a68 <sleep>:
     a68:	48b5                	li	a7,13
     a6a:	00000073          	ecall
     a6e:	8082                	ret

0000000000000a70 <uptime>:
     a70:	48b9                	li	a7,14
     a72:	00000073          	ecall
     a76:	8082                	ret

0000000000000a78 <waitx>:
     a78:	48d9                	li	a7,22
     a7a:	00000073          	ecall
     a7e:	8082                	ret

0000000000000a80 <getsyscount>:
     a80:	48dd                	li	a7,23
     a82:	00000073          	ecall
     a86:	8082                	ret

0000000000000a88 <sigalarm>:
     a88:	48e1                	li	a7,24
     a8a:	00000073          	ecall
     a8e:	8082                	ret

0000000000000a90 <sigreturn>:
     a90:	48e5                	li	a7,25
     a92:	00000073          	ecall
     a96:	8082                	ret

0000000000000a98 <settickets>:
     a98:	48e9                	li	a7,26
     a9a:	00000073          	ecall
     a9e:	8082                	ret

0000000000000aa0 <putc>:
     aa0:	1101                	addi	sp,sp,-32
     aa2:	ec06                	sd	ra,24(sp)
     aa4:	e822                	sd	s0,16(sp)
     aa6:	1000                	addi	s0,sp,32
     aa8:	87aa                	mv	a5,a0
     aaa:	872e                	mv	a4,a1
     aac:	fef42623          	sw	a5,-20(s0)
     ab0:	87ba                	mv	a5,a4
     ab2:	fef405a3          	sb	a5,-21(s0)
     ab6:	feb40713          	addi	a4,s0,-21
     aba:	fec42783          	lw	a5,-20(s0)
     abe:	4605                	li	a2,1
     ac0:	85ba                	mv	a1,a4
     ac2:	853e                	mv	a0,a5
     ac4:	00000097          	auipc	ra,0x0
     ac8:	f34080e7          	jalr	-204(ra) # 9f8 <write>
     acc:	0001                	nop
     ace:	60e2                	ld	ra,24(sp)
     ad0:	6442                	ld	s0,16(sp)
     ad2:	6105                	addi	sp,sp,32
     ad4:	8082                	ret

0000000000000ad6 <printint>:
     ad6:	7139                	addi	sp,sp,-64
     ad8:	fc06                	sd	ra,56(sp)
     ada:	f822                	sd	s0,48(sp)
     adc:	0080                	addi	s0,sp,64
     ade:	87aa                	mv	a5,a0
     ae0:	8736                	mv	a4,a3
     ae2:	fcf42623          	sw	a5,-52(s0)
     ae6:	87ae                	mv	a5,a1
     ae8:	fcf42423          	sw	a5,-56(s0)
     aec:	87b2                	mv	a5,a2
     aee:	fcf42223          	sw	a5,-60(s0)
     af2:	87ba                	mv	a5,a4
     af4:	fcf42023          	sw	a5,-64(s0)
     af8:	fe042423          	sw	zero,-24(s0)
     afc:	fc042783          	lw	a5,-64(s0)
     b00:	2781                	sext.w	a5,a5
     b02:	c38d                	beqz	a5,b24 <printint+0x4e>
     b04:	fc842783          	lw	a5,-56(s0)
     b08:	2781                	sext.w	a5,a5
     b0a:	0007dd63          	bgez	a5,b24 <printint+0x4e>
     b0e:	4785                	li	a5,1
     b10:	fef42423          	sw	a5,-24(s0)
     b14:	fc842783          	lw	a5,-56(s0)
     b18:	40f007bb          	negw	a5,a5
     b1c:	2781                	sext.w	a5,a5
     b1e:	fef42223          	sw	a5,-28(s0)
     b22:	a029                	j	b2c <printint+0x56>
     b24:	fc842783          	lw	a5,-56(s0)
     b28:	fef42223          	sw	a5,-28(s0)
     b2c:	fe042623          	sw	zero,-20(s0)
     b30:	fc442783          	lw	a5,-60(s0)
     b34:	fe442703          	lw	a4,-28(s0)
     b38:	02f777bb          	remuw	a5,a4,a5
     b3c:	0007861b          	sext.w	a2,a5
     b40:	fec42783          	lw	a5,-20(s0)
     b44:	0017871b          	addiw	a4,a5,1
     b48:	fee42623          	sw	a4,-20(s0)
     b4c:	00001697          	auipc	a3,0x1
     b50:	4b468693          	addi	a3,a3,1204 # 2000 <digits>
     b54:	02061713          	slli	a4,a2,0x20
     b58:	9301                	srli	a4,a4,0x20
     b5a:	9736                	add	a4,a4,a3
     b5c:	00074703          	lbu	a4,0(a4)
     b60:	17c1                	addi	a5,a5,-16
     b62:	97a2                	add	a5,a5,s0
     b64:	fee78023          	sb	a4,-32(a5)
     b68:	fc442783          	lw	a5,-60(s0)
     b6c:	fe442703          	lw	a4,-28(s0)
     b70:	02f757bb          	divuw	a5,a4,a5
     b74:	fef42223          	sw	a5,-28(s0)
     b78:	fe442783          	lw	a5,-28(s0)
     b7c:	2781                	sext.w	a5,a5
     b7e:	fbcd                	bnez	a5,b30 <printint+0x5a>
     b80:	fe842783          	lw	a5,-24(s0)
     b84:	2781                	sext.w	a5,a5
     b86:	cf85                	beqz	a5,bbe <printint+0xe8>
     b88:	fec42783          	lw	a5,-20(s0)
     b8c:	0017871b          	addiw	a4,a5,1
     b90:	fee42623          	sw	a4,-20(s0)
     b94:	17c1                	addi	a5,a5,-16
     b96:	97a2                	add	a5,a5,s0
     b98:	02d00713          	li	a4,45
     b9c:	fee78023          	sb	a4,-32(a5)
     ba0:	a839                	j	bbe <printint+0xe8>
     ba2:	fec42783          	lw	a5,-20(s0)
     ba6:	17c1                	addi	a5,a5,-16
     ba8:	97a2                	add	a5,a5,s0
     baa:	fe07c703          	lbu	a4,-32(a5)
     bae:	fcc42783          	lw	a5,-52(s0)
     bb2:	85ba                	mv	a1,a4
     bb4:	853e                	mv	a0,a5
     bb6:	00000097          	auipc	ra,0x0
     bba:	eea080e7          	jalr	-278(ra) # aa0 <putc>
     bbe:	fec42783          	lw	a5,-20(s0)
     bc2:	37fd                	addiw	a5,a5,-1
     bc4:	fef42623          	sw	a5,-20(s0)
     bc8:	fec42783          	lw	a5,-20(s0)
     bcc:	2781                	sext.w	a5,a5
     bce:	fc07dae3          	bgez	a5,ba2 <printint+0xcc>
     bd2:	0001                	nop
     bd4:	0001                	nop
     bd6:	70e2                	ld	ra,56(sp)
     bd8:	7442                	ld	s0,48(sp)
     bda:	6121                	addi	sp,sp,64
     bdc:	8082                	ret

0000000000000bde <printptr>:
     bde:	7179                	addi	sp,sp,-48
     be0:	f406                	sd	ra,40(sp)
     be2:	f022                	sd	s0,32(sp)
     be4:	1800                	addi	s0,sp,48
     be6:	87aa                	mv	a5,a0
     be8:	fcb43823          	sd	a1,-48(s0)
     bec:	fcf42e23          	sw	a5,-36(s0)
     bf0:	fdc42783          	lw	a5,-36(s0)
     bf4:	03000593          	li	a1,48
     bf8:	853e                	mv	a0,a5
     bfa:	00000097          	auipc	ra,0x0
     bfe:	ea6080e7          	jalr	-346(ra) # aa0 <putc>
     c02:	fdc42783          	lw	a5,-36(s0)
     c06:	07800593          	li	a1,120
     c0a:	853e                	mv	a0,a5
     c0c:	00000097          	auipc	ra,0x0
     c10:	e94080e7          	jalr	-364(ra) # aa0 <putc>
     c14:	fe042623          	sw	zero,-20(s0)
     c18:	a82d                	j	c52 <printptr+0x74>
     c1a:	fd043783          	ld	a5,-48(s0)
     c1e:	93f1                	srli	a5,a5,0x3c
     c20:	00001717          	auipc	a4,0x1
     c24:	3e070713          	addi	a4,a4,992 # 2000 <digits>
     c28:	97ba                	add	a5,a5,a4
     c2a:	0007c703          	lbu	a4,0(a5)
     c2e:	fdc42783          	lw	a5,-36(s0)
     c32:	85ba                	mv	a1,a4
     c34:	853e                	mv	a0,a5
     c36:	00000097          	auipc	ra,0x0
     c3a:	e6a080e7          	jalr	-406(ra) # aa0 <putc>
     c3e:	fec42783          	lw	a5,-20(s0)
     c42:	2785                	addiw	a5,a5,1
     c44:	fef42623          	sw	a5,-20(s0)
     c48:	fd043783          	ld	a5,-48(s0)
     c4c:	0792                	slli	a5,a5,0x4
     c4e:	fcf43823          	sd	a5,-48(s0)
     c52:	fec42783          	lw	a5,-20(s0)
     c56:	873e                	mv	a4,a5
     c58:	47bd                	li	a5,15
     c5a:	fce7f0e3          	bgeu	a5,a4,c1a <printptr+0x3c>
     c5e:	0001                	nop
     c60:	0001                	nop
     c62:	70a2                	ld	ra,40(sp)
     c64:	7402                	ld	s0,32(sp)
     c66:	6145                	addi	sp,sp,48
     c68:	8082                	ret

0000000000000c6a <vprintf>:
     c6a:	715d                	addi	sp,sp,-80
     c6c:	e486                	sd	ra,72(sp)
     c6e:	e0a2                	sd	s0,64(sp)
     c70:	0880                	addi	s0,sp,80
     c72:	87aa                	mv	a5,a0
     c74:	fcb43023          	sd	a1,-64(s0)
     c78:	fac43c23          	sd	a2,-72(s0)
     c7c:	fcf42623          	sw	a5,-52(s0)
     c80:	fe042023          	sw	zero,-32(s0)
     c84:	fe042223          	sw	zero,-28(s0)
     c88:	a42d                	j	eb2 <vprintf+0x248>
     c8a:	fe442783          	lw	a5,-28(s0)
     c8e:	fc043703          	ld	a4,-64(s0)
     c92:	97ba                	add	a5,a5,a4
     c94:	0007c783          	lbu	a5,0(a5)
     c98:	fcf42e23          	sw	a5,-36(s0)
     c9c:	fe042783          	lw	a5,-32(s0)
     ca0:	2781                	sext.w	a5,a5
     ca2:	eb9d                	bnez	a5,cd8 <vprintf+0x6e>
     ca4:	fdc42783          	lw	a5,-36(s0)
     ca8:	0007871b          	sext.w	a4,a5
     cac:	02500793          	li	a5,37
     cb0:	00f71763          	bne	a4,a5,cbe <vprintf+0x54>
     cb4:	02500793          	li	a5,37
     cb8:	fef42023          	sw	a5,-32(s0)
     cbc:	a2f5                	j	ea8 <vprintf+0x23e>
     cbe:	fdc42783          	lw	a5,-36(s0)
     cc2:	0ff7f713          	zext.b	a4,a5
     cc6:	fcc42783          	lw	a5,-52(s0)
     cca:	85ba                	mv	a1,a4
     ccc:	853e                	mv	a0,a5
     cce:	00000097          	auipc	ra,0x0
     cd2:	dd2080e7          	jalr	-558(ra) # aa0 <putc>
     cd6:	aac9                	j	ea8 <vprintf+0x23e>
     cd8:	fe042783          	lw	a5,-32(s0)
     cdc:	0007871b          	sext.w	a4,a5
     ce0:	02500793          	li	a5,37
     ce4:	1cf71263          	bne	a4,a5,ea8 <vprintf+0x23e>
     ce8:	fdc42783          	lw	a5,-36(s0)
     cec:	0007871b          	sext.w	a4,a5
     cf0:	06400793          	li	a5,100
     cf4:	02f71463          	bne	a4,a5,d1c <vprintf+0xb2>
     cf8:	fb843783          	ld	a5,-72(s0)
     cfc:	00878713          	addi	a4,a5,8
     d00:	fae43c23          	sd	a4,-72(s0)
     d04:	4398                	lw	a4,0(a5)
     d06:	fcc42783          	lw	a5,-52(s0)
     d0a:	4685                	li	a3,1
     d0c:	4629                	li	a2,10
     d0e:	85ba                	mv	a1,a4
     d10:	853e                	mv	a0,a5
     d12:	00000097          	auipc	ra,0x0
     d16:	dc4080e7          	jalr	-572(ra) # ad6 <printint>
     d1a:	a269                	j	ea4 <vprintf+0x23a>
     d1c:	fdc42783          	lw	a5,-36(s0)
     d20:	0007871b          	sext.w	a4,a5
     d24:	06c00793          	li	a5,108
     d28:	02f71663          	bne	a4,a5,d54 <vprintf+0xea>
     d2c:	fb843783          	ld	a5,-72(s0)
     d30:	00878713          	addi	a4,a5,8
     d34:	fae43c23          	sd	a4,-72(s0)
     d38:	639c                	ld	a5,0(a5)
     d3a:	0007871b          	sext.w	a4,a5
     d3e:	fcc42783          	lw	a5,-52(s0)
     d42:	4681                	li	a3,0
     d44:	4629                	li	a2,10
     d46:	85ba                	mv	a1,a4
     d48:	853e                	mv	a0,a5
     d4a:	00000097          	auipc	ra,0x0
     d4e:	d8c080e7          	jalr	-628(ra) # ad6 <printint>
     d52:	aa89                	j	ea4 <vprintf+0x23a>
     d54:	fdc42783          	lw	a5,-36(s0)
     d58:	0007871b          	sext.w	a4,a5
     d5c:	07800793          	li	a5,120
     d60:	02f71463          	bne	a4,a5,d88 <vprintf+0x11e>
     d64:	fb843783          	ld	a5,-72(s0)
     d68:	00878713          	addi	a4,a5,8
     d6c:	fae43c23          	sd	a4,-72(s0)
     d70:	4398                	lw	a4,0(a5)
     d72:	fcc42783          	lw	a5,-52(s0)
     d76:	4681                	li	a3,0
     d78:	4641                	li	a2,16
     d7a:	85ba                	mv	a1,a4
     d7c:	853e                	mv	a0,a5
     d7e:	00000097          	auipc	ra,0x0
     d82:	d58080e7          	jalr	-680(ra) # ad6 <printint>
     d86:	aa39                	j	ea4 <vprintf+0x23a>
     d88:	fdc42783          	lw	a5,-36(s0)
     d8c:	0007871b          	sext.w	a4,a5
     d90:	07000793          	li	a5,112
     d94:	02f71263          	bne	a4,a5,db8 <vprintf+0x14e>
     d98:	fb843783          	ld	a5,-72(s0)
     d9c:	00878713          	addi	a4,a5,8
     da0:	fae43c23          	sd	a4,-72(s0)
     da4:	6398                	ld	a4,0(a5)
     da6:	fcc42783          	lw	a5,-52(s0)
     daa:	85ba                	mv	a1,a4
     dac:	853e                	mv	a0,a5
     dae:	00000097          	auipc	ra,0x0
     db2:	e30080e7          	jalr	-464(ra) # bde <printptr>
     db6:	a0fd                	j	ea4 <vprintf+0x23a>
     db8:	fdc42783          	lw	a5,-36(s0)
     dbc:	0007871b          	sext.w	a4,a5
     dc0:	07300793          	li	a5,115
     dc4:	04f71c63          	bne	a4,a5,e1c <vprintf+0x1b2>
     dc8:	fb843783          	ld	a5,-72(s0)
     dcc:	00878713          	addi	a4,a5,8
     dd0:	fae43c23          	sd	a4,-72(s0)
     dd4:	639c                	ld	a5,0(a5)
     dd6:	fef43423          	sd	a5,-24(s0)
     dda:	fe843783          	ld	a5,-24(s0)
     dde:	eb8d                	bnez	a5,e10 <vprintf+0x1a6>
     de0:	00000797          	auipc	a5,0x0
     de4:	66078793          	addi	a5,a5,1632 # 1440 <malloc+0x326>
     de8:	fef43423          	sd	a5,-24(s0)
     dec:	a015                	j	e10 <vprintf+0x1a6>
     dee:	fe843783          	ld	a5,-24(s0)
     df2:	0007c703          	lbu	a4,0(a5)
     df6:	fcc42783          	lw	a5,-52(s0)
     dfa:	85ba                	mv	a1,a4
     dfc:	853e                	mv	a0,a5
     dfe:	00000097          	auipc	ra,0x0
     e02:	ca2080e7          	jalr	-862(ra) # aa0 <putc>
     e06:	fe843783          	ld	a5,-24(s0)
     e0a:	0785                	addi	a5,a5,1
     e0c:	fef43423          	sd	a5,-24(s0)
     e10:	fe843783          	ld	a5,-24(s0)
     e14:	0007c783          	lbu	a5,0(a5)
     e18:	fbf9                	bnez	a5,dee <vprintf+0x184>
     e1a:	a069                	j	ea4 <vprintf+0x23a>
     e1c:	fdc42783          	lw	a5,-36(s0)
     e20:	0007871b          	sext.w	a4,a5
     e24:	06300793          	li	a5,99
     e28:	02f71463          	bne	a4,a5,e50 <vprintf+0x1e6>
     e2c:	fb843783          	ld	a5,-72(s0)
     e30:	00878713          	addi	a4,a5,8
     e34:	fae43c23          	sd	a4,-72(s0)
     e38:	439c                	lw	a5,0(a5)
     e3a:	0ff7f713          	zext.b	a4,a5
     e3e:	fcc42783          	lw	a5,-52(s0)
     e42:	85ba                	mv	a1,a4
     e44:	853e                	mv	a0,a5
     e46:	00000097          	auipc	ra,0x0
     e4a:	c5a080e7          	jalr	-934(ra) # aa0 <putc>
     e4e:	a899                	j	ea4 <vprintf+0x23a>
     e50:	fdc42783          	lw	a5,-36(s0)
     e54:	0007871b          	sext.w	a4,a5
     e58:	02500793          	li	a5,37
     e5c:	00f71f63          	bne	a4,a5,e7a <vprintf+0x210>
     e60:	fdc42783          	lw	a5,-36(s0)
     e64:	0ff7f713          	zext.b	a4,a5
     e68:	fcc42783          	lw	a5,-52(s0)
     e6c:	85ba                	mv	a1,a4
     e6e:	853e                	mv	a0,a5
     e70:	00000097          	auipc	ra,0x0
     e74:	c30080e7          	jalr	-976(ra) # aa0 <putc>
     e78:	a035                	j	ea4 <vprintf+0x23a>
     e7a:	fcc42783          	lw	a5,-52(s0)
     e7e:	02500593          	li	a1,37
     e82:	853e                	mv	a0,a5
     e84:	00000097          	auipc	ra,0x0
     e88:	c1c080e7          	jalr	-996(ra) # aa0 <putc>
     e8c:	fdc42783          	lw	a5,-36(s0)
     e90:	0ff7f713          	zext.b	a4,a5
     e94:	fcc42783          	lw	a5,-52(s0)
     e98:	85ba                	mv	a1,a4
     e9a:	853e                	mv	a0,a5
     e9c:	00000097          	auipc	ra,0x0
     ea0:	c04080e7          	jalr	-1020(ra) # aa0 <putc>
     ea4:	fe042023          	sw	zero,-32(s0)
     ea8:	fe442783          	lw	a5,-28(s0)
     eac:	2785                	addiw	a5,a5,1
     eae:	fef42223          	sw	a5,-28(s0)
     eb2:	fe442783          	lw	a5,-28(s0)
     eb6:	fc043703          	ld	a4,-64(s0)
     eba:	97ba                	add	a5,a5,a4
     ebc:	0007c783          	lbu	a5,0(a5)
     ec0:	dc0795e3          	bnez	a5,c8a <vprintf+0x20>
     ec4:	0001                	nop
     ec6:	0001                	nop
     ec8:	60a6                	ld	ra,72(sp)
     eca:	6406                	ld	s0,64(sp)
     ecc:	6161                	addi	sp,sp,80
     ece:	8082                	ret

0000000000000ed0 <fprintf>:
     ed0:	7159                	addi	sp,sp,-112
     ed2:	fc06                	sd	ra,56(sp)
     ed4:	f822                	sd	s0,48(sp)
     ed6:	0080                	addi	s0,sp,64
     ed8:	fcb43823          	sd	a1,-48(s0)
     edc:	e010                	sd	a2,0(s0)
     ede:	e414                	sd	a3,8(s0)
     ee0:	e818                	sd	a4,16(s0)
     ee2:	ec1c                	sd	a5,24(s0)
     ee4:	03043023          	sd	a6,32(s0)
     ee8:	03143423          	sd	a7,40(s0)
     eec:	87aa                	mv	a5,a0
     eee:	fcf42e23          	sw	a5,-36(s0)
     ef2:	03040793          	addi	a5,s0,48
     ef6:	fcf43423          	sd	a5,-56(s0)
     efa:	fc843783          	ld	a5,-56(s0)
     efe:	fd078793          	addi	a5,a5,-48
     f02:	fef43423          	sd	a5,-24(s0)
     f06:	fe843703          	ld	a4,-24(s0)
     f0a:	fdc42783          	lw	a5,-36(s0)
     f0e:	863a                	mv	a2,a4
     f10:	fd043583          	ld	a1,-48(s0)
     f14:	853e                	mv	a0,a5
     f16:	00000097          	auipc	ra,0x0
     f1a:	d54080e7          	jalr	-684(ra) # c6a <vprintf>
     f1e:	0001                	nop
     f20:	70e2                	ld	ra,56(sp)
     f22:	7442                	ld	s0,48(sp)
     f24:	6165                	addi	sp,sp,112
     f26:	8082                	ret

0000000000000f28 <printf>:
     f28:	7159                	addi	sp,sp,-112
     f2a:	f406                	sd	ra,40(sp)
     f2c:	f022                	sd	s0,32(sp)
     f2e:	1800                	addi	s0,sp,48
     f30:	fca43c23          	sd	a0,-40(s0)
     f34:	e40c                	sd	a1,8(s0)
     f36:	e810                	sd	a2,16(s0)
     f38:	ec14                	sd	a3,24(s0)
     f3a:	f018                	sd	a4,32(s0)
     f3c:	f41c                	sd	a5,40(s0)
     f3e:	03043823          	sd	a6,48(s0)
     f42:	03143c23          	sd	a7,56(s0)
     f46:	04040793          	addi	a5,s0,64
     f4a:	fcf43823          	sd	a5,-48(s0)
     f4e:	fd043783          	ld	a5,-48(s0)
     f52:	fc878793          	addi	a5,a5,-56
     f56:	fef43423          	sd	a5,-24(s0)
     f5a:	fe843783          	ld	a5,-24(s0)
     f5e:	863e                	mv	a2,a5
     f60:	fd843583          	ld	a1,-40(s0)
     f64:	4505                	li	a0,1
     f66:	00000097          	auipc	ra,0x0
     f6a:	d04080e7          	jalr	-764(ra) # c6a <vprintf>
     f6e:	0001                	nop
     f70:	70a2                	ld	ra,40(sp)
     f72:	7402                	ld	s0,32(sp)
     f74:	6165                	addi	sp,sp,112
     f76:	8082                	ret

0000000000000f78 <free>:
     f78:	7179                	addi	sp,sp,-48
     f7a:	f422                	sd	s0,40(sp)
     f7c:	1800                	addi	s0,sp,48
     f7e:	fca43c23          	sd	a0,-40(s0)
     f82:	fd843783          	ld	a5,-40(s0)
     f86:	17c1                	addi	a5,a5,-16
     f88:	fef43023          	sd	a5,-32(s0)
     f8c:	00001797          	auipc	a5,0x1
     f90:	0ac78793          	addi	a5,a5,172 # 2038 <freep>
     f94:	639c                	ld	a5,0(a5)
     f96:	fef43423          	sd	a5,-24(s0)
     f9a:	a815                	j	fce <free+0x56>
     f9c:	fe843783          	ld	a5,-24(s0)
     fa0:	639c                	ld	a5,0(a5)
     fa2:	fe843703          	ld	a4,-24(s0)
     fa6:	00f76f63          	bltu	a4,a5,fc4 <free+0x4c>
     faa:	fe043703          	ld	a4,-32(s0)
     fae:	fe843783          	ld	a5,-24(s0)
     fb2:	02e7eb63          	bltu	a5,a4,fe8 <free+0x70>
     fb6:	fe843783          	ld	a5,-24(s0)
     fba:	639c                	ld	a5,0(a5)
     fbc:	fe043703          	ld	a4,-32(s0)
     fc0:	02f76463          	bltu	a4,a5,fe8 <free+0x70>
     fc4:	fe843783          	ld	a5,-24(s0)
     fc8:	639c                	ld	a5,0(a5)
     fca:	fef43423          	sd	a5,-24(s0)
     fce:	fe043703          	ld	a4,-32(s0)
     fd2:	fe843783          	ld	a5,-24(s0)
     fd6:	fce7f3e3          	bgeu	a5,a4,f9c <free+0x24>
     fda:	fe843783          	ld	a5,-24(s0)
     fde:	639c                	ld	a5,0(a5)
     fe0:	fe043703          	ld	a4,-32(s0)
     fe4:	faf77ce3          	bgeu	a4,a5,f9c <free+0x24>
     fe8:	fe043783          	ld	a5,-32(s0)
     fec:	479c                	lw	a5,8(a5)
     fee:	1782                	slli	a5,a5,0x20
     ff0:	9381                	srli	a5,a5,0x20
     ff2:	0792                	slli	a5,a5,0x4
     ff4:	fe043703          	ld	a4,-32(s0)
     ff8:	973e                	add	a4,a4,a5
     ffa:	fe843783          	ld	a5,-24(s0)
     ffe:	639c                	ld	a5,0(a5)
    1000:	02f71763          	bne	a4,a5,102e <free+0xb6>
    1004:	fe043783          	ld	a5,-32(s0)
    1008:	4798                	lw	a4,8(a5)
    100a:	fe843783          	ld	a5,-24(s0)
    100e:	639c                	ld	a5,0(a5)
    1010:	479c                	lw	a5,8(a5)
    1012:	9fb9                	addw	a5,a5,a4
    1014:	0007871b          	sext.w	a4,a5
    1018:	fe043783          	ld	a5,-32(s0)
    101c:	c798                	sw	a4,8(a5)
    101e:	fe843783          	ld	a5,-24(s0)
    1022:	639c                	ld	a5,0(a5)
    1024:	6398                	ld	a4,0(a5)
    1026:	fe043783          	ld	a5,-32(s0)
    102a:	e398                	sd	a4,0(a5)
    102c:	a039                	j	103a <free+0xc2>
    102e:	fe843783          	ld	a5,-24(s0)
    1032:	6398                	ld	a4,0(a5)
    1034:	fe043783          	ld	a5,-32(s0)
    1038:	e398                	sd	a4,0(a5)
    103a:	fe843783          	ld	a5,-24(s0)
    103e:	479c                	lw	a5,8(a5)
    1040:	1782                	slli	a5,a5,0x20
    1042:	9381                	srli	a5,a5,0x20
    1044:	0792                	slli	a5,a5,0x4
    1046:	fe843703          	ld	a4,-24(s0)
    104a:	97ba                	add	a5,a5,a4
    104c:	fe043703          	ld	a4,-32(s0)
    1050:	02f71563          	bne	a4,a5,107a <free+0x102>
    1054:	fe843783          	ld	a5,-24(s0)
    1058:	4798                	lw	a4,8(a5)
    105a:	fe043783          	ld	a5,-32(s0)
    105e:	479c                	lw	a5,8(a5)
    1060:	9fb9                	addw	a5,a5,a4
    1062:	0007871b          	sext.w	a4,a5
    1066:	fe843783          	ld	a5,-24(s0)
    106a:	c798                	sw	a4,8(a5)
    106c:	fe043783          	ld	a5,-32(s0)
    1070:	6398                	ld	a4,0(a5)
    1072:	fe843783          	ld	a5,-24(s0)
    1076:	e398                	sd	a4,0(a5)
    1078:	a031                	j	1084 <free+0x10c>
    107a:	fe843783          	ld	a5,-24(s0)
    107e:	fe043703          	ld	a4,-32(s0)
    1082:	e398                	sd	a4,0(a5)
    1084:	00001797          	auipc	a5,0x1
    1088:	fb478793          	addi	a5,a5,-76 # 2038 <freep>
    108c:	fe843703          	ld	a4,-24(s0)
    1090:	e398                	sd	a4,0(a5)
    1092:	0001                	nop
    1094:	7422                	ld	s0,40(sp)
    1096:	6145                	addi	sp,sp,48
    1098:	8082                	ret

000000000000109a <morecore>:
    109a:	7179                	addi	sp,sp,-48
    109c:	f406                	sd	ra,40(sp)
    109e:	f022                	sd	s0,32(sp)
    10a0:	1800                	addi	s0,sp,48
    10a2:	87aa                	mv	a5,a0
    10a4:	fcf42e23          	sw	a5,-36(s0)
    10a8:	fdc42783          	lw	a5,-36(s0)
    10ac:	0007871b          	sext.w	a4,a5
    10b0:	6785                	lui	a5,0x1
    10b2:	00f77563          	bgeu	a4,a5,10bc <morecore+0x22>
    10b6:	6785                	lui	a5,0x1
    10b8:	fcf42e23          	sw	a5,-36(s0)
    10bc:	fdc42783          	lw	a5,-36(s0)
    10c0:	0047979b          	slliw	a5,a5,0x4
    10c4:	2781                	sext.w	a5,a5
    10c6:	2781                	sext.w	a5,a5
    10c8:	853e                	mv	a0,a5
    10ca:	00000097          	auipc	ra,0x0
    10ce:	996080e7          	jalr	-1642(ra) # a60 <sbrk>
    10d2:	fea43423          	sd	a0,-24(s0)
    10d6:	fe843703          	ld	a4,-24(s0)
    10da:	57fd                	li	a5,-1
    10dc:	00f71463          	bne	a4,a5,10e4 <morecore+0x4a>
    10e0:	4781                	li	a5,0
    10e2:	a03d                	j	1110 <morecore+0x76>
    10e4:	fe843783          	ld	a5,-24(s0)
    10e8:	fef43023          	sd	a5,-32(s0)
    10ec:	fe043783          	ld	a5,-32(s0)
    10f0:	fdc42703          	lw	a4,-36(s0)
    10f4:	c798                	sw	a4,8(a5)
    10f6:	fe043783          	ld	a5,-32(s0)
    10fa:	07c1                	addi	a5,a5,16 # 1010 <free+0x98>
    10fc:	853e                	mv	a0,a5
    10fe:	00000097          	auipc	ra,0x0
    1102:	e7a080e7          	jalr	-390(ra) # f78 <free>
    1106:	00001797          	auipc	a5,0x1
    110a:	f3278793          	addi	a5,a5,-206 # 2038 <freep>
    110e:	639c                	ld	a5,0(a5)
    1110:	853e                	mv	a0,a5
    1112:	70a2                	ld	ra,40(sp)
    1114:	7402                	ld	s0,32(sp)
    1116:	6145                	addi	sp,sp,48
    1118:	8082                	ret

000000000000111a <malloc>:
    111a:	7139                	addi	sp,sp,-64
    111c:	fc06                	sd	ra,56(sp)
    111e:	f822                	sd	s0,48(sp)
    1120:	0080                	addi	s0,sp,64
    1122:	87aa                	mv	a5,a0
    1124:	fcf42623          	sw	a5,-52(s0)
    1128:	fcc46783          	lwu	a5,-52(s0)
    112c:	07bd                	addi	a5,a5,15
    112e:	8391                	srli	a5,a5,0x4
    1130:	2781                	sext.w	a5,a5
    1132:	2785                	addiw	a5,a5,1
    1134:	fcf42e23          	sw	a5,-36(s0)
    1138:	00001797          	auipc	a5,0x1
    113c:	f0078793          	addi	a5,a5,-256 # 2038 <freep>
    1140:	639c                	ld	a5,0(a5)
    1142:	fef43023          	sd	a5,-32(s0)
    1146:	fe043783          	ld	a5,-32(s0)
    114a:	ef95                	bnez	a5,1186 <malloc+0x6c>
    114c:	00001797          	auipc	a5,0x1
    1150:	edc78793          	addi	a5,a5,-292 # 2028 <base>
    1154:	fef43023          	sd	a5,-32(s0)
    1158:	00001797          	auipc	a5,0x1
    115c:	ee078793          	addi	a5,a5,-288 # 2038 <freep>
    1160:	fe043703          	ld	a4,-32(s0)
    1164:	e398                	sd	a4,0(a5)
    1166:	00001797          	auipc	a5,0x1
    116a:	ed278793          	addi	a5,a5,-302 # 2038 <freep>
    116e:	6398                	ld	a4,0(a5)
    1170:	00001797          	auipc	a5,0x1
    1174:	eb878793          	addi	a5,a5,-328 # 2028 <base>
    1178:	e398                	sd	a4,0(a5)
    117a:	00001797          	auipc	a5,0x1
    117e:	eae78793          	addi	a5,a5,-338 # 2028 <base>
    1182:	0007a423          	sw	zero,8(a5)
    1186:	fe043783          	ld	a5,-32(s0)
    118a:	639c                	ld	a5,0(a5)
    118c:	fef43423          	sd	a5,-24(s0)
    1190:	fe843783          	ld	a5,-24(s0)
    1194:	4798                	lw	a4,8(a5)
    1196:	fdc42783          	lw	a5,-36(s0)
    119a:	2781                	sext.w	a5,a5
    119c:	06f76763          	bltu	a4,a5,120a <malloc+0xf0>
    11a0:	fe843783          	ld	a5,-24(s0)
    11a4:	4798                	lw	a4,8(a5)
    11a6:	fdc42783          	lw	a5,-36(s0)
    11aa:	2781                	sext.w	a5,a5
    11ac:	00e79963          	bne	a5,a4,11be <malloc+0xa4>
    11b0:	fe843783          	ld	a5,-24(s0)
    11b4:	6398                	ld	a4,0(a5)
    11b6:	fe043783          	ld	a5,-32(s0)
    11ba:	e398                	sd	a4,0(a5)
    11bc:	a825                	j	11f4 <malloc+0xda>
    11be:	fe843783          	ld	a5,-24(s0)
    11c2:	479c                	lw	a5,8(a5)
    11c4:	fdc42703          	lw	a4,-36(s0)
    11c8:	9f99                	subw	a5,a5,a4
    11ca:	0007871b          	sext.w	a4,a5
    11ce:	fe843783          	ld	a5,-24(s0)
    11d2:	c798                	sw	a4,8(a5)
    11d4:	fe843783          	ld	a5,-24(s0)
    11d8:	479c                	lw	a5,8(a5)
    11da:	1782                	slli	a5,a5,0x20
    11dc:	9381                	srli	a5,a5,0x20
    11de:	0792                	slli	a5,a5,0x4
    11e0:	fe843703          	ld	a4,-24(s0)
    11e4:	97ba                	add	a5,a5,a4
    11e6:	fef43423          	sd	a5,-24(s0)
    11ea:	fe843783          	ld	a5,-24(s0)
    11ee:	fdc42703          	lw	a4,-36(s0)
    11f2:	c798                	sw	a4,8(a5)
    11f4:	00001797          	auipc	a5,0x1
    11f8:	e4478793          	addi	a5,a5,-444 # 2038 <freep>
    11fc:	fe043703          	ld	a4,-32(s0)
    1200:	e398                	sd	a4,0(a5)
    1202:	fe843783          	ld	a5,-24(s0)
    1206:	07c1                	addi	a5,a5,16
    1208:	a091                	j	124c <malloc+0x132>
    120a:	00001797          	auipc	a5,0x1
    120e:	e2e78793          	addi	a5,a5,-466 # 2038 <freep>
    1212:	639c                	ld	a5,0(a5)
    1214:	fe843703          	ld	a4,-24(s0)
    1218:	02f71063          	bne	a4,a5,1238 <malloc+0x11e>
    121c:	fdc42783          	lw	a5,-36(s0)
    1220:	853e                	mv	a0,a5
    1222:	00000097          	auipc	ra,0x0
    1226:	e78080e7          	jalr	-392(ra) # 109a <morecore>
    122a:	fea43423          	sd	a0,-24(s0)
    122e:	fe843783          	ld	a5,-24(s0)
    1232:	e399                	bnez	a5,1238 <malloc+0x11e>
    1234:	4781                	li	a5,0
    1236:	a819                	j	124c <malloc+0x132>
    1238:	fe843783          	ld	a5,-24(s0)
    123c:	fef43023          	sd	a5,-32(s0)
    1240:	fe843783          	ld	a5,-24(s0)
    1244:	639c                	ld	a5,0(a5)
    1246:	fef43423          	sd	a5,-24(s0)
    124a:	b799                	j	1190 <malloc+0x76>
    124c:	853e                	mv	a0,a5
    124e:	70e2                	ld	ra,56(sp)
    1250:	7442                	ld	s0,48(sp)
    1252:	6121                	addi	sp,sp,64
    1254:	8082                	ret
