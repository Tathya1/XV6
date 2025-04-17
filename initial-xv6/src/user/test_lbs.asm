
user/_test_lbs:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <print>:
       0:	1101                	addi	sp,sp,-32
       2:	ec06                	sd	ra,24(sp)
       4:	e822                	sd	s0,16(sp)
       6:	1000                	addi	s0,sp,32
       8:	fea43423          	sd	a0,-24(s0)
       c:	fe843503          	ld	a0,-24(s0)
      10:	00000097          	auipc	ra,0x0
      14:	5dc080e7          	jalr	1500(ra) # 5ec <strlen>
      18:	87aa                	mv	a5,a0
      1a:	2781                	sext.w	a5,a5
      1c:	2781                	sext.w	a5,a5
      1e:	863e                	mv	a2,a5
      20:	fe843583          	ld	a1,-24(s0)
      24:	4505                	li	a0,1
      26:	00001097          	auipc	ra,0x1
      2a:	9c8080e7          	jalr	-1592(ra) # 9ee <write>
      2e:	0001                	nop
      30:	60e2                	ld	ra,24(sp)
      32:	6442                	ld	s0,16(sp)
      34:	6105                	addi	sp,sp,32
      36:	8082                	ret

0000000000000038 <print_int>:
      38:	7139                	addi	sp,sp,-64
      3a:	fc06                	sd	ra,56(sp)
      3c:	f822                	sd	s0,48(sp)
      3e:	0080                	addi	s0,sp,64
      40:	87aa                	mv	a5,a0
      42:	fcf42623          	sw	a5,-52(s0)
      46:	fe042623          	sw	zero,-20(s0)
      4a:	fcc42783          	lw	a5,-52(s0)
      4e:	2781                	sext.w	a5,a5
      50:	efa9                	bnez	a5,aa <print_int+0x72>
      52:	fec42783          	lw	a5,-20(s0)
      56:	0017871b          	addiw	a4,a5,1
      5a:	fee42623          	sw	a4,-20(s0)
      5e:	17c1                	addi	a5,a5,-16
      60:	97a2                	add	a5,a5,s0
      62:	03000713          	li	a4,48
      66:	fee78423          	sb	a4,-24(a5)
      6a:	a0bd                	j	d8 <print_int+0xa0>
      6c:	fcc42783          	lw	a5,-52(s0)
      70:	873e                	mv	a4,a5
      72:	47a9                	li	a5,10
      74:	02f767bb          	remw	a5,a4,a5
      78:	2781                	sext.w	a5,a5
      7a:	0ff7f713          	zext.b	a4,a5
      7e:	fec42783          	lw	a5,-20(s0)
      82:	0017869b          	addiw	a3,a5,1
      86:	fed42623          	sw	a3,-20(s0)
      8a:	0307071b          	addiw	a4,a4,48
      8e:	0ff77713          	zext.b	a4,a4
      92:	17c1                	addi	a5,a5,-16
      94:	97a2                	add	a5,a5,s0
      96:	fee78423          	sb	a4,-24(a5)
      9a:	fcc42783          	lw	a5,-52(s0)
      9e:	873e                	mv	a4,a5
      a0:	47a9                	li	a5,10
      a2:	02f747bb          	divw	a5,a4,a5
      a6:	fcf42623          	sw	a5,-52(s0)
      aa:	fcc42783          	lw	a5,-52(s0)
      ae:	2781                	sext.w	a5,a5
      b0:	faf04ee3          	bgtz	a5,6c <print_int+0x34>
      b4:	a015                	j	d8 <print_int+0xa0>
      b6:	fec42783          	lw	a5,-20(s0)
      ba:	37fd                	addiw	a5,a5,-1
      bc:	fef42623          	sw	a5,-20(s0)
      c0:	fd840713          	addi	a4,s0,-40
      c4:	fec42783          	lw	a5,-20(s0)
      c8:	97ba                	add	a5,a5,a4
      ca:	4605                	li	a2,1
      cc:	85be                	mv	a1,a5
      ce:	4505                	li	a0,1
      d0:	00001097          	auipc	ra,0x1
      d4:	91e080e7          	jalr	-1762(ra) # 9ee <write>
      d8:	fec42783          	lw	a5,-20(s0)
      dc:	2781                	sext.w	a5,a5
      de:	fcf04ce3          	bgtz	a5,b6 <print_int+0x7e>
      e2:	0001                	nop
      e4:	0001                	nop
      e6:	70e2                	ld	ra,56(sp)
      e8:	7442                	ld	s0,48(sp)
      ea:	6121                	addi	sp,sp,64
      ec:	8082                	ret

00000000000000ee <main>:
      ee:	7159                	addi	sp,sp,-112
      f0:	f486                	sd	ra,104(sp)
      f2:	f0a2                	sd	s0,96(sp)
      f4:	1880                	addi	s0,sp,112
      f6:	87aa                	mv	a5,a0
      f8:	f8b43823          	sd	a1,-112(s0)
      fc:	f8f42e23          	sw	a5,-100(s0)
     100:	f9c42783          	lw	a5,-100(s0)
     104:	0007871b          	sext.w	a4,a5
     108:	4795                	li	a5,5
     10a:	00f70f63          	beq	a4,a5,128 <main+0x3a>
     10e:	00001517          	auipc	a0,0x1
     112:	14250513          	addi	a0,a0,322 # 1250 <malloc+0x140>
     116:	00000097          	auipc	ra,0x0
     11a:	eea080e7          	jalr	-278(ra) # 0 <print>
     11e:	4505                	li	a0,1
     120:	00001097          	auipc	ra,0x1
     124:	8ae080e7          	jalr	-1874(ra) # 9ce <exit>
     128:	f9043783          	ld	a5,-112(s0)
     12c:	07a1                	addi	a5,a5,8
     12e:	639c                	ld	a5,0(a5)
     130:	853e                	mv	a0,a5
     132:	00000097          	auipc	ra,0x0
     136:	6a2080e7          	jalr	1698(ra) # 7d4 <atoi>
     13a:	87aa                	mv	a5,a0
     13c:	fcf42c23          	sw	a5,-40(s0)
     140:	f9043783          	ld	a5,-112(s0)
     144:	07c1                	addi	a5,a5,16
     146:	639c                	ld	a5,0(a5)
     148:	853e                	mv	a0,a5
     14a:	00000097          	auipc	ra,0x0
     14e:	68a080e7          	jalr	1674(ra) # 7d4 <atoi>
     152:	87aa                	mv	a5,a0
     154:	fcf42a23          	sw	a5,-44(s0)
     158:	f9043783          	ld	a5,-112(s0)
     15c:	07e1                	addi	a5,a5,24
     15e:	639c                	ld	a5,0(a5)
     160:	853e                	mv	a0,a5
     162:	00000097          	auipc	ra,0x0
     166:	672080e7          	jalr	1650(ra) # 7d4 <atoi>
     16a:	87aa                	mv	a5,a0
     16c:	fcf42823          	sw	a5,-48(s0)
     170:	f9043783          	ld	a5,-112(s0)
     174:	02078793          	addi	a5,a5,32
     178:	639c                	ld	a5,0(a5)
     17a:	853e                	mv	a0,a5
     17c:	00000097          	auipc	ra,0x0
     180:	658080e7          	jalr	1624(ra) # 7d4 <atoi>
     184:	87aa                	mv	a5,a0
     186:	fcf42623          	sw	a5,-52(s0)
     18a:	fe042623          	sw	zero,-20(s0)
     18e:	fe042423          	sw	zero,-24(s0)
     192:	fe042223          	sw	zero,-28(s0)
     196:	a44d                	j	438 <main+0x34a>
     198:	00001097          	auipc	ra,0x1
     19c:	82e080e7          	jalr	-2002(ra) # 9c6 <fork>
     1a0:	87aa                	mv	a5,a0
     1a2:	fcf42423          	sw	a5,-56(s0)
     1a6:	fc842783          	lw	a5,-56(s0)
     1aa:	2781                	sext.w	a5,a5
     1ac:	eff9                	bnez	a5,28a <main+0x19c>
     1ae:	fd442783          	lw	a5,-44(s0)
     1b2:	853e                	mv	a0,a5
     1b4:	00001097          	auipc	ra,0x1
     1b8:	8da080e7          	jalr	-1830(ra) # a8e <settickets>
     1bc:	87aa                	mv	a5,a0
     1be:	0007df63          	bgez	a5,1dc <main+0xee>
     1c2:	00001517          	auipc	a0,0x1
     1c6:	0de50513          	addi	a0,a0,222 # 12a0 <malloc+0x190>
     1ca:	00000097          	auipc	ra,0x0
     1ce:	e36080e7          	jalr	-458(ra) # 0 <print>
     1d2:	4505                	li	a0,1
     1d4:	00000097          	auipc	ra,0x0
     1d8:	7fa080e7          	jalr	2042(ra) # 9ce <exit>
     1dc:	00001097          	auipc	ra,0x1
     1e0:	88a080e7          	jalr	-1910(ra) # a66 <uptime>
     1e4:	87aa                	mv	a5,a0
     1e6:	faf42c23          	sw	a5,-72(s0)
     1ea:	fe042023          	sw	zero,-32(s0)
     1ee:	a891                	j	242 <main+0x154>
     1f0:	fb442783          	lw	a5,-76(s0)
     1f4:	873e                	mv	a4,a5
     1f6:	47a9                	li	a5,10
     1f8:	02f767bb          	remw	a5,a4,a5
     1fc:	2781                	sext.w	a5,a5
     1fe:	e385                	bnez	a5,21e <main+0x130>
     200:	4605                	li	a2,1
     202:	00001597          	auipc	a1,0x1
     206:	0be58593          	addi	a1,a1,190 # 12c0 <malloc+0x1b0>
     20a:	4505                	li	a0,1
     20c:	00000097          	auipc	ra,0x0
     210:	7e2080e7          	jalr	2018(ra) # 9ee <write>
     214:	fe042783          	lw	a5,-32(s0)
     218:	2785                	addiw	a5,a5,1
     21a:	fef42023          	sw	a5,-32(s0)
     21e:	fa042423          	sw	zero,-88(s0)
     222:	a801                	j	232 <main+0x144>
     224:	fa842783          	lw	a5,-88(s0)
     228:	2781                	sext.w	a5,a5
     22a:	2785                	addiw	a5,a5,1
     22c:	2781                	sext.w	a5,a5
     22e:	faf42423          	sw	a5,-88(s0)
     232:	fa842783          	lw	a5,-88(s0)
     236:	2781                	sext.w	a5,a5
     238:	873e                	mv	a4,a5
     23a:	3e700793          	li	a5,999
     23e:	fee7d3e3          	bge	a5,a4,224 <main+0x136>
     242:	00001097          	auipc	ra,0x1
     246:	824080e7          	jalr	-2012(ra) # a66 <uptime>
     24a:	87aa                	mv	a5,a0
     24c:	faf42a23          	sw	a5,-76(s0)
     250:	fb442783          	lw	a5,-76(s0)
     254:	873e                	mv	a4,a5
     256:	fb842783          	lw	a5,-72(s0)
     25a:	40f707bb          	subw	a5,a4,a5
     25e:	0007869b          	sext.w	a3,a5
     262:	fd842783          	lw	a5,-40(s0)
     266:	873e                	mv	a4,a5
     268:	87ba                	mv	a5,a4
     26a:	0027979b          	slliw	a5,a5,0x2
     26e:	9fb9                	addw	a5,a5,a4
     270:	0017979b          	slliw	a5,a5,0x1
     274:	2781                	sext.w	a5,a5
     276:	8736                	mv	a4,a3
     278:	f6f74ce3          	blt	a4,a5,1f0 <main+0x102>
     27c:	fe042783          	lw	a5,-32(s0)
     280:	853e                	mv	a0,a5
     282:	00000097          	auipc	ra,0x0
     286:	74c080e7          	jalr	1868(ra) # 9ce <exit>
     28a:	fc842783          	lw	a5,-56(s0)
     28e:	2781                	sext.w	a5,a5
     290:	0007df63          	bgez	a5,2ae <main+0x1c0>
     294:	00001517          	auipc	a0,0x1
     298:	03450513          	addi	a0,a0,52 # 12c8 <malloc+0x1b8>
     29c:	00000097          	auipc	ra,0x0
     2a0:	d64080e7          	jalr	-668(ra) # 0 <print>
     2a4:	4505                	li	a0,1
     2a6:	00000097          	auipc	ra,0x0
     2aa:	728080e7          	jalr	1832(ra) # 9ce <exit>
     2ae:	00000097          	auipc	ra,0x0
     2b2:	718080e7          	jalr	1816(ra) # 9c6 <fork>
     2b6:	87aa                	mv	a5,a0
     2b8:	fcf42223          	sw	a5,-60(s0)
     2bc:	fc442783          	lw	a5,-60(s0)
     2c0:	2781                	sext.w	a5,a5
     2c2:	eff9                	bnez	a5,3a0 <main+0x2b2>
     2c4:	fd042783          	lw	a5,-48(s0)
     2c8:	853e                	mv	a0,a5
     2ca:	00000097          	auipc	ra,0x0
     2ce:	7c4080e7          	jalr	1988(ra) # a8e <settickets>
     2d2:	87aa                	mv	a5,a0
     2d4:	0007df63          	bgez	a5,2f2 <main+0x204>
     2d8:	00001517          	auipc	a0,0x1
     2dc:	01050513          	addi	a0,a0,16 # 12e8 <malloc+0x1d8>
     2e0:	00000097          	auipc	ra,0x0
     2e4:	d20080e7          	jalr	-736(ra) # 0 <print>
     2e8:	4505                	li	a0,1
     2ea:	00000097          	auipc	ra,0x0
     2ee:	6e4080e7          	jalr	1764(ra) # 9ce <exit>
     2f2:	00000097          	auipc	ra,0x0
     2f6:	774080e7          	jalr	1908(ra) # a66 <uptime>
     2fa:	87aa                	mv	a5,a0
     2fc:	fcf42023          	sw	a5,-64(s0)
     300:	fc042e23          	sw	zero,-36(s0)
     304:	a891                	j	358 <main+0x26a>
     306:	fbc42783          	lw	a5,-68(s0)
     30a:	873e                	mv	a4,a5
     30c:	47a9                	li	a5,10
     30e:	02f767bb          	remw	a5,a4,a5
     312:	2781                	sext.w	a5,a5
     314:	e385                	bnez	a5,334 <main+0x246>
     316:	4605                	li	a2,1
     318:	00001597          	auipc	a1,0x1
     31c:	ff058593          	addi	a1,a1,-16 # 1308 <malloc+0x1f8>
     320:	4505                	li	a0,1
     322:	00000097          	auipc	ra,0x0
     326:	6cc080e7          	jalr	1740(ra) # 9ee <write>
     32a:	fdc42783          	lw	a5,-36(s0)
     32e:	2785                	addiw	a5,a5,1
     330:	fcf42e23          	sw	a5,-36(s0)
     334:	fa042223          	sw	zero,-92(s0)
     338:	a801                	j	348 <main+0x25a>
     33a:	fa442783          	lw	a5,-92(s0)
     33e:	2781                	sext.w	a5,a5
     340:	2785                	addiw	a5,a5,1
     342:	2781                	sext.w	a5,a5
     344:	faf42223          	sw	a5,-92(s0)
     348:	fa442783          	lw	a5,-92(s0)
     34c:	2781                	sext.w	a5,a5
     34e:	873e                	mv	a4,a5
     350:	3e700793          	li	a5,999
     354:	fee7d3e3          	bge	a5,a4,33a <main+0x24c>
     358:	00000097          	auipc	ra,0x0
     35c:	70e080e7          	jalr	1806(ra) # a66 <uptime>
     360:	87aa                	mv	a5,a0
     362:	faf42e23          	sw	a5,-68(s0)
     366:	fbc42783          	lw	a5,-68(s0)
     36a:	873e                	mv	a4,a5
     36c:	fc042783          	lw	a5,-64(s0)
     370:	40f707bb          	subw	a5,a4,a5
     374:	0007869b          	sext.w	a3,a5
     378:	fd842783          	lw	a5,-40(s0)
     37c:	873e                	mv	a4,a5
     37e:	87ba                	mv	a5,a4
     380:	0027979b          	slliw	a5,a5,0x2
     384:	9fb9                	addw	a5,a5,a4
     386:	0017979b          	slliw	a5,a5,0x1
     38a:	2781                	sext.w	a5,a5
     38c:	8736                	mv	a4,a3
     38e:	f6f74ce3          	blt	a4,a5,306 <main+0x218>
     392:	fdc42783          	lw	a5,-36(s0)
     396:	853e                	mv	a0,a5
     398:	00000097          	auipc	ra,0x0
     39c:	636080e7          	jalr	1590(ra) # 9ce <exit>
     3a0:	fc442783          	lw	a5,-60(s0)
     3a4:	2781                	sext.w	a5,a5
     3a6:	0007df63          	bgez	a5,3c4 <main+0x2d6>
     3aa:	00001517          	auipc	a0,0x1
     3ae:	f6650513          	addi	a0,a0,-154 # 1310 <malloc+0x200>
     3b2:	00000097          	auipc	ra,0x0
     3b6:	c4e080e7          	jalr	-946(ra) # 0 <print>
     3ba:	4505                	li	a0,1
     3bc:	00000097          	auipc	ra,0x0
     3c0:	612080e7          	jalr	1554(ra) # 9ce <exit>
     3c4:	fb040793          	addi	a5,s0,-80
     3c8:	853e                	mv	a0,a5
     3ca:	00000097          	auipc	ra,0x0
     3ce:	60c080e7          	jalr	1548(ra) # 9d6 <wait>
     3d2:	fac40793          	addi	a5,s0,-84
     3d6:	853e                	mv	a0,a5
     3d8:	00000097          	auipc	ra,0x0
     3dc:	5fe080e7          	jalr	1534(ra) # 9d6 <wait>
     3e0:	fb042783          	lw	a5,-80(s0)
     3e4:	fec42703          	lw	a4,-20(s0)
     3e8:	9fb9                	addw	a5,a5,a4
     3ea:	fef42623          	sw	a5,-20(s0)
     3ee:	fac42783          	lw	a5,-84(s0)
     3f2:	fe842703          	lw	a4,-24(s0)
     3f6:	9fb9                	addw	a5,a5,a4
     3f8:	fef42423          	sw	a5,-24(s0)
     3fc:	00001517          	auipc	a0,0x1
     400:	f3450513          	addi	a0,a0,-204 # 1330 <malloc+0x220>
     404:	00000097          	auipc	ra,0x0
     408:	bfc080e7          	jalr	-1028(ra) # 0 <print>
     40c:	fe442783          	lw	a5,-28(s0)
     410:	2785                	addiw	a5,a5,1
     412:	2781                	sext.w	a5,a5
     414:	853e                	mv	a0,a5
     416:	00000097          	auipc	ra,0x0
     41a:	c22080e7          	jalr	-990(ra) # 38 <print_int>
     41e:	00001517          	auipc	a0,0x1
     422:	f2250513          	addi	a0,a0,-222 # 1340 <malloc+0x230>
     426:	00000097          	auipc	ra,0x0
     42a:	bda080e7          	jalr	-1062(ra) # 0 <print>
     42e:	fe442783          	lw	a5,-28(s0)
     432:	2785                	addiw	a5,a5,1
     434:	fef42223          	sw	a5,-28(s0)
     438:	fe442783          	lw	a5,-28(s0)
     43c:	873e                	mv	a4,a5
     43e:	fcc42783          	lw	a5,-52(s0)
     442:	2701                	sext.w	a4,a4
     444:	2781                	sext.w	a5,a5
     446:	d4f749e3          	blt	a4,a5,198 <main+0xaa>
     44a:	00001517          	auipc	a0,0x1
     44e:	f0650513          	addi	a0,a0,-250 # 1350 <malloc+0x240>
     452:	00000097          	auipc	ra,0x0
     456:	bae080e7          	jalr	-1106(ra) # 0 <print>
     45a:	fcc42783          	lw	a5,-52(s0)
     45e:	853e                	mv	a0,a5
     460:	00000097          	auipc	ra,0x0
     464:	bd8080e7          	jalr	-1064(ra) # 38 <print_int>
     468:	00001517          	auipc	a0,0x1
     46c:	f0050513          	addi	a0,a0,-256 # 1368 <malloc+0x258>
     470:	00000097          	auipc	ra,0x0
     474:	b90080e7          	jalr	-1136(ra) # 0 <print>
     478:	00001517          	auipc	a0,0x1
     47c:	f0050513          	addi	a0,a0,-256 # 1378 <malloc+0x268>
     480:	00000097          	auipc	ra,0x0
     484:	b80080e7          	jalr	-1152(ra) # 0 <print>
     488:	fd442783          	lw	a5,-44(s0)
     48c:	853e                	mv	a0,a5
     48e:	00000097          	auipc	ra,0x0
     492:	baa080e7          	jalr	-1110(ra) # 38 <print_int>
     496:	00001517          	auipc	a0,0x1
     49a:	ef250513          	addi	a0,a0,-270 # 1388 <malloc+0x278>
     49e:	00000097          	auipc	ra,0x0
     4a2:	b62080e7          	jalr	-1182(ra) # 0 <print>
     4a6:	fec42783          	lw	a5,-20(s0)
     4aa:	873e                	mv	a4,a5
     4ac:	fcc42783          	lw	a5,-52(s0)
     4b0:	02f747bb          	divw	a5,a4,a5
     4b4:	2781                	sext.w	a5,a5
     4b6:	853e                	mv	a0,a5
     4b8:	00000097          	auipc	ra,0x0
     4bc:	b80080e7          	jalr	-1152(ra) # 38 <print_int>
     4c0:	00001517          	auipc	a0,0x1
     4c4:	ee850513          	addi	a0,a0,-280 # 13a8 <malloc+0x298>
     4c8:	00000097          	auipc	ra,0x0
     4cc:	b38080e7          	jalr	-1224(ra) # 0 <print>
     4d0:	fd042783          	lw	a5,-48(s0)
     4d4:	853e                	mv	a0,a5
     4d6:	00000097          	auipc	ra,0x0
     4da:	b62080e7          	jalr	-1182(ra) # 38 <print_int>
     4de:	00001517          	auipc	a0,0x1
     4e2:	eaa50513          	addi	a0,a0,-342 # 1388 <malloc+0x278>
     4e6:	00000097          	auipc	ra,0x0
     4ea:	b1a080e7          	jalr	-1254(ra) # 0 <print>
     4ee:	fe842783          	lw	a5,-24(s0)
     4f2:	873e                	mv	a4,a5
     4f4:	fcc42783          	lw	a5,-52(s0)
     4f8:	02f747bb          	divw	a5,a4,a5
     4fc:	2781                	sext.w	a5,a5
     4fe:	853e                	mv	a0,a5
     500:	00000097          	auipc	ra,0x0
     504:	b38080e7          	jalr	-1224(ra) # 38 <print_int>
     508:	00001517          	auipc	a0,0x1
     50c:	eb050513          	addi	a0,a0,-336 # 13b8 <malloc+0x2a8>
     510:	00000097          	auipc	ra,0x0
     514:	af0080e7          	jalr	-1296(ra) # 0 <print>
     518:	4501                	li	a0,0
     51a:	00000097          	auipc	ra,0x0
     51e:	4b4080e7          	jalr	1204(ra) # 9ce <exit>

0000000000000522 <_main>:
     522:	1141                	addi	sp,sp,-16
     524:	e406                	sd	ra,8(sp)
     526:	e022                	sd	s0,0(sp)
     528:	0800                	addi	s0,sp,16
     52a:	00000097          	auipc	ra,0x0
     52e:	bc4080e7          	jalr	-1084(ra) # ee <main>
     532:	4501                	li	a0,0
     534:	00000097          	auipc	ra,0x0
     538:	49a080e7          	jalr	1178(ra) # 9ce <exit>

000000000000053c <strcpy>:
     53c:	7179                	addi	sp,sp,-48
     53e:	f422                	sd	s0,40(sp)
     540:	1800                	addi	s0,sp,48
     542:	fca43c23          	sd	a0,-40(s0)
     546:	fcb43823          	sd	a1,-48(s0)
     54a:	fd843783          	ld	a5,-40(s0)
     54e:	fef43423          	sd	a5,-24(s0)
     552:	0001                	nop
     554:	fd043703          	ld	a4,-48(s0)
     558:	00170793          	addi	a5,a4,1
     55c:	fcf43823          	sd	a5,-48(s0)
     560:	fd843783          	ld	a5,-40(s0)
     564:	00178693          	addi	a3,a5,1
     568:	fcd43c23          	sd	a3,-40(s0)
     56c:	00074703          	lbu	a4,0(a4)
     570:	00e78023          	sb	a4,0(a5)
     574:	0007c783          	lbu	a5,0(a5)
     578:	fff1                	bnez	a5,554 <strcpy+0x18>
     57a:	fe843783          	ld	a5,-24(s0)
     57e:	853e                	mv	a0,a5
     580:	7422                	ld	s0,40(sp)
     582:	6145                	addi	sp,sp,48
     584:	8082                	ret

0000000000000586 <strcmp>:
     586:	1101                	addi	sp,sp,-32
     588:	ec22                	sd	s0,24(sp)
     58a:	1000                	addi	s0,sp,32
     58c:	fea43423          	sd	a0,-24(s0)
     590:	feb43023          	sd	a1,-32(s0)
     594:	a819                	j	5aa <strcmp+0x24>
     596:	fe843783          	ld	a5,-24(s0)
     59a:	0785                	addi	a5,a5,1
     59c:	fef43423          	sd	a5,-24(s0)
     5a0:	fe043783          	ld	a5,-32(s0)
     5a4:	0785                	addi	a5,a5,1
     5a6:	fef43023          	sd	a5,-32(s0)
     5aa:	fe843783          	ld	a5,-24(s0)
     5ae:	0007c783          	lbu	a5,0(a5)
     5b2:	cb99                	beqz	a5,5c8 <strcmp+0x42>
     5b4:	fe843783          	ld	a5,-24(s0)
     5b8:	0007c703          	lbu	a4,0(a5)
     5bc:	fe043783          	ld	a5,-32(s0)
     5c0:	0007c783          	lbu	a5,0(a5)
     5c4:	fcf709e3          	beq	a4,a5,596 <strcmp+0x10>
     5c8:	fe843783          	ld	a5,-24(s0)
     5cc:	0007c783          	lbu	a5,0(a5)
     5d0:	0007871b          	sext.w	a4,a5
     5d4:	fe043783          	ld	a5,-32(s0)
     5d8:	0007c783          	lbu	a5,0(a5)
     5dc:	2781                	sext.w	a5,a5
     5de:	40f707bb          	subw	a5,a4,a5
     5e2:	2781                	sext.w	a5,a5
     5e4:	853e                	mv	a0,a5
     5e6:	6462                	ld	s0,24(sp)
     5e8:	6105                	addi	sp,sp,32
     5ea:	8082                	ret

00000000000005ec <strlen>:
     5ec:	7179                	addi	sp,sp,-48
     5ee:	f422                	sd	s0,40(sp)
     5f0:	1800                	addi	s0,sp,48
     5f2:	fca43c23          	sd	a0,-40(s0)
     5f6:	fe042623          	sw	zero,-20(s0)
     5fa:	a031                	j	606 <strlen+0x1a>
     5fc:	fec42783          	lw	a5,-20(s0)
     600:	2785                	addiw	a5,a5,1
     602:	fef42623          	sw	a5,-20(s0)
     606:	fec42783          	lw	a5,-20(s0)
     60a:	fd843703          	ld	a4,-40(s0)
     60e:	97ba                	add	a5,a5,a4
     610:	0007c783          	lbu	a5,0(a5)
     614:	f7e5                	bnez	a5,5fc <strlen+0x10>
     616:	fec42783          	lw	a5,-20(s0)
     61a:	853e                	mv	a0,a5
     61c:	7422                	ld	s0,40(sp)
     61e:	6145                	addi	sp,sp,48
     620:	8082                	ret

0000000000000622 <memset>:
     622:	7179                	addi	sp,sp,-48
     624:	f422                	sd	s0,40(sp)
     626:	1800                	addi	s0,sp,48
     628:	fca43c23          	sd	a0,-40(s0)
     62c:	87ae                	mv	a5,a1
     62e:	8732                	mv	a4,a2
     630:	fcf42a23          	sw	a5,-44(s0)
     634:	87ba                	mv	a5,a4
     636:	fcf42823          	sw	a5,-48(s0)
     63a:	fd843783          	ld	a5,-40(s0)
     63e:	fef43023          	sd	a5,-32(s0)
     642:	fe042623          	sw	zero,-20(s0)
     646:	a00d                	j	668 <memset+0x46>
     648:	fec42783          	lw	a5,-20(s0)
     64c:	fe043703          	ld	a4,-32(s0)
     650:	97ba                	add	a5,a5,a4
     652:	fd442703          	lw	a4,-44(s0)
     656:	0ff77713          	zext.b	a4,a4
     65a:	00e78023          	sb	a4,0(a5)
     65e:	fec42783          	lw	a5,-20(s0)
     662:	2785                	addiw	a5,a5,1
     664:	fef42623          	sw	a5,-20(s0)
     668:	fec42703          	lw	a4,-20(s0)
     66c:	fd042783          	lw	a5,-48(s0)
     670:	2781                	sext.w	a5,a5
     672:	fcf76be3          	bltu	a4,a5,648 <memset+0x26>
     676:	fd843783          	ld	a5,-40(s0)
     67a:	853e                	mv	a0,a5
     67c:	7422                	ld	s0,40(sp)
     67e:	6145                	addi	sp,sp,48
     680:	8082                	ret

0000000000000682 <strchr>:
     682:	1101                	addi	sp,sp,-32
     684:	ec22                	sd	s0,24(sp)
     686:	1000                	addi	s0,sp,32
     688:	fea43423          	sd	a0,-24(s0)
     68c:	87ae                	mv	a5,a1
     68e:	fef403a3          	sb	a5,-25(s0)
     692:	a01d                	j	6b8 <strchr+0x36>
     694:	fe843783          	ld	a5,-24(s0)
     698:	0007c703          	lbu	a4,0(a5)
     69c:	fe744783          	lbu	a5,-25(s0)
     6a0:	0ff7f793          	zext.b	a5,a5
     6a4:	00e79563          	bne	a5,a4,6ae <strchr+0x2c>
     6a8:	fe843783          	ld	a5,-24(s0)
     6ac:	a821                	j	6c4 <strchr+0x42>
     6ae:	fe843783          	ld	a5,-24(s0)
     6b2:	0785                	addi	a5,a5,1
     6b4:	fef43423          	sd	a5,-24(s0)
     6b8:	fe843783          	ld	a5,-24(s0)
     6bc:	0007c783          	lbu	a5,0(a5)
     6c0:	fbf1                	bnez	a5,694 <strchr+0x12>
     6c2:	4781                	li	a5,0
     6c4:	853e                	mv	a0,a5
     6c6:	6462                	ld	s0,24(sp)
     6c8:	6105                	addi	sp,sp,32
     6ca:	8082                	ret

00000000000006cc <gets>:
     6cc:	7179                	addi	sp,sp,-48
     6ce:	f406                	sd	ra,40(sp)
     6d0:	f022                	sd	s0,32(sp)
     6d2:	1800                	addi	s0,sp,48
     6d4:	fca43c23          	sd	a0,-40(s0)
     6d8:	87ae                	mv	a5,a1
     6da:	fcf42a23          	sw	a5,-44(s0)
     6de:	fe042623          	sw	zero,-20(s0)
     6e2:	a8a1                	j	73a <gets+0x6e>
     6e4:	fe740793          	addi	a5,s0,-25
     6e8:	4605                	li	a2,1
     6ea:	85be                	mv	a1,a5
     6ec:	4501                	li	a0,0
     6ee:	00000097          	auipc	ra,0x0
     6f2:	2f8080e7          	jalr	760(ra) # 9e6 <read>
     6f6:	87aa                	mv	a5,a0
     6f8:	fef42423          	sw	a5,-24(s0)
     6fc:	fe842783          	lw	a5,-24(s0)
     700:	2781                	sext.w	a5,a5
     702:	04f05763          	blez	a5,750 <gets+0x84>
     706:	fec42783          	lw	a5,-20(s0)
     70a:	0017871b          	addiw	a4,a5,1
     70e:	fee42623          	sw	a4,-20(s0)
     712:	873e                	mv	a4,a5
     714:	fd843783          	ld	a5,-40(s0)
     718:	97ba                	add	a5,a5,a4
     71a:	fe744703          	lbu	a4,-25(s0)
     71e:	00e78023          	sb	a4,0(a5)
     722:	fe744783          	lbu	a5,-25(s0)
     726:	873e                	mv	a4,a5
     728:	47a9                	li	a5,10
     72a:	02f70463          	beq	a4,a5,752 <gets+0x86>
     72e:	fe744783          	lbu	a5,-25(s0)
     732:	873e                	mv	a4,a5
     734:	47b5                	li	a5,13
     736:	00f70e63          	beq	a4,a5,752 <gets+0x86>
     73a:	fec42783          	lw	a5,-20(s0)
     73e:	2785                	addiw	a5,a5,1
     740:	0007871b          	sext.w	a4,a5
     744:	fd442783          	lw	a5,-44(s0)
     748:	2781                	sext.w	a5,a5
     74a:	f8f74de3          	blt	a4,a5,6e4 <gets+0x18>
     74e:	a011                	j	752 <gets+0x86>
     750:	0001                	nop
     752:	fec42783          	lw	a5,-20(s0)
     756:	fd843703          	ld	a4,-40(s0)
     75a:	97ba                	add	a5,a5,a4
     75c:	00078023          	sb	zero,0(a5)
     760:	fd843783          	ld	a5,-40(s0)
     764:	853e                	mv	a0,a5
     766:	70a2                	ld	ra,40(sp)
     768:	7402                	ld	s0,32(sp)
     76a:	6145                	addi	sp,sp,48
     76c:	8082                	ret

000000000000076e <stat>:
     76e:	7179                	addi	sp,sp,-48
     770:	f406                	sd	ra,40(sp)
     772:	f022                	sd	s0,32(sp)
     774:	1800                	addi	s0,sp,48
     776:	fca43c23          	sd	a0,-40(s0)
     77a:	fcb43823          	sd	a1,-48(s0)
     77e:	4581                	li	a1,0
     780:	fd843503          	ld	a0,-40(s0)
     784:	00000097          	auipc	ra,0x0
     788:	28a080e7          	jalr	650(ra) # a0e <open>
     78c:	87aa                	mv	a5,a0
     78e:	fef42623          	sw	a5,-20(s0)
     792:	fec42783          	lw	a5,-20(s0)
     796:	2781                	sext.w	a5,a5
     798:	0007d463          	bgez	a5,7a0 <stat+0x32>
     79c:	57fd                	li	a5,-1
     79e:	a035                	j	7ca <stat+0x5c>
     7a0:	fec42783          	lw	a5,-20(s0)
     7a4:	fd043583          	ld	a1,-48(s0)
     7a8:	853e                	mv	a0,a5
     7aa:	00000097          	auipc	ra,0x0
     7ae:	27c080e7          	jalr	636(ra) # a26 <fstat>
     7b2:	87aa                	mv	a5,a0
     7b4:	fef42423          	sw	a5,-24(s0)
     7b8:	fec42783          	lw	a5,-20(s0)
     7bc:	853e                	mv	a0,a5
     7be:	00000097          	auipc	ra,0x0
     7c2:	238080e7          	jalr	568(ra) # 9f6 <close>
     7c6:	fe842783          	lw	a5,-24(s0)
     7ca:	853e                	mv	a0,a5
     7cc:	70a2                	ld	ra,40(sp)
     7ce:	7402                	ld	s0,32(sp)
     7d0:	6145                	addi	sp,sp,48
     7d2:	8082                	ret

00000000000007d4 <atoi>:
     7d4:	7179                	addi	sp,sp,-48
     7d6:	f422                	sd	s0,40(sp)
     7d8:	1800                	addi	s0,sp,48
     7da:	fca43c23          	sd	a0,-40(s0)
     7de:	fe042623          	sw	zero,-20(s0)
     7e2:	a81d                	j	818 <atoi+0x44>
     7e4:	fec42783          	lw	a5,-20(s0)
     7e8:	873e                	mv	a4,a5
     7ea:	87ba                	mv	a5,a4
     7ec:	0027979b          	slliw	a5,a5,0x2
     7f0:	9fb9                	addw	a5,a5,a4
     7f2:	0017979b          	slliw	a5,a5,0x1
     7f6:	0007871b          	sext.w	a4,a5
     7fa:	fd843783          	ld	a5,-40(s0)
     7fe:	00178693          	addi	a3,a5,1
     802:	fcd43c23          	sd	a3,-40(s0)
     806:	0007c783          	lbu	a5,0(a5)
     80a:	2781                	sext.w	a5,a5
     80c:	9fb9                	addw	a5,a5,a4
     80e:	2781                	sext.w	a5,a5
     810:	fd07879b          	addiw	a5,a5,-48
     814:	fef42623          	sw	a5,-20(s0)
     818:	fd843783          	ld	a5,-40(s0)
     81c:	0007c783          	lbu	a5,0(a5)
     820:	873e                	mv	a4,a5
     822:	02f00793          	li	a5,47
     826:	00e7fb63          	bgeu	a5,a4,83c <atoi+0x68>
     82a:	fd843783          	ld	a5,-40(s0)
     82e:	0007c783          	lbu	a5,0(a5)
     832:	873e                	mv	a4,a5
     834:	03900793          	li	a5,57
     838:	fae7f6e3          	bgeu	a5,a4,7e4 <atoi+0x10>
     83c:	fec42783          	lw	a5,-20(s0)
     840:	853e                	mv	a0,a5
     842:	7422                	ld	s0,40(sp)
     844:	6145                	addi	sp,sp,48
     846:	8082                	ret

0000000000000848 <memmove>:
     848:	7139                	addi	sp,sp,-64
     84a:	fc22                	sd	s0,56(sp)
     84c:	0080                	addi	s0,sp,64
     84e:	fca43c23          	sd	a0,-40(s0)
     852:	fcb43823          	sd	a1,-48(s0)
     856:	87b2                	mv	a5,a2
     858:	fcf42623          	sw	a5,-52(s0)
     85c:	fd843783          	ld	a5,-40(s0)
     860:	fef43423          	sd	a5,-24(s0)
     864:	fd043783          	ld	a5,-48(s0)
     868:	fef43023          	sd	a5,-32(s0)
     86c:	fe043703          	ld	a4,-32(s0)
     870:	fe843783          	ld	a5,-24(s0)
     874:	02e7fc63          	bgeu	a5,a4,8ac <memmove+0x64>
     878:	a00d                	j	89a <memmove+0x52>
     87a:	fe043703          	ld	a4,-32(s0)
     87e:	00170793          	addi	a5,a4,1
     882:	fef43023          	sd	a5,-32(s0)
     886:	fe843783          	ld	a5,-24(s0)
     88a:	00178693          	addi	a3,a5,1
     88e:	fed43423          	sd	a3,-24(s0)
     892:	00074703          	lbu	a4,0(a4)
     896:	00e78023          	sb	a4,0(a5)
     89a:	fcc42783          	lw	a5,-52(s0)
     89e:	fff7871b          	addiw	a4,a5,-1
     8a2:	fce42623          	sw	a4,-52(s0)
     8a6:	fcf04ae3          	bgtz	a5,87a <memmove+0x32>
     8aa:	a891                	j	8fe <memmove+0xb6>
     8ac:	fcc42783          	lw	a5,-52(s0)
     8b0:	fe843703          	ld	a4,-24(s0)
     8b4:	97ba                	add	a5,a5,a4
     8b6:	fef43423          	sd	a5,-24(s0)
     8ba:	fcc42783          	lw	a5,-52(s0)
     8be:	fe043703          	ld	a4,-32(s0)
     8c2:	97ba                	add	a5,a5,a4
     8c4:	fef43023          	sd	a5,-32(s0)
     8c8:	a01d                	j	8ee <memmove+0xa6>
     8ca:	fe043783          	ld	a5,-32(s0)
     8ce:	17fd                	addi	a5,a5,-1
     8d0:	fef43023          	sd	a5,-32(s0)
     8d4:	fe843783          	ld	a5,-24(s0)
     8d8:	17fd                	addi	a5,a5,-1
     8da:	fef43423          	sd	a5,-24(s0)
     8de:	fe043783          	ld	a5,-32(s0)
     8e2:	0007c703          	lbu	a4,0(a5)
     8e6:	fe843783          	ld	a5,-24(s0)
     8ea:	00e78023          	sb	a4,0(a5)
     8ee:	fcc42783          	lw	a5,-52(s0)
     8f2:	fff7871b          	addiw	a4,a5,-1
     8f6:	fce42623          	sw	a4,-52(s0)
     8fa:	fcf048e3          	bgtz	a5,8ca <memmove+0x82>
     8fe:	fd843783          	ld	a5,-40(s0)
     902:	853e                	mv	a0,a5
     904:	7462                	ld	s0,56(sp)
     906:	6121                	addi	sp,sp,64
     908:	8082                	ret

000000000000090a <memcmp>:
     90a:	7139                	addi	sp,sp,-64
     90c:	fc22                	sd	s0,56(sp)
     90e:	0080                	addi	s0,sp,64
     910:	fca43c23          	sd	a0,-40(s0)
     914:	fcb43823          	sd	a1,-48(s0)
     918:	87b2                	mv	a5,a2
     91a:	fcf42623          	sw	a5,-52(s0)
     91e:	fd843783          	ld	a5,-40(s0)
     922:	fef43423          	sd	a5,-24(s0)
     926:	fd043783          	ld	a5,-48(s0)
     92a:	fef43023          	sd	a5,-32(s0)
     92e:	a0a1                	j	976 <memcmp+0x6c>
     930:	fe843783          	ld	a5,-24(s0)
     934:	0007c703          	lbu	a4,0(a5)
     938:	fe043783          	ld	a5,-32(s0)
     93c:	0007c783          	lbu	a5,0(a5)
     940:	02f70163          	beq	a4,a5,962 <memcmp+0x58>
     944:	fe843783          	ld	a5,-24(s0)
     948:	0007c783          	lbu	a5,0(a5)
     94c:	0007871b          	sext.w	a4,a5
     950:	fe043783          	ld	a5,-32(s0)
     954:	0007c783          	lbu	a5,0(a5)
     958:	2781                	sext.w	a5,a5
     95a:	40f707bb          	subw	a5,a4,a5
     95e:	2781                	sext.w	a5,a5
     960:	a01d                	j	986 <memcmp+0x7c>
     962:	fe843783          	ld	a5,-24(s0)
     966:	0785                	addi	a5,a5,1
     968:	fef43423          	sd	a5,-24(s0)
     96c:	fe043783          	ld	a5,-32(s0)
     970:	0785                	addi	a5,a5,1
     972:	fef43023          	sd	a5,-32(s0)
     976:	fcc42783          	lw	a5,-52(s0)
     97a:	fff7871b          	addiw	a4,a5,-1
     97e:	fce42623          	sw	a4,-52(s0)
     982:	f7dd                	bnez	a5,930 <memcmp+0x26>
     984:	4781                	li	a5,0
     986:	853e                	mv	a0,a5
     988:	7462                	ld	s0,56(sp)
     98a:	6121                	addi	sp,sp,64
     98c:	8082                	ret

000000000000098e <memcpy>:
     98e:	7179                	addi	sp,sp,-48
     990:	f406                	sd	ra,40(sp)
     992:	f022                	sd	s0,32(sp)
     994:	1800                	addi	s0,sp,48
     996:	fea43423          	sd	a0,-24(s0)
     99a:	feb43023          	sd	a1,-32(s0)
     99e:	87b2                	mv	a5,a2
     9a0:	fcf42e23          	sw	a5,-36(s0)
     9a4:	fdc42783          	lw	a5,-36(s0)
     9a8:	863e                	mv	a2,a5
     9aa:	fe043583          	ld	a1,-32(s0)
     9ae:	fe843503          	ld	a0,-24(s0)
     9b2:	00000097          	auipc	ra,0x0
     9b6:	e96080e7          	jalr	-362(ra) # 848 <memmove>
     9ba:	87aa                	mv	a5,a0
     9bc:	853e                	mv	a0,a5
     9be:	70a2                	ld	ra,40(sp)
     9c0:	7402                	ld	s0,32(sp)
     9c2:	6145                	addi	sp,sp,48
     9c4:	8082                	ret

00000000000009c6 <fork>:
     9c6:	4885                	li	a7,1
     9c8:	00000073          	ecall
     9cc:	8082                	ret

00000000000009ce <exit>:
     9ce:	4889                	li	a7,2
     9d0:	00000073          	ecall
     9d4:	8082                	ret

00000000000009d6 <wait>:
     9d6:	488d                	li	a7,3
     9d8:	00000073          	ecall
     9dc:	8082                	ret

00000000000009de <pipe>:
     9de:	4891                	li	a7,4
     9e0:	00000073          	ecall
     9e4:	8082                	ret

00000000000009e6 <read>:
     9e6:	4895                	li	a7,5
     9e8:	00000073          	ecall
     9ec:	8082                	ret

00000000000009ee <write>:
     9ee:	48c1                	li	a7,16
     9f0:	00000073          	ecall
     9f4:	8082                	ret

00000000000009f6 <close>:
     9f6:	48d5                	li	a7,21
     9f8:	00000073          	ecall
     9fc:	8082                	ret

00000000000009fe <kill>:
     9fe:	4899                	li	a7,6
     a00:	00000073          	ecall
     a04:	8082                	ret

0000000000000a06 <exec>:
     a06:	489d                	li	a7,7
     a08:	00000073          	ecall
     a0c:	8082                	ret

0000000000000a0e <open>:
     a0e:	48bd                	li	a7,15
     a10:	00000073          	ecall
     a14:	8082                	ret

0000000000000a16 <mknod>:
     a16:	48c5                	li	a7,17
     a18:	00000073          	ecall
     a1c:	8082                	ret

0000000000000a1e <unlink>:
     a1e:	48c9                	li	a7,18
     a20:	00000073          	ecall
     a24:	8082                	ret

0000000000000a26 <fstat>:
     a26:	48a1                	li	a7,8
     a28:	00000073          	ecall
     a2c:	8082                	ret

0000000000000a2e <link>:
     a2e:	48cd                	li	a7,19
     a30:	00000073          	ecall
     a34:	8082                	ret

0000000000000a36 <mkdir>:
     a36:	48d1                	li	a7,20
     a38:	00000073          	ecall
     a3c:	8082                	ret

0000000000000a3e <chdir>:
     a3e:	48a5                	li	a7,9
     a40:	00000073          	ecall
     a44:	8082                	ret

0000000000000a46 <dup>:
     a46:	48a9                	li	a7,10
     a48:	00000073          	ecall
     a4c:	8082                	ret

0000000000000a4e <getpid>:
     a4e:	48ad                	li	a7,11
     a50:	00000073          	ecall
     a54:	8082                	ret

0000000000000a56 <sbrk>:
     a56:	48b1                	li	a7,12
     a58:	00000073          	ecall
     a5c:	8082                	ret

0000000000000a5e <sleep>:
     a5e:	48b5                	li	a7,13
     a60:	00000073          	ecall
     a64:	8082                	ret

0000000000000a66 <uptime>:
     a66:	48b9                	li	a7,14
     a68:	00000073          	ecall
     a6c:	8082                	ret

0000000000000a6e <waitx>:
     a6e:	48d9                	li	a7,22
     a70:	00000073          	ecall
     a74:	8082                	ret

0000000000000a76 <getsyscount>:
     a76:	48dd                	li	a7,23
     a78:	00000073          	ecall
     a7c:	8082                	ret

0000000000000a7e <sigalarm>:
     a7e:	48e1                	li	a7,24
     a80:	00000073          	ecall
     a84:	8082                	ret

0000000000000a86 <sigreturn>:
     a86:	48e5                	li	a7,25
     a88:	00000073          	ecall
     a8c:	8082                	ret

0000000000000a8e <settickets>:
     a8e:	48e9                	li	a7,26
     a90:	00000073          	ecall
     a94:	8082                	ret

0000000000000a96 <putc>:
     a96:	1101                	addi	sp,sp,-32
     a98:	ec06                	sd	ra,24(sp)
     a9a:	e822                	sd	s0,16(sp)
     a9c:	1000                	addi	s0,sp,32
     a9e:	87aa                	mv	a5,a0
     aa0:	872e                	mv	a4,a1
     aa2:	fef42623          	sw	a5,-20(s0)
     aa6:	87ba                	mv	a5,a4
     aa8:	fef405a3          	sb	a5,-21(s0)
     aac:	feb40713          	addi	a4,s0,-21
     ab0:	fec42783          	lw	a5,-20(s0)
     ab4:	4605                	li	a2,1
     ab6:	85ba                	mv	a1,a4
     ab8:	853e                	mv	a0,a5
     aba:	00000097          	auipc	ra,0x0
     abe:	f34080e7          	jalr	-204(ra) # 9ee <write>
     ac2:	0001                	nop
     ac4:	60e2                	ld	ra,24(sp)
     ac6:	6442                	ld	s0,16(sp)
     ac8:	6105                	addi	sp,sp,32
     aca:	8082                	ret

0000000000000acc <printint>:
     acc:	7139                	addi	sp,sp,-64
     ace:	fc06                	sd	ra,56(sp)
     ad0:	f822                	sd	s0,48(sp)
     ad2:	0080                	addi	s0,sp,64
     ad4:	87aa                	mv	a5,a0
     ad6:	8736                	mv	a4,a3
     ad8:	fcf42623          	sw	a5,-52(s0)
     adc:	87ae                	mv	a5,a1
     ade:	fcf42423          	sw	a5,-56(s0)
     ae2:	87b2                	mv	a5,a2
     ae4:	fcf42223          	sw	a5,-60(s0)
     ae8:	87ba                	mv	a5,a4
     aea:	fcf42023          	sw	a5,-64(s0)
     aee:	fe042423          	sw	zero,-24(s0)
     af2:	fc042783          	lw	a5,-64(s0)
     af6:	2781                	sext.w	a5,a5
     af8:	c38d                	beqz	a5,b1a <printint+0x4e>
     afa:	fc842783          	lw	a5,-56(s0)
     afe:	2781                	sext.w	a5,a5
     b00:	0007dd63          	bgez	a5,b1a <printint+0x4e>
     b04:	4785                	li	a5,1
     b06:	fef42423          	sw	a5,-24(s0)
     b0a:	fc842783          	lw	a5,-56(s0)
     b0e:	40f007bb          	negw	a5,a5
     b12:	2781                	sext.w	a5,a5
     b14:	fef42223          	sw	a5,-28(s0)
     b18:	a029                	j	b22 <printint+0x56>
     b1a:	fc842783          	lw	a5,-56(s0)
     b1e:	fef42223          	sw	a5,-28(s0)
     b22:	fe042623          	sw	zero,-20(s0)
     b26:	fc442783          	lw	a5,-60(s0)
     b2a:	fe442703          	lw	a4,-28(s0)
     b2e:	02f777bb          	remuw	a5,a4,a5
     b32:	0007861b          	sext.w	a2,a5
     b36:	fec42783          	lw	a5,-20(s0)
     b3a:	0017871b          	addiw	a4,a5,1
     b3e:	fee42623          	sw	a4,-20(s0)
     b42:	00001697          	auipc	a3,0x1
     b46:	4be68693          	addi	a3,a3,1214 # 2000 <digits>
     b4a:	02061713          	slli	a4,a2,0x20
     b4e:	9301                	srli	a4,a4,0x20
     b50:	9736                	add	a4,a4,a3
     b52:	00074703          	lbu	a4,0(a4)
     b56:	17c1                	addi	a5,a5,-16
     b58:	97a2                	add	a5,a5,s0
     b5a:	fee78023          	sb	a4,-32(a5)
     b5e:	fc442783          	lw	a5,-60(s0)
     b62:	fe442703          	lw	a4,-28(s0)
     b66:	02f757bb          	divuw	a5,a4,a5
     b6a:	fef42223          	sw	a5,-28(s0)
     b6e:	fe442783          	lw	a5,-28(s0)
     b72:	2781                	sext.w	a5,a5
     b74:	fbcd                	bnez	a5,b26 <printint+0x5a>
     b76:	fe842783          	lw	a5,-24(s0)
     b7a:	2781                	sext.w	a5,a5
     b7c:	cf85                	beqz	a5,bb4 <printint+0xe8>
     b7e:	fec42783          	lw	a5,-20(s0)
     b82:	0017871b          	addiw	a4,a5,1
     b86:	fee42623          	sw	a4,-20(s0)
     b8a:	17c1                	addi	a5,a5,-16
     b8c:	97a2                	add	a5,a5,s0
     b8e:	02d00713          	li	a4,45
     b92:	fee78023          	sb	a4,-32(a5)
     b96:	a839                	j	bb4 <printint+0xe8>
     b98:	fec42783          	lw	a5,-20(s0)
     b9c:	17c1                	addi	a5,a5,-16
     b9e:	97a2                	add	a5,a5,s0
     ba0:	fe07c703          	lbu	a4,-32(a5)
     ba4:	fcc42783          	lw	a5,-52(s0)
     ba8:	85ba                	mv	a1,a4
     baa:	853e                	mv	a0,a5
     bac:	00000097          	auipc	ra,0x0
     bb0:	eea080e7          	jalr	-278(ra) # a96 <putc>
     bb4:	fec42783          	lw	a5,-20(s0)
     bb8:	37fd                	addiw	a5,a5,-1
     bba:	fef42623          	sw	a5,-20(s0)
     bbe:	fec42783          	lw	a5,-20(s0)
     bc2:	2781                	sext.w	a5,a5
     bc4:	fc07dae3          	bgez	a5,b98 <printint+0xcc>
     bc8:	0001                	nop
     bca:	0001                	nop
     bcc:	70e2                	ld	ra,56(sp)
     bce:	7442                	ld	s0,48(sp)
     bd0:	6121                	addi	sp,sp,64
     bd2:	8082                	ret

0000000000000bd4 <printptr>:
     bd4:	7179                	addi	sp,sp,-48
     bd6:	f406                	sd	ra,40(sp)
     bd8:	f022                	sd	s0,32(sp)
     bda:	1800                	addi	s0,sp,48
     bdc:	87aa                	mv	a5,a0
     bde:	fcb43823          	sd	a1,-48(s0)
     be2:	fcf42e23          	sw	a5,-36(s0)
     be6:	fdc42783          	lw	a5,-36(s0)
     bea:	03000593          	li	a1,48
     bee:	853e                	mv	a0,a5
     bf0:	00000097          	auipc	ra,0x0
     bf4:	ea6080e7          	jalr	-346(ra) # a96 <putc>
     bf8:	fdc42783          	lw	a5,-36(s0)
     bfc:	07800593          	li	a1,120
     c00:	853e                	mv	a0,a5
     c02:	00000097          	auipc	ra,0x0
     c06:	e94080e7          	jalr	-364(ra) # a96 <putc>
     c0a:	fe042623          	sw	zero,-20(s0)
     c0e:	a82d                	j	c48 <printptr+0x74>
     c10:	fd043783          	ld	a5,-48(s0)
     c14:	93f1                	srli	a5,a5,0x3c
     c16:	00001717          	auipc	a4,0x1
     c1a:	3ea70713          	addi	a4,a4,1002 # 2000 <digits>
     c1e:	97ba                	add	a5,a5,a4
     c20:	0007c703          	lbu	a4,0(a5)
     c24:	fdc42783          	lw	a5,-36(s0)
     c28:	85ba                	mv	a1,a4
     c2a:	853e                	mv	a0,a5
     c2c:	00000097          	auipc	ra,0x0
     c30:	e6a080e7          	jalr	-406(ra) # a96 <putc>
     c34:	fec42783          	lw	a5,-20(s0)
     c38:	2785                	addiw	a5,a5,1
     c3a:	fef42623          	sw	a5,-20(s0)
     c3e:	fd043783          	ld	a5,-48(s0)
     c42:	0792                	slli	a5,a5,0x4
     c44:	fcf43823          	sd	a5,-48(s0)
     c48:	fec42783          	lw	a5,-20(s0)
     c4c:	873e                	mv	a4,a5
     c4e:	47bd                	li	a5,15
     c50:	fce7f0e3          	bgeu	a5,a4,c10 <printptr+0x3c>
     c54:	0001                	nop
     c56:	0001                	nop
     c58:	70a2                	ld	ra,40(sp)
     c5a:	7402                	ld	s0,32(sp)
     c5c:	6145                	addi	sp,sp,48
     c5e:	8082                	ret

0000000000000c60 <vprintf>:
     c60:	715d                	addi	sp,sp,-80
     c62:	e486                	sd	ra,72(sp)
     c64:	e0a2                	sd	s0,64(sp)
     c66:	0880                	addi	s0,sp,80
     c68:	87aa                	mv	a5,a0
     c6a:	fcb43023          	sd	a1,-64(s0)
     c6e:	fac43c23          	sd	a2,-72(s0)
     c72:	fcf42623          	sw	a5,-52(s0)
     c76:	fe042023          	sw	zero,-32(s0)
     c7a:	fe042223          	sw	zero,-28(s0)
     c7e:	a42d                	j	ea8 <vprintf+0x248>
     c80:	fe442783          	lw	a5,-28(s0)
     c84:	fc043703          	ld	a4,-64(s0)
     c88:	97ba                	add	a5,a5,a4
     c8a:	0007c783          	lbu	a5,0(a5)
     c8e:	fcf42e23          	sw	a5,-36(s0)
     c92:	fe042783          	lw	a5,-32(s0)
     c96:	2781                	sext.w	a5,a5
     c98:	eb9d                	bnez	a5,cce <vprintf+0x6e>
     c9a:	fdc42783          	lw	a5,-36(s0)
     c9e:	0007871b          	sext.w	a4,a5
     ca2:	02500793          	li	a5,37
     ca6:	00f71763          	bne	a4,a5,cb4 <vprintf+0x54>
     caa:	02500793          	li	a5,37
     cae:	fef42023          	sw	a5,-32(s0)
     cb2:	a2f5                	j	e9e <vprintf+0x23e>
     cb4:	fdc42783          	lw	a5,-36(s0)
     cb8:	0ff7f713          	zext.b	a4,a5
     cbc:	fcc42783          	lw	a5,-52(s0)
     cc0:	85ba                	mv	a1,a4
     cc2:	853e                	mv	a0,a5
     cc4:	00000097          	auipc	ra,0x0
     cc8:	dd2080e7          	jalr	-558(ra) # a96 <putc>
     ccc:	aac9                	j	e9e <vprintf+0x23e>
     cce:	fe042783          	lw	a5,-32(s0)
     cd2:	0007871b          	sext.w	a4,a5
     cd6:	02500793          	li	a5,37
     cda:	1cf71263          	bne	a4,a5,e9e <vprintf+0x23e>
     cde:	fdc42783          	lw	a5,-36(s0)
     ce2:	0007871b          	sext.w	a4,a5
     ce6:	06400793          	li	a5,100
     cea:	02f71463          	bne	a4,a5,d12 <vprintf+0xb2>
     cee:	fb843783          	ld	a5,-72(s0)
     cf2:	00878713          	addi	a4,a5,8
     cf6:	fae43c23          	sd	a4,-72(s0)
     cfa:	4398                	lw	a4,0(a5)
     cfc:	fcc42783          	lw	a5,-52(s0)
     d00:	4685                	li	a3,1
     d02:	4629                	li	a2,10
     d04:	85ba                	mv	a1,a4
     d06:	853e                	mv	a0,a5
     d08:	00000097          	auipc	ra,0x0
     d0c:	dc4080e7          	jalr	-572(ra) # acc <printint>
     d10:	a269                	j	e9a <vprintf+0x23a>
     d12:	fdc42783          	lw	a5,-36(s0)
     d16:	0007871b          	sext.w	a4,a5
     d1a:	06c00793          	li	a5,108
     d1e:	02f71663          	bne	a4,a5,d4a <vprintf+0xea>
     d22:	fb843783          	ld	a5,-72(s0)
     d26:	00878713          	addi	a4,a5,8
     d2a:	fae43c23          	sd	a4,-72(s0)
     d2e:	639c                	ld	a5,0(a5)
     d30:	0007871b          	sext.w	a4,a5
     d34:	fcc42783          	lw	a5,-52(s0)
     d38:	4681                	li	a3,0
     d3a:	4629                	li	a2,10
     d3c:	85ba                	mv	a1,a4
     d3e:	853e                	mv	a0,a5
     d40:	00000097          	auipc	ra,0x0
     d44:	d8c080e7          	jalr	-628(ra) # acc <printint>
     d48:	aa89                	j	e9a <vprintf+0x23a>
     d4a:	fdc42783          	lw	a5,-36(s0)
     d4e:	0007871b          	sext.w	a4,a5
     d52:	07800793          	li	a5,120
     d56:	02f71463          	bne	a4,a5,d7e <vprintf+0x11e>
     d5a:	fb843783          	ld	a5,-72(s0)
     d5e:	00878713          	addi	a4,a5,8
     d62:	fae43c23          	sd	a4,-72(s0)
     d66:	4398                	lw	a4,0(a5)
     d68:	fcc42783          	lw	a5,-52(s0)
     d6c:	4681                	li	a3,0
     d6e:	4641                	li	a2,16
     d70:	85ba                	mv	a1,a4
     d72:	853e                	mv	a0,a5
     d74:	00000097          	auipc	ra,0x0
     d78:	d58080e7          	jalr	-680(ra) # acc <printint>
     d7c:	aa39                	j	e9a <vprintf+0x23a>
     d7e:	fdc42783          	lw	a5,-36(s0)
     d82:	0007871b          	sext.w	a4,a5
     d86:	07000793          	li	a5,112
     d8a:	02f71263          	bne	a4,a5,dae <vprintf+0x14e>
     d8e:	fb843783          	ld	a5,-72(s0)
     d92:	00878713          	addi	a4,a5,8
     d96:	fae43c23          	sd	a4,-72(s0)
     d9a:	6398                	ld	a4,0(a5)
     d9c:	fcc42783          	lw	a5,-52(s0)
     da0:	85ba                	mv	a1,a4
     da2:	853e                	mv	a0,a5
     da4:	00000097          	auipc	ra,0x0
     da8:	e30080e7          	jalr	-464(ra) # bd4 <printptr>
     dac:	a0fd                	j	e9a <vprintf+0x23a>
     dae:	fdc42783          	lw	a5,-36(s0)
     db2:	0007871b          	sext.w	a4,a5
     db6:	07300793          	li	a5,115
     dba:	04f71c63          	bne	a4,a5,e12 <vprintf+0x1b2>
     dbe:	fb843783          	ld	a5,-72(s0)
     dc2:	00878713          	addi	a4,a5,8
     dc6:	fae43c23          	sd	a4,-72(s0)
     dca:	639c                	ld	a5,0(a5)
     dcc:	fef43423          	sd	a5,-24(s0)
     dd0:	fe843783          	ld	a5,-24(s0)
     dd4:	eb8d                	bnez	a5,e06 <vprintf+0x1a6>
     dd6:	00000797          	auipc	a5,0x0
     dda:	5ea78793          	addi	a5,a5,1514 # 13c0 <malloc+0x2b0>
     dde:	fef43423          	sd	a5,-24(s0)
     de2:	a015                	j	e06 <vprintf+0x1a6>
     de4:	fe843783          	ld	a5,-24(s0)
     de8:	0007c703          	lbu	a4,0(a5)
     dec:	fcc42783          	lw	a5,-52(s0)
     df0:	85ba                	mv	a1,a4
     df2:	853e                	mv	a0,a5
     df4:	00000097          	auipc	ra,0x0
     df8:	ca2080e7          	jalr	-862(ra) # a96 <putc>
     dfc:	fe843783          	ld	a5,-24(s0)
     e00:	0785                	addi	a5,a5,1
     e02:	fef43423          	sd	a5,-24(s0)
     e06:	fe843783          	ld	a5,-24(s0)
     e0a:	0007c783          	lbu	a5,0(a5)
     e0e:	fbf9                	bnez	a5,de4 <vprintf+0x184>
     e10:	a069                	j	e9a <vprintf+0x23a>
     e12:	fdc42783          	lw	a5,-36(s0)
     e16:	0007871b          	sext.w	a4,a5
     e1a:	06300793          	li	a5,99
     e1e:	02f71463          	bne	a4,a5,e46 <vprintf+0x1e6>
     e22:	fb843783          	ld	a5,-72(s0)
     e26:	00878713          	addi	a4,a5,8
     e2a:	fae43c23          	sd	a4,-72(s0)
     e2e:	439c                	lw	a5,0(a5)
     e30:	0ff7f713          	zext.b	a4,a5
     e34:	fcc42783          	lw	a5,-52(s0)
     e38:	85ba                	mv	a1,a4
     e3a:	853e                	mv	a0,a5
     e3c:	00000097          	auipc	ra,0x0
     e40:	c5a080e7          	jalr	-934(ra) # a96 <putc>
     e44:	a899                	j	e9a <vprintf+0x23a>
     e46:	fdc42783          	lw	a5,-36(s0)
     e4a:	0007871b          	sext.w	a4,a5
     e4e:	02500793          	li	a5,37
     e52:	00f71f63          	bne	a4,a5,e70 <vprintf+0x210>
     e56:	fdc42783          	lw	a5,-36(s0)
     e5a:	0ff7f713          	zext.b	a4,a5
     e5e:	fcc42783          	lw	a5,-52(s0)
     e62:	85ba                	mv	a1,a4
     e64:	853e                	mv	a0,a5
     e66:	00000097          	auipc	ra,0x0
     e6a:	c30080e7          	jalr	-976(ra) # a96 <putc>
     e6e:	a035                	j	e9a <vprintf+0x23a>
     e70:	fcc42783          	lw	a5,-52(s0)
     e74:	02500593          	li	a1,37
     e78:	853e                	mv	a0,a5
     e7a:	00000097          	auipc	ra,0x0
     e7e:	c1c080e7          	jalr	-996(ra) # a96 <putc>
     e82:	fdc42783          	lw	a5,-36(s0)
     e86:	0ff7f713          	zext.b	a4,a5
     e8a:	fcc42783          	lw	a5,-52(s0)
     e8e:	85ba                	mv	a1,a4
     e90:	853e                	mv	a0,a5
     e92:	00000097          	auipc	ra,0x0
     e96:	c04080e7          	jalr	-1020(ra) # a96 <putc>
     e9a:	fe042023          	sw	zero,-32(s0)
     e9e:	fe442783          	lw	a5,-28(s0)
     ea2:	2785                	addiw	a5,a5,1
     ea4:	fef42223          	sw	a5,-28(s0)
     ea8:	fe442783          	lw	a5,-28(s0)
     eac:	fc043703          	ld	a4,-64(s0)
     eb0:	97ba                	add	a5,a5,a4
     eb2:	0007c783          	lbu	a5,0(a5)
     eb6:	dc0795e3          	bnez	a5,c80 <vprintf+0x20>
     eba:	0001                	nop
     ebc:	0001                	nop
     ebe:	60a6                	ld	ra,72(sp)
     ec0:	6406                	ld	s0,64(sp)
     ec2:	6161                	addi	sp,sp,80
     ec4:	8082                	ret

0000000000000ec6 <fprintf>:
     ec6:	7159                	addi	sp,sp,-112
     ec8:	fc06                	sd	ra,56(sp)
     eca:	f822                	sd	s0,48(sp)
     ecc:	0080                	addi	s0,sp,64
     ece:	fcb43823          	sd	a1,-48(s0)
     ed2:	e010                	sd	a2,0(s0)
     ed4:	e414                	sd	a3,8(s0)
     ed6:	e818                	sd	a4,16(s0)
     ed8:	ec1c                	sd	a5,24(s0)
     eda:	03043023          	sd	a6,32(s0)
     ede:	03143423          	sd	a7,40(s0)
     ee2:	87aa                	mv	a5,a0
     ee4:	fcf42e23          	sw	a5,-36(s0)
     ee8:	03040793          	addi	a5,s0,48
     eec:	fcf43423          	sd	a5,-56(s0)
     ef0:	fc843783          	ld	a5,-56(s0)
     ef4:	fd078793          	addi	a5,a5,-48
     ef8:	fef43423          	sd	a5,-24(s0)
     efc:	fe843703          	ld	a4,-24(s0)
     f00:	fdc42783          	lw	a5,-36(s0)
     f04:	863a                	mv	a2,a4
     f06:	fd043583          	ld	a1,-48(s0)
     f0a:	853e                	mv	a0,a5
     f0c:	00000097          	auipc	ra,0x0
     f10:	d54080e7          	jalr	-684(ra) # c60 <vprintf>
     f14:	0001                	nop
     f16:	70e2                	ld	ra,56(sp)
     f18:	7442                	ld	s0,48(sp)
     f1a:	6165                	addi	sp,sp,112
     f1c:	8082                	ret

0000000000000f1e <printf>:
     f1e:	7159                	addi	sp,sp,-112
     f20:	f406                	sd	ra,40(sp)
     f22:	f022                	sd	s0,32(sp)
     f24:	1800                	addi	s0,sp,48
     f26:	fca43c23          	sd	a0,-40(s0)
     f2a:	e40c                	sd	a1,8(s0)
     f2c:	e810                	sd	a2,16(s0)
     f2e:	ec14                	sd	a3,24(s0)
     f30:	f018                	sd	a4,32(s0)
     f32:	f41c                	sd	a5,40(s0)
     f34:	03043823          	sd	a6,48(s0)
     f38:	03143c23          	sd	a7,56(s0)
     f3c:	04040793          	addi	a5,s0,64
     f40:	fcf43823          	sd	a5,-48(s0)
     f44:	fd043783          	ld	a5,-48(s0)
     f48:	fc878793          	addi	a5,a5,-56
     f4c:	fef43423          	sd	a5,-24(s0)
     f50:	fe843783          	ld	a5,-24(s0)
     f54:	863e                	mv	a2,a5
     f56:	fd843583          	ld	a1,-40(s0)
     f5a:	4505                	li	a0,1
     f5c:	00000097          	auipc	ra,0x0
     f60:	d04080e7          	jalr	-764(ra) # c60 <vprintf>
     f64:	0001                	nop
     f66:	70a2                	ld	ra,40(sp)
     f68:	7402                	ld	s0,32(sp)
     f6a:	6165                	addi	sp,sp,112
     f6c:	8082                	ret

0000000000000f6e <free>:
     f6e:	7179                	addi	sp,sp,-48
     f70:	f422                	sd	s0,40(sp)
     f72:	1800                	addi	s0,sp,48
     f74:	fca43c23          	sd	a0,-40(s0)
     f78:	fd843783          	ld	a5,-40(s0)
     f7c:	17c1                	addi	a5,a5,-16
     f7e:	fef43023          	sd	a5,-32(s0)
     f82:	00001797          	auipc	a5,0x1
     f86:	0ae78793          	addi	a5,a5,174 # 2030 <freep>
     f8a:	639c                	ld	a5,0(a5)
     f8c:	fef43423          	sd	a5,-24(s0)
     f90:	a815                	j	fc4 <free+0x56>
     f92:	fe843783          	ld	a5,-24(s0)
     f96:	639c                	ld	a5,0(a5)
     f98:	fe843703          	ld	a4,-24(s0)
     f9c:	00f76f63          	bltu	a4,a5,fba <free+0x4c>
     fa0:	fe043703          	ld	a4,-32(s0)
     fa4:	fe843783          	ld	a5,-24(s0)
     fa8:	02e7eb63          	bltu	a5,a4,fde <free+0x70>
     fac:	fe843783          	ld	a5,-24(s0)
     fb0:	639c                	ld	a5,0(a5)
     fb2:	fe043703          	ld	a4,-32(s0)
     fb6:	02f76463          	bltu	a4,a5,fde <free+0x70>
     fba:	fe843783          	ld	a5,-24(s0)
     fbe:	639c                	ld	a5,0(a5)
     fc0:	fef43423          	sd	a5,-24(s0)
     fc4:	fe043703          	ld	a4,-32(s0)
     fc8:	fe843783          	ld	a5,-24(s0)
     fcc:	fce7f3e3          	bgeu	a5,a4,f92 <free+0x24>
     fd0:	fe843783          	ld	a5,-24(s0)
     fd4:	639c                	ld	a5,0(a5)
     fd6:	fe043703          	ld	a4,-32(s0)
     fda:	faf77ce3          	bgeu	a4,a5,f92 <free+0x24>
     fde:	fe043783          	ld	a5,-32(s0)
     fe2:	479c                	lw	a5,8(a5)
     fe4:	1782                	slli	a5,a5,0x20
     fe6:	9381                	srli	a5,a5,0x20
     fe8:	0792                	slli	a5,a5,0x4
     fea:	fe043703          	ld	a4,-32(s0)
     fee:	973e                	add	a4,a4,a5
     ff0:	fe843783          	ld	a5,-24(s0)
     ff4:	639c                	ld	a5,0(a5)
     ff6:	02f71763          	bne	a4,a5,1024 <free+0xb6>
     ffa:	fe043783          	ld	a5,-32(s0)
     ffe:	4798                	lw	a4,8(a5)
    1000:	fe843783          	ld	a5,-24(s0)
    1004:	639c                	ld	a5,0(a5)
    1006:	479c                	lw	a5,8(a5)
    1008:	9fb9                	addw	a5,a5,a4
    100a:	0007871b          	sext.w	a4,a5
    100e:	fe043783          	ld	a5,-32(s0)
    1012:	c798                	sw	a4,8(a5)
    1014:	fe843783          	ld	a5,-24(s0)
    1018:	639c                	ld	a5,0(a5)
    101a:	6398                	ld	a4,0(a5)
    101c:	fe043783          	ld	a5,-32(s0)
    1020:	e398                	sd	a4,0(a5)
    1022:	a039                	j	1030 <free+0xc2>
    1024:	fe843783          	ld	a5,-24(s0)
    1028:	6398                	ld	a4,0(a5)
    102a:	fe043783          	ld	a5,-32(s0)
    102e:	e398                	sd	a4,0(a5)
    1030:	fe843783          	ld	a5,-24(s0)
    1034:	479c                	lw	a5,8(a5)
    1036:	1782                	slli	a5,a5,0x20
    1038:	9381                	srli	a5,a5,0x20
    103a:	0792                	slli	a5,a5,0x4
    103c:	fe843703          	ld	a4,-24(s0)
    1040:	97ba                	add	a5,a5,a4
    1042:	fe043703          	ld	a4,-32(s0)
    1046:	02f71563          	bne	a4,a5,1070 <free+0x102>
    104a:	fe843783          	ld	a5,-24(s0)
    104e:	4798                	lw	a4,8(a5)
    1050:	fe043783          	ld	a5,-32(s0)
    1054:	479c                	lw	a5,8(a5)
    1056:	9fb9                	addw	a5,a5,a4
    1058:	0007871b          	sext.w	a4,a5
    105c:	fe843783          	ld	a5,-24(s0)
    1060:	c798                	sw	a4,8(a5)
    1062:	fe043783          	ld	a5,-32(s0)
    1066:	6398                	ld	a4,0(a5)
    1068:	fe843783          	ld	a5,-24(s0)
    106c:	e398                	sd	a4,0(a5)
    106e:	a031                	j	107a <free+0x10c>
    1070:	fe843783          	ld	a5,-24(s0)
    1074:	fe043703          	ld	a4,-32(s0)
    1078:	e398                	sd	a4,0(a5)
    107a:	00001797          	auipc	a5,0x1
    107e:	fb678793          	addi	a5,a5,-74 # 2030 <freep>
    1082:	fe843703          	ld	a4,-24(s0)
    1086:	e398                	sd	a4,0(a5)
    1088:	0001                	nop
    108a:	7422                	ld	s0,40(sp)
    108c:	6145                	addi	sp,sp,48
    108e:	8082                	ret

0000000000001090 <morecore>:
    1090:	7179                	addi	sp,sp,-48
    1092:	f406                	sd	ra,40(sp)
    1094:	f022                	sd	s0,32(sp)
    1096:	1800                	addi	s0,sp,48
    1098:	87aa                	mv	a5,a0
    109a:	fcf42e23          	sw	a5,-36(s0)
    109e:	fdc42783          	lw	a5,-36(s0)
    10a2:	0007871b          	sext.w	a4,a5
    10a6:	6785                	lui	a5,0x1
    10a8:	00f77563          	bgeu	a4,a5,10b2 <morecore+0x22>
    10ac:	6785                	lui	a5,0x1
    10ae:	fcf42e23          	sw	a5,-36(s0)
    10b2:	fdc42783          	lw	a5,-36(s0)
    10b6:	0047979b          	slliw	a5,a5,0x4
    10ba:	2781                	sext.w	a5,a5
    10bc:	2781                	sext.w	a5,a5
    10be:	853e                	mv	a0,a5
    10c0:	00000097          	auipc	ra,0x0
    10c4:	996080e7          	jalr	-1642(ra) # a56 <sbrk>
    10c8:	fea43423          	sd	a0,-24(s0)
    10cc:	fe843703          	ld	a4,-24(s0)
    10d0:	57fd                	li	a5,-1
    10d2:	00f71463          	bne	a4,a5,10da <morecore+0x4a>
    10d6:	4781                	li	a5,0
    10d8:	a03d                	j	1106 <morecore+0x76>
    10da:	fe843783          	ld	a5,-24(s0)
    10de:	fef43023          	sd	a5,-32(s0)
    10e2:	fe043783          	ld	a5,-32(s0)
    10e6:	fdc42703          	lw	a4,-36(s0)
    10ea:	c798                	sw	a4,8(a5)
    10ec:	fe043783          	ld	a5,-32(s0)
    10f0:	07c1                	addi	a5,a5,16 # 1010 <free+0xa2>
    10f2:	853e                	mv	a0,a5
    10f4:	00000097          	auipc	ra,0x0
    10f8:	e7a080e7          	jalr	-390(ra) # f6e <free>
    10fc:	00001797          	auipc	a5,0x1
    1100:	f3478793          	addi	a5,a5,-204 # 2030 <freep>
    1104:	639c                	ld	a5,0(a5)
    1106:	853e                	mv	a0,a5
    1108:	70a2                	ld	ra,40(sp)
    110a:	7402                	ld	s0,32(sp)
    110c:	6145                	addi	sp,sp,48
    110e:	8082                	ret

0000000000001110 <malloc>:
    1110:	7139                	addi	sp,sp,-64
    1112:	fc06                	sd	ra,56(sp)
    1114:	f822                	sd	s0,48(sp)
    1116:	0080                	addi	s0,sp,64
    1118:	87aa                	mv	a5,a0
    111a:	fcf42623          	sw	a5,-52(s0)
    111e:	fcc46783          	lwu	a5,-52(s0)
    1122:	07bd                	addi	a5,a5,15
    1124:	8391                	srli	a5,a5,0x4
    1126:	2781                	sext.w	a5,a5
    1128:	2785                	addiw	a5,a5,1
    112a:	fcf42e23          	sw	a5,-36(s0)
    112e:	00001797          	auipc	a5,0x1
    1132:	f0278793          	addi	a5,a5,-254 # 2030 <freep>
    1136:	639c                	ld	a5,0(a5)
    1138:	fef43023          	sd	a5,-32(s0)
    113c:	fe043783          	ld	a5,-32(s0)
    1140:	ef95                	bnez	a5,117c <malloc+0x6c>
    1142:	00001797          	auipc	a5,0x1
    1146:	ede78793          	addi	a5,a5,-290 # 2020 <base>
    114a:	fef43023          	sd	a5,-32(s0)
    114e:	00001797          	auipc	a5,0x1
    1152:	ee278793          	addi	a5,a5,-286 # 2030 <freep>
    1156:	fe043703          	ld	a4,-32(s0)
    115a:	e398                	sd	a4,0(a5)
    115c:	00001797          	auipc	a5,0x1
    1160:	ed478793          	addi	a5,a5,-300 # 2030 <freep>
    1164:	6398                	ld	a4,0(a5)
    1166:	00001797          	auipc	a5,0x1
    116a:	eba78793          	addi	a5,a5,-326 # 2020 <base>
    116e:	e398                	sd	a4,0(a5)
    1170:	00001797          	auipc	a5,0x1
    1174:	eb078793          	addi	a5,a5,-336 # 2020 <base>
    1178:	0007a423          	sw	zero,8(a5)
    117c:	fe043783          	ld	a5,-32(s0)
    1180:	639c                	ld	a5,0(a5)
    1182:	fef43423          	sd	a5,-24(s0)
    1186:	fe843783          	ld	a5,-24(s0)
    118a:	4798                	lw	a4,8(a5)
    118c:	fdc42783          	lw	a5,-36(s0)
    1190:	2781                	sext.w	a5,a5
    1192:	06f76763          	bltu	a4,a5,1200 <malloc+0xf0>
    1196:	fe843783          	ld	a5,-24(s0)
    119a:	4798                	lw	a4,8(a5)
    119c:	fdc42783          	lw	a5,-36(s0)
    11a0:	2781                	sext.w	a5,a5
    11a2:	00e79963          	bne	a5,a4,11b4 <malloc+0xa4>
    11a6:	fe843783          	ld	a5,-24(s0)
    11aa:	6398                	ld	a4,0(a5)
    11ac:	fe043783          	ld	a5,-32(s0)
    11b0:	e398                	sd	a4,0(a5)
    11b2:	a825                	j	11ea <malloc+0xda>
    11b4:	fe843783          	ld	a5,-24(s0)
    11b8:	479c                	lw	a5,8(a5)
    11ba:	fdc42703          	lw	a4,-36(s0)
    11be:	9f99                	subw	a5,a5,a4
    11c0:	0007871b          	sext.w	a4,a5
    11c4:	fe843783          	ld	a5,-24(s0)
    11c8:	c798                	sw	a4,8(a5)
    11ca:	fe843783          	ld	a5,-24(s0)
    11ce:	479c                	lw	a5,8(a5)
    11d0:	1782                	slli	a5,a5,0x20
    11d2:	9381                	srli	a5,a5,0x20
    11d4:	0792                	slli	a5,a5,0x4
    11d6:	fe843703          	ld	a4,-24(s0)
    11da:	97ba                	add	a5,a5,a4
    11dc:	fef43423          	sd	a5,-24(s0)
    11e0:	fe843783          	ld	a5,-24(s0)
    11e4:	fdc42703          	lw	a4,-36(s0)
    11e8:	c798                	sw	a4,8(a5)
    11ea:	00001797          	auipc	a5,0x1
    11ee:	e4678793          	addi	a5,a5,-442 # 2030 <freep>
    11f2:	fe043703          	ld	a4,-32(s0)
    11f6:	e398                	sd	a4,0(a5)
    11f8:	fe843783          	ld	a5,-24(s0)
    11fc:	07c1                	addi	a5,a5,16
    11fe:	a091                	j	1242 <malloc+0x132>
    1200:	00001797          	auipc	a5,0x1
    1204:	e3078793          	addi	a5,a5,-464 # 2030 <freep>
    1208:	639c                	ld	a5,0(a5)
    120a:	fe843703          	ld	a4,-24(s0)
    120e:	02f71063          	bne	a4,a5,122e <malloc+0x11e>
    1212:	fdc42783          	lw	a5,-36(s0)
    1216:	853e                	mv	a0,a5
    1218:	00000097          	auipc	ra,0x0
    121c:	e78080e7          	jalr	-392(ra) # 1090 <morecore>
    1220:	fea43423          	sd	a0,-24(s0)
    1224:	fe843783          	ld	a5,-24(s0)
    1228:	e399                	bnez	a5,122e <malloc+0x11e>
    122a:	4781                	li	a5,0
    122c:	a819                	j	1242 <malloc+0x132>
    122e:	fe843783          	ld	a5,-24(s0)
    1232:	fef43023          	sd	a5,-32(s0)
    1236:	fe843783          	ld	a5,-24(s0)
    123a:	639c                	ld	a5,0(a5)
    123c:	fef43423          	sd	a5,-24(s0)
    1240:	b799                	j	1186 <malloc+0x76>
    1242:	853e                	mv	a0,a5
    1244:	70e2                	ld	ra,56(sp)
    1246:	7442                	ld	s0,48(sp)
    1248:	6121                	addi	sp,sp,64
    124a:	8082                	ret
