
user/_grind:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <do_rand>:
       0:	7139                	addi	sp,sp,-64
       2:	fc22                	sd	s0,56(sp)
       4:	0080                	addi	s0,sp,64
       6:	fca43423          	sd	a0,-56(s0)
       a:	fc843783          	ld	a5,-56(s0)
       e:	6398                	ld	a4,0(a5)
      10:	800007b7          	lui	a5,0x80000
      14:	ffe7c793          	xori	a5,a5,-2
      18:	02f777b3          	remu	a5,a4,a5
      1c:	0785                	addi	a5,a5,1 # ffffffff80000001 <freep+0xffffffff7fffdbd9>
      1e:	fef43423          	sd	a5,-24(s0)
      22:	fe843703          	ld	a4,-24(s0)
      26:	67fd                	lui	a5,0x1f
      28:	31d78793          	addi	a5,a5,797 # 1f31d <freep+0x1cef5>
      2c:	02f747b3          	div	a5,a4,a5
      30:	fef43023          	sd	a5,-32(s0)
      34:	fe843703          	ld	a4,-24(s0)
      38:	67fd                	lui	a5,0x1f
      3a:	31d78793          	addi	a5,a5,797 # 1f31d <freep+0x1cef5>
      3e:	02f767b3          	rem	a5,a4,a5
      42:	fcf43c23          	sd	a5,-40(s0)
      46:	fd843703          	ld	a4,-40(s0)
      4a:	6791                	lui	a5,0x4
      4c:	1a778793          	addi	a5,a5,423 # 41a7 <freep+0x1d7f>
      50:	02f70733          	mul	a4,a4,a5
      54:	fe043683          	ld	a3,-32(s0)
      58:	77fd                	lui	a5,0xfffff
      5a:	4ec78793          	addi	a5,a5,1260 # fffffffffffff4ec <freep+0xffffffffffffd0c4>
      5e:	02f687b3          	mul	a5,a3,a5
      62:	97ba                	add	a5,a5,a4
      64:	fef43423          	sd	a5,-24(s0)
      68:	fe843783          	ld	a5,-24(s0)
      6c:	0007db63          	bgez	a5,82 <do_rand+0x82>
      70:	fe843703          	ld	a4,-24(s0)
      74:	800007b7          	lui	a5,0x80000
      78:	fff7c793          	not	a5,a5
      7c:	97ba                	add	a5,a5,a4
      7e:	fef43423          	sd	a5,-24(s0)
      82:	fe843783          	ld	a5,-24(s0)
      86:	17fd                	addi	a5,a5,-1 # ffffffff7fffffff <freep+0xffffffff7fffdbd7>
      88:	fef43423          	sd	a5,-24(s0)
      8c:	fe843703          	ld	a4,-24(s0)
      90:	fc843783          	ld	a5,-56(s0)
      94:	e398                	sd	a4,0(a5)
      96:	fe843783          	ld	a5,-24(s0)
      9a:	2781                	sext.w	a5,a5
      9c:	853e                	mv	a0,a5
      9e:	7462                	ld	s0,56(sp)
      a0:	6121                	addi	sp,sp,64
      a2:	8082                	ret

00000000000000a4 <rand>:
      a4:	1141                	addi	sp,sp,-16
      a6:	e406                	sd	ra,8(sp)
      a8:	e022                	sd	s0,0(sp)
      aa:	0800                	addi	s0,sp,16
      ac:	00002517          	auipc	a0,0x2
      b0:	f5450513          	addi	a0,a0,-172 # 2000 <rand_next>
      b4:	00000097          	auipc	ra,0x0
      b8:	f4c080e7          	jalr	-180(ra) # 0 <do_rand>
      bc:	87aa                	mv	a5,a0
      be:	853e                	mv	a0,a5
      c0:	60a2                	ld	ra,8(sp)
      c2:	6402                	ld	s0,0(sp)
      c4:	0141                	addi	sp,sp,16
      c6:	8082                	ret

00000000000000c8 <go>:
      c8:	7155                	addi	sp,sp,-208
      ca:	e586                	sd	ra,200(sp)
      cc:	e1a2                	sd	s0,192(sp)
      ce:	0980                	addi	s0,sp,208
      d0:	87aa                	mv	a5,a0
      d2:	f2f42e23          	sw	a5,-196(s0)
      d6:	57fd                	li	a5,-1
      d8:	fef42623          	sw	a5,-20(s0)
      dc:	4501                	li	a0,0
      de:	00001097          	auipc	ra,0x1
      e2:	358080e7          	jalr	856(ra) # 1436 <sbrk>
      e6:	fca43c23          	sd	a0,-40(s0)
      ea:	fe043023          	sd	zero,-32(s0)
      ee:	00002517          	auipc	a0,0x2
      f2:	b4250513          	addi	a0,a0,-1214 # 1c30 <malloc+0x140>
      f6:	00001097          	auipc	ra,0x1
      fa:	320080e7          	jalr	800(ra) # 1416 <mkdir>
      fe:	00002517          	auipc	a0,0x2
     102:	b3250513          	addi	a0,a0,-1230 # 1c30 <malloc+0x140>
     106:	00001097          	auipc	ra,0x1
     10a:	318080e7          	jalr	792(ra) # 141e <chdir>
     10e:	87aa                	mv	a5,a0
     110:	cf91                	beqz	a5,12c <go+0x64>
     112:	00002517          	auipc	a0,0x2
     116:	b2650513          	addi	a0,a0,-1242 # 1c38 <malloc+0x148>
     11a:	00001097          	auipc	ra,0x1
     11e:	7e4080e7          	jalr	2020(ra) # 18fe <printf>
     122:	4505                	li	a0,1
     124:	00001097          	auipc	ra,0x1
     128:	28a080e7          	jalr	650(ra) # 13ae <exit>
     12c:	00002517          	auipc	a0,0x2
     130:	b2c50513          	addi	a0,a0,-1236 # 1c58 <malloc+0x168>
     134:	00001097          	auipc	ra,0x1
     138:	2ea080e7          	jalr	746(ra) # 141e <chdir>
     13c:	fe043783          	ld	a5,-32(s0)
     140:	0785                	addi	a5,a5,1
     142:	fef43023          	sd	a5,-32(s0)
     146:	fe043703          	ld	a4,-32(s0)
     14a:	1f400793          	li	a5,500
     14e:	02f777b3          	remu	a5,a4,a5
     152:	e78d                	bnez	a5,17c <go+0xb4>
     154:	f3c42783          	lw	a5,-196(s0)
     158:	2781                	sext.w	a5,a5
     15a:	c791                	beqz	a5,166 <go+0x9e>
     15c:	00002797          	auipc	a5,0x2
     160:	b0478793          	addi	a5,a5,-1276 # 1c60 <malloc+0x170>
     164:	a029                	j	16e <go+0xa6>
     166:	00002797          	auipc	a5,0x2
     16a:	b0278793          	addi	a5,a5,-1278 # 1c68 <malloc+0x178>
     16e:	4605                	li	a2,1
     170:	85be                	mv	a1,a5
     172:	4505                	li	a0,1
     174:	00001097          	auipc	ra,0x1
     178:	25a080e7          	jalr	602(ra) # 13ce <write>
     17c:	00000097          	auipc	ra,0x0
     180:	f28080e7          	jalr	-216(ra) # a4 <rand>
     184:	87aa                	mv	a5,a0
     186:	873e                	mv	a4,a5
     188:	47dd                	li	a5,23
     18a:	02f767bb          	remw	a5,a4,a5
     18e:	fcf42a23          	sw	a5,-44(s0)
     192:	fd442783          	lw	a5,-44(s0)
     196:	0007871b          	sext.w	a4,a5
     19a:	4785                	li	a5,1
     19c:	02f71363          	bne	a4,a5,1c2 <go+0xfa>
     1a0:	20200593          	li	a1,514
     1a4:	00002517          	auipc	a0,0x2
     1a8:	acc50513          	addi	a0,a0,-1332 # 1c70 <malloc+0x180>
     1ac:	00001097          	auipc	ra,0x1
     1b0:	242080e7          	jalr	578(ra) # 13ee <open>
     1b4:	87aa                	mv	a5,a0
     1b6:	853e                	mv	a0,a5
     1b8:	00001097          	auipc	ra,0x1
     1bc:	21e080e7          	jalr	542(ra) # 13d6 <close>
     1c0:	bfb5                	j	13c <go+0x74>
     1c2:	fd442783          	lw	a5,-44(s0)
     1c6:	0007871b          	sext.w	a4,a5
     1ca:	4789                	li	a5,2
     1cc:	02f71363          	bne	a4,a5,1f2 <go+0x12a>
     1d0:	20200593          	li	a1,514
     1d4:	00002517          	auipc	a0,0x2
     1d8:	aac50513          	addi	a0,a0,-1364 # 1c80 <malloc+0x190>
     1dc:	00001097          	auipc	ra,0x1
     1e0:	212080e7          	jalr	530(ra) # 13ee <open>
     1e4:	87aa                	mv	a5,a0
     1e6:	853e                	mv	a0,a5
     1e8:	00001097          	auipc	ra,0x1
     1ec:	1ee080e7          	jalr	494(ra) # 13d6 <close>
     1f0:	b7b1                	j	13c <go+0x74>
     1f2:	fd442783          	lw	a5,-44(s0)
     1f6:	0007871b          	sext.w	a4,a5
     1fa:	478d                	li	a5,3
     1fc:	00f71b63          	bne	a4,a5,212 <go+0x14a>
     200:	00002517          	auipc	a0,0x2
     204:	a7050513          	addi	a0,a0,-1424 # 1c70 <malloc+0x180>
     208:	00001097          	auipc	ra,0x1
     20c:	1f6080e7          	jalr	502(ra) # 13fe <unlink>
     210:	b735                	j	13c <go+0x74>
     212:	fd442783          	lw	a5,-44(s0)
     216:	0007871b          	sext.w	a4,a5
     21a:	4791                	li	a5,4
     21c:	04f71a63          	bne	a4,a5,270 <go+0x1a8>
     220:	00002517          	auipc	a0,0x2
     224:	a1050513          	addi	a0,a0,-1520 # 1c30 <malloc+0x140>
     228:	00001097          	auipc	ra,0x1
     22c:	1f6080e7          	jalr	502(ra) # 141e <chdir>
     230:	87aa                	mv	a5,a0
     232:	cf91                	beqz	a5,24e <go+0x186>
     234:	00002517          	auipc	a0,0x2
     238:	a0450513          	addi	a0,a0,-1532 # 1c38 <malloc+0x148>
     23c:	00001097          	auipc	ra,0x1
     240:	6c2080e7          	jalr	1730(ra) # 18fe <printf>
     244:	4505                	li	a0,1
     246:	00001097          	auipc	ra,0x1
     24a:	168080e7          	jalr	360(ra) # 13ae <exit>
     24e:	00002517          	auipc	a0,0x2
     252:	a4a50513          	addi	a0,a0,-1462 # 1c98 <malloc+0x1a8>
     256:	00001097          	auipc	ra,0x1
     25a:	1a8080e7          	jalr	424(ra) # 13fe <unlink>
     25e:	00002517          	auipc	a0,0x2
     262:	9fa50513          	addi	a0,a0,-1542 # 1c58 <malloc+0x168>
     266:	00001097          	auipc	ra,0x1
     26a:	1b8080e7          	jalr	440(ra) # 141e <chdir>
     26e:	b5f9                	j	13c <go+0x74>
     270:	fd442783          	lw	a5,-44(s0)
     274:	0007871b          	sext.w	a4,a5
     278:	4795                	li	a5,5
     27a:	02f71763          	bne	a4,a5,2a8 <go+0x1e0>
     27e:	fec42783          	lw	a5,-20(s0)
     282:	853e                	mv	a0,a5
     284:	00001097          	auipc	ra,0x1
     288:	152080e7          	jalr	338(ra) # 13d6 <close>
     28c:	20200593          	li	a1,514
     290:	00002517          	auipc	a0,0x2
     294:	a1050513          	addi	a0,a0,-1520 # 1ca0 <malloc+0x1b0>
     298:	00001097          	auipc	ra,0x1
     29c:	156080e7          	jalr	342(ra) # 13ee <open>
     2a0:	87aa                	mv	a5,a0
     2a2:	fef42623          	sw	a5,-20(s0)
     2a6:	bd59                	j	13c <go+0x74>
     2a8:	fd442783          	lw	a5,-44(s0)
     2ac:	0007871b          	sext.w	a4,a5
     2b0:	4799                	li	a5,6
     2b2:	02f71763          	bne	a4,a5,2e0 <go+0x218>
     2b6:	fec42783          	lw	a5,-20(s0)
     2ba:	853e                	mv	a0,a5
     2bc:	00001097          	auipc	ra,0x1
     2c0:	11a080e7          	jalr	282(ra) # 13d6 <close>
     2c4:	20200593          	li	a1,514
     2c8:	00002517          	auipc	a0,0x2
     2cc:	9e850513          	addi	a0,a0,-1560 # 1cb0 <malloc+0x1c0>
     2d0:	00001097          	auipc	ra,0x1
     2d4:	11e080e7          	jalr	286(ra) # 13ee <open>
     2d8:	87aa                	mv	a5,a0
     2da:	fef42623          	sw	a5,-20(s0)
     2de:	bdb9                	j	13c <go+0x74>
     2e0:	fd442783          	lw	a5,-44(s0)
     2e4:	0007871b          	sext.w	a4,a5
     2e8:	479d                	li	a5,7
     2ea:	02f71063          	bne	a4,a5,30a <go+0x242>
     2ee:	fec42783          	lw	a5,-20(s0)
     2f2:	3e700613          	li	a2,999
     2f6:	00002597          	auipc	a1,0x2
     2fa:	d3a58593          	addi	a1,a1,-710 # 2030 <buf.0>
     2fe:	853e                	mv	a0,a5
     300:	00001097          	auipc	ra,0x1
     304:	0ce080e7          	jalr	206(ra) # 13ce <write>
     308:	bd15                	j	13c <go+0x74>
     30a:	fd442783          	lw	a5,-44(s0)
     30e:	0007871b          	sext.w	a4,a5
     312:	47a1                	li	a5,8
     314:	02f71063          	bne	a4,a5,334 <go+0x26c>
     318:	fec42783          	lw	a5,-20(s0)
     31c:	3e700613          	li	a2,999
     320:	00002597          	auipc	a1,0x2
     324:	d1058593          	addi	a1,a1,-752 # 2030 <buf.0>
     328:	853e                	mv	a0,a5
     32a:	00001097          	auipc	ra,0x1
     32e:	09c080e7          	jalr	156(ra) # 13c6 <read>
     332:	b529                	j	13c <go+0x74>
     334:	fd442783          	lw	a5,-44(s0)
     338:	0007871b          	sext.w	a4,a5
     33c:	47a5                	li	a5,9
     33e:	04f71363          	bne	a4,a5,384 <go+0x2bc>
     342:	00002517          	auipc	a0,0x2
     346:	92e50513          	addi	a0,a0,-1746 # 1c70 <malloc+0x180>
     34a:	00001097          	auipc	ra,0x1
     34e:	0cc080e7          	jalr	204(ra) # 1416 <mkdir>
     352:	20200593          	li	a1,514
     356:	00002517          	auipc	a0,0x2
     35a:	97250513          	addi	a0,a0,-1678 # 1cc8 <malloc+0x1d8>
     35e:	00001097          	auipc	ra,0x1
     362:	090080e7          	jalr	144(ra) # 13ee <open>
     366:	87aa                	mv	a5,a0
     368:	853e                	mv	a0,a5
     36a:	00001097          	auipc	ra,0x1
     36e:	06c080e7          	jalr	108(ra) # 13d6 <close>
     372:	00002517          	auipc	a0,0x2
     376:	96650513          	addi	a0,a0,-1690 # 1cd8 <malloc+0x1e8>
     37a:	00001097          	auipc	ra,0x1
     37e:	084080e7          	jalr	132(ra) # 13fe <unlink>
     382:	bb6d                	j	13c <go+0x74>
     384:	fd442783          	lw	a5,-44(s0)
     388:	0007871b          	sext.w	a4,a5
     38c:	47a9                	li	a5,10
     38e:	04f71363          	bne	a4,a5,3d4 <go+0x30c>
     392:	00002517          	auipc	a0,0x2
     396:	94e50513          	addi	a0,a0,-1714 # 1ce0 <malloc+0x1f0>
     39a:	00001097          	auipc	ra,0x1
     39e:	07c080e7          	jalr	124(ra) # 1416 <mkdir>
     3a2:	20200593          	li	a1,514
     3a6:	00002517          	auipc	a0,0x2
     3aa:	94250513          	addi	a0,a0,-1726 # 1ce8 <malloc+0x1f8>
     3ae:	00001097          	auipc	ra,0x1
     3b2:	040080e7          	jalr	64(ra) # 13ee <open>
     3b6:	87aa                	mv	a5,a0
     3b8:	853e                	mv	a0,a5
     3ba:	00001097          	auipc	ra,0x1
     3be:	01c080e7          	jalr	28(ra) # 13d6 <close>
     3c2:	00002517          	auipc	a0,0x2
     3c6:	93650513          	addi	a0,a0,-1738 # 1cf8 <malloc+0x208>
     3ca:	00001097          	auipc	ra,0x1
     3ce:	034080e7          	jalr	52(ra) # 13fe <unlink>
     3d2:	b3ad                	j	13c <go+0x74>
     3d4:	fd442783          	lw	a5,-44(s0)
     3d8:	0007871b          	sext.w	a4,a5
     3dc:	47ad                	li	a5,11
     3de:	02f71763          	bne	a4,a5,40c <go+0x344>
     3e2:	00002517          	auipc	a0,0x2
     3e6:	91e50513          	addi	a0,a0,-1762 # 1d00 <malloc+0x210>
     3ea:	00001097          	auipc	ra,0x1
     3ee:	014080e7          	jalr	20(ra) # 13fe <unlink>
     3f2:	00002597          	auipc	a1,0x2
     3f6:	8a658593          	addi	a1,a1,-1882 # 1c98 <malloc+0x1a8>
     3fa:	00002517          	auipc	a0,0x2
     3fe:	90e50513          	addi	a0,a0,-1778 # 1d08 <malloc+0x218>
     402:	00001097          	auipc	ra,0x1
     406:	00c080e7          	jalr	12(ra) # 140e <link>
     40a:	bb0d                	j	13c <go+0x74>
     40c:	fd442783          	lw	a5,-44(s0)
     410:	0007871b          	sext.w	a4,a5
     414:	47b1                	li	a5,12
     416:	02f71763          	bne	a4,a5,444 <go+0x37c>
     41a:	00002517          	auipc	a0,0x2
     41e:	90650513          	addi	a0,a0,-1786 # 1d20 <malloc+0x230>
     422:	00001097          	auipc	ra,0x1
     426:	fdc080e7          	jalr	-36(ra) # 13fe <unlink>
     42a:	00002597          	auipc	a1,0x2
     42e:	87658593          	addi	a1,a1,-1930 # 1ca0 <malloc+0x1b0>
     432:	00002517          	auipc	a0,0x2
     436:	8fe50513          	addi	a0,a0,-1794 # 1d30 <malloc+0x240>
     43a:	00001097          	auipc	ra,0x1
     43e:	fd4080e7          	jalr	-44(ra) # 140e <link>
     442:	b9ed                	j	13c <go+0x74>
     444:	fd442783          	lw	a5,-44(s0)
     448:	0007871b          	sext.w	a4,a5
     44c:	47b5                	li	a5,13
     44e:	04f71a63          	bne	a4,a5,4a2 <go+0x3da>
     452:	00001097          	auipc	ra,0x1
     456:	f54080e7          	jalr	-172(ra) # 13a6 <fork>
     45a:	87aa                	mv	a5,a0
     45c:	faf42823          	sw	a5,-80(s0)
     460:	fb042783          	lw	a5,-80(s0)
     464:	2781                	sext.w	a5,a5
     466:	e791                	bnez	a5,472 <go+0x3aa>
     468:	4501                	li	a0,0
     46a:	00001097          	auipc	ra,0x1
     46e:	f44080e7          	jalr	-188(ra) # 13ae <exit>
     472:	fb042783          	lw	a5,-80(s0)
     476:	2781                	sext.w	a5,a5
     478:	0007df63          	bgez	a5,496 <go+0x3ce>
     47c:	00002517          	auipc	a0,0x2
     480:	8bc50513          	addi	a0,a0,-1860 # 1d38 <malloc+0x248>
     484:	00001097          	auipc	ra,0x1
     488:	47a080e7          	jalr	1146(ra) # 18fe <printf>
     48c:	4505                	li	a0,1
     48e:	00001097          	auipc	ra,0x1
     492:	f20080e7          	jalr	-224(ra) # 13ae <exit>
     496:	4501                	li	a0,0
     498:	00001097          	auipc	ra,0x1
     49c:	f1e080e7          	jalr	-226(ra) # 13b6 <wait>
     4a0:	b971                	j	13c <go+0x74>
     4a2:	fd442783          	lw	a5,-44(s0)
     4a6:	0007871b          	sext.w	a4,a5
     4aa:	47b9                	li	a5,14
     4ac:	06f71263          	bne	a4,a5,510 <go+0x448>
     4b0:	00001097          	auipc	ra,0x1
     4b4:	ef6080e7          	jalr	-266(ra) # 13a6 <fork>
     4b8:	87aa                	mv	a5,a0
     4ba:	faf42a23          	sw	a5,-76(s0)
     4be:	fb442783          	lw	a5,-76(s0)
     4c2:	2781                	sext.w	a5,a5
     4c4:	ef91                	bnez	a5,4e0 <go+0x418>
     4c6:	00001097          	auipc	ra,0x1
     4ca:	ee0080e7          	jalr	-288(ra) # 13a6 <fork>
     4ce:	00001097          	auipc	ra,0x1
     4d2:	ed8080e7          	jalr	-296(ra) # 13a6 <fork>
     4d6:	4501                	li	a0,0
     4d8:	00001097          	auipc	ra,0x1
     4dc:	ed6080e7          	jalr	-298(ra) # 13ae <exit>
     4e0:	fb442783          	lw	a5,-76(s0)
     4e4:	2781                	sext.w	a5,a5
     4e6:	0007df63          	bgez	a5,504 <go+0x43c>
     4ea:	00002517          	auipc	a0,0x2
     4ee:	84e50513          	addi	a0,a0,-1970 # 1d38 <malloc+0x248>
     4f2:	00001097          	auipc	ra,0x1
     4f6:	40c080e7          	jalr	1036(ra) # 18fe <printf>
     4fa:	4505                	li	a0,1
     4fc:	00001097          	auipc	ra,0x1
     500:	eb2080e7          	jalr	-334(ra) # 13ae <exit>
     504:	4501                	li	a0,0
     506:	00001097          	auipc	ra,0x1
     50a:	eb0080e7          	jalr	-336(ra) # 13b6 <wait>
     50e:	b13d                	j	13c <go+0x74>
     510:	fd442783          	lw	a5,-44(s0)
     514:	0007871b          	sext.w	a4,a5
     518:	47bd                	li	a5,15
     51a:	00f71a63          	bne	a4,a5,52e <go+0x466>
     51e:	6785                	lui	a5,0x1
     520:	77b78513          	addi	a0,a5,1915 # 177b <vprintf+0x13b>
     524:	00001097          	auipc	ra,0x1
     528:	f12080e7          	jalr	-238(ra) # 1436 <sbrk>
     52c:	b901                	j	13c <go+0x74>
     52e:	fd442783          	lw	a5,-44(s0)
     532:	0007871b          	sext.w	a4,a5
     536:	47c1                	li	a5,16
     538:	02f71c63          	bne	a4,a5,570 <go+0x4a8>
     53c:	4501                	li	a0,0
     53e:	00001097          	auipc	ra,0x1
     542:	ef8080e7          	jalr	-264(ra) # 1436 <sbrk>
     546:	872a                	mv	a4,a0
     548:	fd843783          	ld	a5,-40(s0)
     54c:	bee7f8e3          	bgeu	a5,a4,13c <go+0x74>
     550:	4501                	li	a0,0
     552:	00001097          	auipc	ra,0x1
     556:	ee4080e7          	jalr	-284(ra) # 1436 <sbrk>
     55a:	872a                	mv	a4,a0
     55c:	fd843783          	ld	a5,-40(s0)
     560:	8f99                	sub	a5,a5,a4
     562:	2781                	sext.w	a5,a5
     564:	853e                	mv	a0,a5
     566:	00001097          	auipc	ra,0x1
     56a:	ed0080e7          	jalr	-304(ra) # 1436 <sbrk>
     56e:	b6f9                	j	13c <go+0x74>
     570:	fd442783          	lw	a5,-44(s0)
     574:	0007871b          	sext.w	a4,a5
     578:	47c5                	li	a5,17
     57a:	0af71863          	bne	a4,a5,62a <go+0x562>
     57e:	00001097          	auipc	ra,0x1
     582:	e28080e7          	jalr	-472(ra) # 13a6 <fork>
     586:	87aa                	mv	a5,a0
     588:	faf42c23          	sw	a5,-72(s0)
     58c:	fb842783          	lw	a5,-72(s0)
     590:	2781                	sext.w	a5,a5
     592:	e795                	bnez	a5,5be <go+0x4f6>
     594:	20200593          	li	a1,514
     598:	00001517          	auipc	a0,0x1
     59c:	7b850513          	addi	a0,a0,1976 # 1d50 <malloc+0x260>
     5a0:	00001097          	auipc	ra,0x1
     5a4:	e4e080e7          	jalr	-434(ra) # 13ee <open>
     5a8:	87aa                	mv	a5,a0
     5aa:	853e                	mv	a0,a5
     5ac:	00001097          	auipc	ra,0x1
     5b0:	e2a080e7          	jalr	-470(ra) # 13d6 <close>
     5b4:	4501                	li	a0,0
     5b6:	00001097          	auipc	ra,0x1
     5ba:	df8080e7          	jalr	-520(ra) # 13ae <exit>
     5be:	fb842783          	lw	a5,-72(s0)
     5c2:	2781                	sext.w	a5,a5
     5c4:	0007df63          	bgez	a5,5e2 <go+0x51a>
     5c8:	00001517          	auipc	a0,0x1
     5cc:	77050513          	addi	a0,a0,1904 # 1d38 <malloc+0x248>
     5d0:	00001097          	auipc	ra,0x1
     5d4:	32e080e7          	jalr	814(ra) # 18fe <printf>
     5d8:	4505                	li	a0,1
     5da:	00001097          	auipc	ra,0x1
     5de:	dd4080e7          	jalr	-556(ra) # 13ae <exit>
     5e2:	00001517          	auipc	a0,0x1
     5e6:	77650513          	addi	a0,a0,1910 # 1d58 <malloc+0x268>
     5ea:	00001097          	auipc	ra,0x1
     5ee:	e34080e7          	jalr	-460(ra) # 141e <chdir>
     5f2:	87aa                	mv	a5,a0
     5f4:	cf91                	beqz	a5,610 <go+0x548>
     5f6:	00001517          	auipc	a0,0x1
     5fa:	77250513          	addi	a0,a0,1906 # 1d68 <malloc+0x278>
     5fe:	00001097          	auipc	ra,0x1
     602:	300080e7          	jalr	768(ra) # 18fe <printf>
     606:	4505                	li	a0,1
     608:	00001097          	auipc	ra,0x1
     60c:	da6080e7          	jalr	-602(ra) # 13ae <exit>
     610:	fb842783          	lw	a5,-72(s0)
     614:	853e                	mv	a0,a5
     616:	00001097          	auipc	ra,0x1
     61a:	dc8080e7          	jalr	-568(ra) # 13de <kill>
     61e:	4501                	li	a0,0
     620:	00001097          	auipc	ra,0x1
     624:	d96080e7          	jalr	-618(ra) # 13b6 <wait>
     628:	be11                	j	13c <go+0x74>
     62a:	fd442783          	lw	a5,-44(s0)
     62e:	0007871b          	sext.w	a4,a5
     632:	47c9                	li	a5,18
     634:	06f71463          	bne	a4,a5,69c <go+0x5d4>
     638:	00001097          	auipc	ra,0x1
     63c:	d6e080e7          	jalr	-658(ra) # 13a6 <fork>
     640:	87aa                	mv	a5,a0
     642:	faf42e23          	sw	a5,-68(s0)
     646:	fbc42783          	lw	a5,-68(s0)
     64a:	2781                	sext.w	a5,a5
     64c:	e385                	bnez	a5,66c <go+0x5a4>
     64e:	00001097          	auipc	ra,0x1
     652:	de0080e7          	jalr	-544(ra) # 142e <getpid>
     656:	87aa                	mv	a5,a0
     658:	853e                	mv	a0,a5
     65a:	00001097          	auipc	ra,0x1
     65e:	d84080e7          	jalr	-636(ra) # 13de <kill>
     662:	4501                	li	a0,0
     664:	00001097          	auipc	ra,0x1
     668:	d4a080e7          	jalr	-694(ra) # 13ae <exit>
     66c:	fbc42783          	lw	a5,-68(s0)
     670:	2781                	sext.w	a5,a5
     672:	0007df63          	bgez	a5,690 <go+0x5c8>
     676:	00001517          	auipc	a0,0x1
     67a:	6c250513          	addi	a0,a0,1730 # 1d38 <malloc+0x248>
     67e:	00001097          	auipc	ra,0x1
     682:	280080e7          	jalr	640(ra) # 18fe <printf>
     686:	4505                	li	a0,1
     688:	00001097          	auipc	ra,0x1
     68c:	d26080e7          	jalr	-730(ra) # 13ae <exit>
     690:	4501                	li	a0,0
     692:	00001097          	auipc	ra,0x1
     696:	d24080e7          	jalr	-732(ra) # 13b6 <wait>
     69a:	b44d                	j	13c <go+0x74>
     69c:	fd442783          	lw	a5,-44(s0)
     6a0:	0007871b          	sext.w	a4,a5
     6a4:	47cd                	li	a5,19
     6a6:	10f71863          	bne	a4,a5,7b6 <go+0x6ee>
     6aa:	fa840793          	addi	a5,s0,-88
     6ae:	853e                	mv	a0,a5
     6b0:	00001097          	auipc	ra,0x1
     6b4:	d0e080e7          	jalr	-754(ra) # 13be <pipe>
     6b8:	87aa                	mv	a5,a0
     6ba:	0007df63          	bgez	a5,6d8 <go+0x610>
     6be:	00001517          	auipc	a0,0x1
     6c2:	6c250513          	addi	a0,a0,1730 # 1d80 <malloc+0x290>
     6c6:	00001097          	auipc	ra,0x1
     6ca:	238080e7          	jalr	568(ra) # 18fe <printf>
     6ce:	4505                	li	a0,1
     6d0:	00001097          	auipc	ra,0x1
     6d4:	cde080e7          	jalr	-802(ra) # 13ae <exit>
     6d8:	00001097          	auipc	ra,0x1
     6dc:	cce080e7          	jalr	-818(ra) # 13a6 <fork>
     6e0:	87aa                	mv	a5,a0
     6e2:	fcf42023          	sw	a5,-64(s0)
     6e6:	fc042783          	lw	a5,-64(s0)
     6ea:	2781                	sext.w	a5,a5
     6ec:	efbd                	bnez	a5,76a <go+0x6a2>
     6ee:	00001097          	auipc	ra,0x1
     6f2:	cb8080e7          	jalr	-840(ra) # 13a6 <fork>
     6f6:	00001097          	auipc	ra,0x1
     6fa:	cb0080e7          	jalr	-848(ra) # 13a6 <fork>
     6fe:	fac42783          	lw	a5,-84(s0)
     702:	4605                	li	a2,1
     704:	00001597          	auipc	a1,0x1
     708:	69458593          	addi	a1,a1,1684 # 1d98 <malloc+0x2a8>
     70c:	853e                	mv	a0,a5
     70e:	00001097          	auipc	ra,0x1
     712:	cc0080e7          	jalr	-832(ra) # 13ce <write>
     716:	87aa                	mv	a5,a0
     718:	873e                	mv	a4,a5
     71a:	4785                	li	a5,1
     71c:	00f70a63          	beq	a4,a5,730 <go+0x668>
     720:	00001517          	auipc	a0,0x1
     724:	68050513          	addi	a0,a0,1664 # 1da0 <malloc+0x2b0>
     728:	00001097          	auipc	ra,0x1
     72c:	1d6080e7          	jalr	470(ra) # 18fe <printf>
     730:	fa842783          	lw	a5,-88(s0)
     734:	fa740713          	addi	a4,s0,-89
     738:	4605                	li	a2,1
     73a:	85ba                	mv	a1,a4
     73c:	853e                	mv	a0,a5
     73e:	00001097          	auipc	ra,0x1
     742:	c88080e7          	jalr	-888(ra) # 13c6 <read>
     746:	87aa                	mv	a5,a0
     748:	873e                	mv	a4,a5
     74a:	4785                	li	a5,1
     74c:	00f70a63          	beq	a4,a5,760 <go+0x698>
     750:	00001517          	auipc	a0,0x1
     754:	67050513          	addi	a0,a0,1648 # 1dc0 <malloc+0x2d0>
     758:	00001097          	auipc	ra,0x1
     75c:	1a6080e7          	jalr	422(ra) # 18fe <printf>
     760:	4501                	li	a0,0
     762:	00001097          	auipc	ra,0x1
     766:	c4c080e7          	jalr	-948(ra) # 13ae <exit>
     76a:	fc042783          	lw	a5,-64(s0)
     76e:	2781                	sext.w	a5,a5
     770:	0007df63          	bgez	a5,78e <go+0x6c6>
     774:	00001517          	auipc	a0,0x1
     778:	5c450513          	addi	a0,a0,1476 # 1d38 <malloc+0x248>
     77c:	00001097          	auipc	ra,0x1
     780:	182080e7          	jalr	386(ra) # 18fe <printf>
     784:	4505                	li	a0,1
     786:	00001097          	auipc	ra,0x1
     78a:	c28080e7          	jalr	-984(ra) # 13ae <exit>
     78e:	fa842783          	lw	a5,-88(s0)
     792:	853e                	mv	a0,a5
     794:	00001097          	auipc	ra,0x1
     798:	c42080e7          	jalr	-958(ra) # 13d6 <close>
     79c:	fac42783          	lw	a5,-84(s0)
     7a0:	853e                	mv	a0,a5
     7a2:	00001097          	auipc	ra,0x1
     7a6:	c34080e7          	jalr	-972(ra) # 13d6 <close>
     7aa:	4501                	li	a0,0
     7ac:	00001097          	auipc	ra,0x1
     7b0:	c0a080e7          	jalr	-1014(ra) # 13b6 <wait>
     7b4:	b261                	j	13c <go+0x74>
     7b6:	fd442783          	lw	a5,-44(s0)
     7ba:	0007871b          	sext.w	a4,a5
     7be:	47d1                	li	a5,20
     7c0:	0af71f63          	bne	a4,a5,87e <go+0x7b6>
     7c4:	00001097          	auipc	ra,0x1
     7c8:	be2080e7          	jalr	-1054(ra) # 13a6 <fork>
     7cc:	87aa                	mv	a5,a0
     7ce:	fcf42223          	sw	a5,-60(s0)
     7d2:	fc442783          	lw	a5,-60(s0)
     7d6:	2781                	sext.w	a5,a5
     7d8:	ebbd                	bnez	a5,84e <go+0x786>
     7da:	00001517          	auipc	a0,0x1
     7de:	57650513          	addi	a0,a0,1398 # 1d50 <malloc+0x260>
     7e2:	00001097          	auipc	ra,0x1
     7e6:	c1c080e7          	jalr	-996(ra) # 13fe <unlink>
     7ea:	00001517          	auipc	a0,0x1
     7ee:	56650513          	addi	a0,a0,1382 # 1d50 <malloc+0x260>
     7f2:	00001097          	auipc	ra,0x1
     7f6:	c24080e7          	jalr	-988(ra) # 1416 <mkdir>
     7fa:	00001517          	auipc	a0,0x1
     7fe:	55650513          	addi	a0,a0,1366 # 1d50 <malloc+0x260>
     802:	00001097          	auipc	ra,0x1
     806:	c1c080e7          	jalr	-996(ra) # 141e <chdir>
     80a:	00001517          	auipc	a0,0x1
     80e:	5d650513          	addi	a0,a0,1494 # 1de0 <malloc+0x2f0>
     812:	00001097          	auipc	ra,0x1
     816:	bec080e7          	jalr	-1044(ra) # 13fe <unlink>
     81a:	20200593          	li	a1,514
     81e:	00001517          	auipc	a0,0x1
     822:	57a50513          	addi	a0,a0,1402 # 1d98 <malloc+0x2a8>
     826:	00001097          	auipc	ra,0x1
     82a:	bc8080e7          	jalr	-1080(ra) # 13ee <open>
     82e:	87aa                	mv	a5,a0
     830:	fef42623          	sw	a5,-20(s0)
     834:	00001517          	auipc	a0,0x1
     838:	56450513          	addi	a0,a0,1380 # 1d98 <malloc+0x2a8>
     83c:	00001097          	auipc	ra,0x1
     840:	bc2080e7          	jalr	-1086(ra) # 13fe <unlink>
     844:	4501                	li	a0,0
     846:	00001097          	auipc	ra,0x1
     84a:	b68080e7          	jalr	-1176(ra) # 13ae <exit>
     84e:	fc442783          	lw	a5,-60(s0)
     852:	2781                	sext.w	a5,a5
     854:	0007df63          	bgez	a5,872 <go+0x7aa>
     858:	00001517          	auipc	a0,0x1
     85c:	4e050513          	addi	a0,a0,1248 # 1d38 <malloc+0x248>
     860:	00001097          	auipc	ra,0x1
     864:	09e080e7          	jalr	158(ra) # 18fe <printf>
     868:	4505                	li	a0,1
     86a:	00001097          	auipc	ra,0x1
     86e:	b44080e7          	jalr	-1212(ra) # 13ae <exit>
     872:	4501                	li	a0,0
     874:	00001097          	auipc	ra,0x1
     878:	b42080e7          	jalr	-1214(ra) # 13b6 <wait>
     87c:	b0c1                	j	13c <go+0x74>
     87e:	fd442783          	lw	a5,-44(s0)
     882:	0007871b          	sext.w	a4,a5
     886:	47d5                	li	a5,21
     888:	12f71e63          	bne	a4,a5,9c4 <go+0x8fc>
     88c:	00001517          	auipc	a0,0x1
     890:	55c50513          	addi	a0,a0,1372 # 1de8 <malloc+0x2f8>
     894:	00001097          	auipc	ra,0x1
     898:	b6a080e7          	jalr	-1174(ra) # 13fe <unlink>
     89c:	20200593          	li	a1,514
     8a0:	00001517          	auipc	a0,0x1
     8a4:	54850513          	addi	a0,a0,1352 # 1de8 <malloc+0x2f8>
     8a8:	00001097          	auipc	ra,0x1
     8ac:	b46080e7          	jalr	-1210(ra) # 13ee <open>
     8b0:	87aa                	mv	a5,a0
     8b2:	fcf42423          	sw	a5,-56(s0)
     8b6:	fc842783          	lw	a5,-56(s0)
     8ba:	2781                	sext.w	a5,a5
     8bc:	0007df63          	bgez	a5,8da <go+0x812>
     8c0:	00001517          	auipc	a0,0x1
     8c4:	53050513          	addi	a0,a0,1328 # 1df0 <malloc+0x300>
     8c8:	00001097          	auipc	ra,0x1
     8cc:	036080e7          	jalr	54(ra) # 18fe <printf>
     8d0:	4505                	li	a0,1
     8d2:	00001097          	auipc	ra,0x1
     8d6:	adc080e7          	jalr	-1316(ra) # 13ae <exit>
     8da:	fc842783          	lw	a5,-56(s0)
     8de:	4605                	li	a2,1
     8e0:	00001597          	auipc	a1,0x1
     8e4:	4b858593          	addi	a1,a1,1208 # 1d98 <malloc+0x2a8>
     8e8:	853e                	mv	a0,a5
     8ea:	00001097          	auipc	ra,0x1
     8ee:	ae4080e7          	jalr	-1308(ra) # 13ce <write>
     8f2:	87aa                	mv	a5,a0
     8f4:	873e                	mv	a4,a5
     8f6:	4785                	li	a5,1
     8f8:	00f70f63          	beq	a4,a5,916 <go+0x84e>
     8fc:	00001517          	auipc	a0,0x1
     900:	50c50513          	addi	a0,a0,1292 # 1e08 <malloc+0x318>
     904:	00001097          	auipc	ra,0x1
     908:	ffa080e7          	jalr	-6(ra) # 18fe <printf>
     90c:	4505                	li	a0,1
     90e:	00001097          	auipc	ra,0x1
     912:	aa0080e7          	jalr	-1376(ra) # 13ae <exit>
     916:	f8840713          	addi	a4,s0,-120
     91a:	fc842783          	lw	a5,-56(s0)
     91e:	85ba                	mv	a1,a4
     920:	853e                	mv	a0,a5
     922:	00001097          	auipc	ra,0x1
     926:	ae4080e7          	jalr	-1308(ra) # 1406 <fstat>
     92a:	87aa                	mv	a5,a0
     92c:	cf91                	beqz	a5,948 <go+0x880>
     92e:	00001517          	auipc	a0,0x1
     932:	4f250513          	addi	a0,a0,1266 # 1e20 <malloc+0x330>
     936:	00001097          	auipc	ra,0x1
     93a:	fc8080e7          	jalr	-56(ra) # 18fe <printf>
     93e:	4505                	li	a0,1
     940:	00001097          	auipc	ra,0x1
     944:	a6e080e7          	jalr	-1426(ra) # 13ae <exit>
     948:	f9843703          	ld	a4,-104(s0)
     94c:	4785                	li	a5,1
     94e:	02f70363          	beq	a4,a5,974 <go+0x8ac>
     952:	f9843783          	ld	a5,-104(s0)
     956:	2781                	sext.w	a5,a5
     958:	85be                	mv	a1,a5
     95a:	00001517          	auipc	a0,0x1
     95e:	4de50513          	addi	a0,a0,1246 # 1e38 <malloc+0x348>
     962:	00001097          	auipc	ra,0x1
     966:	f9c080e7          	jalr	-100(ra) # 18fe <printf>
     96a:	4505                	li	a0,1
     96c:	00001097          	auipc	ra,0x1
     970:	a42080e7          	jalr	-1470(ra) # 13ae <exit>
     974:	f8c42783          	lw	a5,-116(s0)
     978:	873e                	mv	a4,a5
     97a:	0c800793          	li	a5,200
     97e:	02e7f263          	bgeu	a5,a4,9a2 <go+0x8da>
     982:	f8c42783          	lw	a5,-116(s0)
     986:	85be                	mv	a1,a5
     988:	00001517          	auipc	a0,0x1
     98c:	4d850513          	addi	a0,a0,1240 # 1e60 <malloc+0x370>
     990:	00001097          	auipc	ra,0x1
     994:	f6e080e7          	jalr	-146(ra) # 18fe <printf>
     998:	4505                	li	a0,1
     99a:	00001097          	auipc	ra,0x1
     99e:	a14080e7          	jalr	-1516(ra) # 13ae <exit>
     9a2:	fc842783          	lw	a5,-56(s0)
     9a6:	853e                	mv	a0,a5
     9a8:	00001097          	auipc	ra,0x1
     9ac:	a2e080e7          	jalr	-1490(ra) # 13d6 <close>
     9b0:	00001517          	auipc	a0,0x1
     9b4:	43850513          	addi	a0,a0,1080 # 1de8 <malloc+0x2f8>
     9b8:	00001097          	auipc	ra,0x1
     9bc:	a46080e7          	jalr	-1466(ra) # 13fe <unlink>
     9c0:	f7cff06f          	j	13c <go+0x74>
     9c4:	fd442783          	lw	a5,-44(s0)
     9c8:	0007871b          	sext.w	a4,a5
     9cc:	47d9                	li	a5,22
     9ce:	f6f71763          	bne	a4,a5,13c <go+0x74>
     9d2:	f8040793          	addi	a5,s0,-128
     9d6:	853e                	mv	a0,a5
     9d8:	00001097          	auipc	ra,0x1
     9dc:	9e6080e7          	jalr	-1562(ra) # 13be <pipe>
     9e0:	87aa                	mv	a5,a0
     9e2:	0207d063          	bgez	a5,a02 <go+0x93a>
     9e6:	00001597          	auipc	a1,0x1
     9ea:	39a58593          	addi	a1,a1,922 # 1d80 <malloc+0x290>
     9ee:	4509                	li	a0,2
     9f0:	00001097          	auipc	ra,0x1
     9f4:	eb6080e7          	jalr	-330(ra) # 18a6 <fprintf>
     9f8:	4505                	li	a0,1
     9fa:	00001097          	auipc	ra,0x1
     9fe:	9b4080e7          	jalr	-1612(ra) # 13ae <exit>
     a02:	f7840793          	addi	a5,s0,-136
     a06:	853e                	mv	a0,a5
     a08:	00001097          	auipc	ra,0x1
     a0c:	9b6080e7          	jalr	-1610(ra) # 13be <pipe>
     a10:	87aa                	mv	a5,a0
     a12:	0207d063          	bgez	a5,a32 <go+0x96a>
     a16:	00001597          	auipc	a1,0x1
     a1a:	36a58593          	addi	a1,a1,874 # 1d80 <malloc+0x290>
     a1e:	4509                	li	a0,2
     a20:	00001097          	auipc	ra,0x1
     a24:	e86080e7          	jalr	-378(ra) # 18a6 <fprintf>
     a28:	4505                	li	a0,1
     a2a:	00001097          	auipc	ra,0x1
     a2e:	984080e7          	jalr	-1660(ra) # 13ae <exit>
     a32:	00001097          	auipc	ra,0x1
     a36:	974080e7          	jalr	-1676(ra) # 13a6 <fork>
     a3a:	87aa                	mv	a5,a0
     a3c:	fcf42823          	sw	a5,-48(s0)
     a40:	fd042783          	lw	a5,-48(s0)
     a44:	2781                	sext.w	a5,a5
     a46:	e3f9                	bnez	a5,b0c <go+0xa44>
     a48:	f7842783          	lw	a5,-136(s0)
     a4c:	853e                	mv	a0,a5
     a4e:	00001097          	auipc	ra,0x1
     a52:	988080e7          	jalr	-1656(ra) # 13d6 <close>
     a56:	f7c42783          	lw	a5,-132(s0)
     a5a:	853e                	mv	a0,a5
     a5c:	00001097          	auipc	ra,0x1
     a60:	97a080e7          	jalr	-1670(ra) # 13d6 <close>
     a64:	f8042783          	lw	a5,-128(s0)
     a68:	853e                	mv	a0,a5
     a6a:	00001097          	auipc	ra,0x1
     a6e:	96c080e7          	jalr	-1684(ra) # 13d6 <close>
     a72:	4505                	li	a0,1
     a74:	00001097          	auipc	ra,0x1
     a78:	962080e7          	jalr	-1694(ra) # 13d6 <close>
     a7c:	f8442783          	lw	a5,-124(s0)
     a80:	853e                	mv	a0,a5
     a82:	00001097          	auipc	ra,0x1
     a86:	9a4080e7          	jalr	-1628(ra) # 1426 <dup>
     a8a:	87aa                	mv	a5,a0
     a8c:	873e                	mv	a4,a5
     a8e:	4785                	li	a5,1
     a90:	02f70063          	beq	a4,a5,ab0 <go+0x9e8>
     a94:	00001597          	auipc	a1,0x1
     a98:	3f458593          	addi	a1,a1,1012 # 1e88 <malloc+0x398>
     a9c:	4509                	li	a0,2
     a9e:	00001097          	auipc	ra,0x1
     aa2:	e08080e7          	jalr	-504(ra) # 18a6 <fprintf>
     aa6:	4505                	li	a0,1
     aa8:	00001097          	auipc	ra,0x1
     aac:	906080e7          	jalr	-1786(ra) # 13ae <exit>
     ab0:	f8442783          	lw	a5,-124(s0)
     ab4:	853e                	mv	a0,a5
     ab6:	00001097          	auipc	ra,0x1
     aba:	920080e7          	jalr	-1760(ra) # 13d6 <close>
     abe:	00001797          	auipc	a5,0x1
     ac2:	3e278793          	addi	a5,a5,994 # 1ea0 <malloc+0x3b0>
     ac6:	f4f43823          	sd	a5,-176(s0)
     aca:	00001797          	auipc	a5,0x1
     ace:	3de78793          	addi	a5,a5,990 # 1ea8 <malloc+0x3b8>
     ad2:	f4f43c23          	sd	a5,-168(s0)
     ad6:	f6043023          	sd	zero,-160(s0)
     ada:	f5040793          	addi	a5,s0,-176
     ade:	85be                	mv	a1,a5
     ae0:	00001517          	auipc	a0,0x1
     ae4:	3d050513          	addi	a0,a0,976 # 1eb0 <malloc+0x3c0>
     ae8:	00001097          	auipc	ra,0x1
     aec:	8fe080e7          	jalr	-1794(ra) # 13e6 <exec>
     af0:	00001597          	auipc	a1,0x1
     af4:	3d058593          	addi	a1,a1,976 # 1ec0 <malloc+0x3d0>
     af8:	4509                	li	a0,2
     afa:	00001097          	auipc	ra,0x1
     afe:	dac080e7          	jalr	-596(ra) # 18a6 <fprintf>
     b02:	4509                	li	a0,2
     b04:	00001097          	auipc	ra,0x1
     b08:	8aa080e7          	jalr	-1878(ra) # 13ae <exit>
     b0c:	fd042783          	lw	a5,-48(s0)
     b10:	2781                	sext.w	a5,a5
     b12:	0207d063          	bgez	a5,b32 <go+0xa6a>
     b16:	00001597          	auipc	a1,0x1
     b1a:	22258593          	addi	a1,a1,546 # 1d38 <malloc+0x248>
     b1e:	4509                	li	a0,2
     b20:	00001097          	auipc	ra,0x1
     b24:	d86080e7          	jalr	-634(ra) # 18a6 <fprintf>
     b28:	450d                	li	a0,3
     b2a:	00001097          	auipc	ra,0x1
     b2e:	884080e7          	jalr	-1916(ra) # 13ae <exit>
     b32:	00001097          	auipc	ra,0x1
     b36:	874080e7          	jalr	-1932(ra) # 13a6 <fork>
     b3a:	87aa                	mv	a5,a0
     b3c:	fcf42623          	sw	a5,-52(s0)
     b40:	fcc42783          	lw	a5,-52(s0)
     b44:	2781                	sext.w	a5,a5
     b46:	ebed                	bnez	a5,c38 <go+0xb70>
     b48:	f8442783          	lw	a5,-124(s0)
     b4c:	853e                	mv	a0,a5
     b4e:	00001097          	auipc	ra,0x1
     b52:	888080e7          	jalr	-1912(ra) # 13d6 <close>
     b56:	f7842783          	lw	a5,-136(s0)
     b5a:	853e                	mv	a0,a5
     b5c:	00001097          	auipc	ra,0x1
     b60:	87a080e7          	jalr	-1926(ra) # 13d6 <close>
     b64:	4501                	li	a0,0
     b66:	00001097          	auipc	ra,0x1
     b6a:	870080e7          	jalr	-1936(ra) # 13d6 <close>
     b6e:	f8042783          	lw	a5,-128(s0)
     b72:	853e                	mv	a0,a5
     b74:	00001097          	auipc	ra,0x1
     b78:	8b2080e7          	jalr	-1870(ra) # 1426 <dup>
     b7c:	87aa                	mv	a5,a0
     b7e:	cf99                	beqz	a5,b9c <go+0xad4>
     b80:	00001597          	auipc	a1,0x1
     b84:	30858593          	addi	a1,a1,776 # 1e88 <malloc+0x398>
     b88:	4509                	li	a0,2
     b8a:	00001097          	auipc	ra,0x1
     b8e:	d1c080e7          	jalr	-740(ra) # 18a6 <fprintf>
     b92:	4511                	li	a0,4
     b94:	00001097          	auipc	ra,0x1
     b98:	81a080e7          	jalr	-2022(ra) # 13ae <exit>
     b9c:	f8042783          	lw	a5,-128(s0)
     ba0:	853e                	mv	a0,a5
     ba2:	00001097          	auipc	ra,0x1
     ba6:	834080e7          	jalr	-1996(ra) # 13d6 <close>
     baa:	4505                	li	a0,1
     bac:	00001097          	auipc	ra,0x1
     bb0:	82a080e7          	jalr	-2006(ra) # 13d6 <close>
     bb4:	f7c42783          	lw	a5,-132(s0)
     bb8:	853e                	mv	a0,a5
     bba:	00001097          	auipc	ra,0x1
     bbe:	86c080e7          	jalr	-1940(ra) # 1426 <dup>
     bc2:	87aa                	mv	a5,a0
     bc4:	873e                	mv	a4,a5
     bc6:	4785                	li	a5,1
     bc8:	02f70063          	beq	a4,a5,be8 <go+0xb20>
     bcc:	00001597          	auipc	a1,0x1
     bd0:	2bc58593          	addi	a1,a1,700 # 1e88 <malloc+0x398>
     bd4:	4509                	li	a0,2
     bd6:	00001097          	auipc	ra,0x1
     bda:	cd0080e7          	jalr	-816(ra) # 18a6 <fprintf>
     bde:	4515                	li	a0,5
     be0:	00000097          	auipc	ra,0x0
     be4:	7ce080e7          	jalr	1998(ra) # 13ae <exit>
     be8:	f7c42783          	lw	a5,-132(s0)
     bec:	853e                	mv	a0,a5
     bee:	00000097          	auipc	ra,0x0
     bf2:	7e8080e7          	jalr	2024(ra) # 13d6 <close>
     bf6:	00001797          	auipc	a5,0x1
     bfa:	2e278793          	addi	a5,a5,738 # 1ed8 <malloc+0x3e8>
     bfe:	f4f43023          	sd	a5,-192(s0)
     c02:	f4043423          	sd	zero,-184(s0)
     c06:	f4040793          	addi	a5,s0,-192
     c0a:	85be                	mv	a1,a5
     c0c:	00001517          	auipc	a0,0x1
     c10:	2d450513          	addi	a0,a0,724 # 1ee0 <malloc+0x3f0>
     c14:	00000097          	auipc	ra,0x0
     c18:	7d2080e7          	jalr	2002(ra) # 13e6 <exec>
     c1c:	00001597          	auipc	a1,0x1
     c20:	2cc58593          	addi	a1,a1,716 # 1ee8 <malloc+0x3f8>
     c24:	4509                	li	a0,2
     c26:	00001097          	auipc	ra,0x1
     c2a:	c80080e7          	jalr	-896(ra) # 18a6 <fprintf>
     c2e:	4519                	li	a0,6
     c30:	00000097          	auipc	ra,0x0
     c34:	77e080e7          	jalr	1918(ra) # 13ae <exit>
     c38:	fcc42783          	lw	a5,-52(s0)
     c3c:	2781                	sext.w	a5,a5
     c3e:	0207d063          	bgez	a5,c5e <go+0xb96>
     c42:	00001597          	auipc	a1,0x1
     c46:	0f658593          	addi	a1,a1,246 # 1d38 <malloc+0x248>
     c4a:	4509                	li	a0,2
     c4c:	00001097          	auipc	ra,0x1
     c50:	c5a080e7          	jalr	-934(ra) # 18a6 <fprintf>
     c54:	451d                	li	a0,7
     c56:	00000097          	auipc	ra,0x0
     c5a:	758080e7          	jalr	1880(ra) # 13ae <exit>
     c5e:	f8042783          	lw	a5,-128(s0)
     c62:	853e                	mv	a0,a5
     c64:	00000097          	auipc	ra,0x0
     c68:	772080e7          	jalr	1906(ra) # 13d6 <close>
     c6c:	f8442783          	lw	a5,-124(s0)
     c70:	853e                	mv	a0,a5
     c72:	00000097          	auipc	ra,0x0
     c76:	764080e7          	jalr	1892(ra) # 13d6 <close>
     c7a:	f7c42783          	lw	a5,-132(s0)
     c7e:	853e                	mv	a0,a5
     c80:	00000097          	auipc	ra,0x0
     c84:	756080e7          	jalr	1878(ra) # 13d6 <close>
     c88:	f6042823          	sw	zero,-144(s0)
     c8c:	f7842783          	lw	a5,-136(s0)
     c90:	f7040713          	addi	a4,s0,-144
     c94:	4605                	li	a2,1
     c96:	85ba                	mv	a1,a4
     c98:	853e                	mv	a0,a5
     c9a:	00000097          	auipc	ra,0x0
     c9e:	72c080e7          	jalr	1836(ra) # 13c6 <read>
     ca2:	f7842703          	lw	a4,-136(s0)
     ca6:	f7040793          	addi	a5,s0,-144
     caa:	0785                	addi	a5,a5,1
     cac:	4605                	li	a2,1
     cae:	85be                	mv	a1,a5
     cb0:	853a                	mv	a0,a4
     cb2:	00000097          	auipc	ra,0x0
     cb6:	714080e7          	jalr	1812(ra) # 13c6 <read>
     cba:	f7842703          	lw	a4,-136(s0)
     cbe:	f7040793          	addi	a5,s0,-144
     cc2:	0789                	addi	a5,a5,2
     cc4:	4605                	li	a2,1
     cc6:	85be                	mv	a1,a5
     cc8:	853a                	mv	a0,a4
     cca:	00000097          	auipc	ra,0x0
     cce:	6fc080e7          	jalr	1788(ra) # 13c6 <read>
     cd2:	f7842783          	lw	a5,-136(s0)
     cd6:	853e                	mv	a0,a5
     cd8:	00000097          	auipc	ra,0x0
     cdc:	6fe080e7          	jalr	1790(ra) # 13d6 <close>
     ce0:	f6c40793          	addi	a5,s0,-148
     ce4:	853e                	mv	a0,a5
     ce6:	00000097          	auipc	ra,0x0
     cea:	6d0080e7          	jalr	1744(ra) # 13b6 <wait>
     cee:	f6840793          	addi	a5,s0,-152
     cf2:	853e                	mv	a0,a5
     cf4:	00000097          	auipc	ra,0x0
     cf8:	6c2080e7          	jalr	1730(ra) # 13b6 <wait>
     cfc:	f6c42783          	lw	a5,-148(s0)
     d00:	e395                	bnez	a5,d24 <go+0xc5c>
     d02:	f6842783          	lw	a5,-152(s0)
     d06:	ef99                	bnez	a5,d24 <go+0xc5c>
     d08:	f7040793          	addi	a5,s0,-144
     d0c:	00001597          	auipc	a1,0x1
     d10:	1f458593          	addi	a1,a1,500 # 1f00 <malloc+0x410>
     d14:	853e                	mv	a0,a5
     d16:	00000097          	auipc	ra,0x0
     d1a:	250080e7          	jalr	592(ra) # f66 <strcmp>
     d1e:	87aa                	mv	a5,a0
     d20:	c0078e63          	beqz	a5,13c <go+0x74>
     d24:	f6c42783          	lw	a5,-148(s0)
     d28:	f6842703          	lw	a4,-152(s0)
     d2c:	f7040693          	addi	a3,s0,-144
     d30:	863a                	mv	a2,a4
     d32:	85be                	mv	a1,a5
     d34:	00001517          	auipc	a0,0x1
     d38:	1d450513          	addi	a0,a0,468 # 1f08 <malloc+0x418>
     d3c:	00001097          	auipc	ra,0x1
     d40:	bc2080e7          	jalr	-1086(ra) # 18fe <printf>
     d44:	4505                	li	a0,1
     d46:	00000097          	auipc	ra,0x0
     d4a:	668080e7          	jalr	1640(ra) # 13ae <exit>

0000000000000d4e <iter>:
     d4e:	1101                	addi	sp,sp,-32
     d50:	ec06                	sd	ra,24(sp)
     d52:	e822                	sd	s0,16(sp)
     d54:	1000                	addi	s0,sp,32
     d56:	00001517          	auipc	a0,0x1
     d5a:	ffa50513          	addi	a0,a0,-6 # 1d50 <malloc+0x260>
     d5e:	00000097          	auipc	ra,0x0
     d62:	6a0080e7          	jalr	1696(ra) # 13fe <unlink>
     d66:	00001517          	auipc	a0,0x1
     d6a:	f9a50513          	addi	a0,a0,-102 # 1d00 <malloc+0x210>
     d6e:	00000097          	auipc	ra,0x0
     d72:	690080e7          	jalr	1680(ra) # 13fe <unlink>
     d76:	00000097          	auipc	ra,0x0
     d7a:	630080e7          	jalr	1584(ra) # 13a6 <fork>
     d7e:	87aa                	mv	a5,a0
     d80:	fef42623          	sw	a5,-20(s0)
     d84:	fec42783          	lw	a5,-20(s0)
     d88:	2781                	sext.w	a5,a5
     d8a:	0007df63          	bgez	a5,da8 <iter+0x5a>
     d8e:	00001517          	auipc	a0,0x1
     d92:	faa50513          	addi	a0,a0,-86 # 1d38 <malloc+0x248>
     d96:	00001097          	auipc	ra,0x1
     d9a:	b68080e7          	jalr	-1176(ra) # 18fe <printf>
     d9e:	4505                	li	a0,1
     da0:	00000097          	auipc	ra,0x0
     da4:	60e080e7          	jalr	1550(ra) # 13ae <exit>
     da8:	fec42783          	lw	a5,-20(s0)
     dac:	2781                	sext.w	a5,a5
     dae:	e79d                	bnez	a5,ddc <iter+0x8e>
     db0:	00001797          	auipc	a5,0x1
     db4:	25078793          	addi	a5,a5,592 # 2000 <rand_next>
     db8:	639c                	ld	a5,0(a5)
     dba:	01f7c713          	xori	a4,a5,31
     dbe:	00001797          	auipc	a5,0x1
     dc2:	24278793          	addi	a5,a5,578 # 2000 <rand_next>
     dc6:	e398                	sd	a4,0(a5)
     dc8:	4501                	li	a0,0
     dca:	fffff097          	auipc	ra,0xfffff
     dce:	2fe080e7          	jalr	766(ra) # c8 <go>
     dd2:	4501                	li	a0,0
     dd4:	00000097          	auipc	ra,0x0
     dd8:	5da080e7          	jalr	1498(ra) # 13ae <exit>
     ddc:	00000097          	auipc	ra,0x0
     de0:	5ca080e7          	jalr	1482(ra) # 13a6 <fork>
     de4:	87aa                	mv	a5,a0
     de6:	fef42423          	sw	a5,-24(s0)
     dea:	fe842783          	lw	a5,-24(s0)
     dee:	2781                	sext.w	a5,a5
     df0:	0007df63          	bgez	a5,e0e <iter+0xc0>
     df4:	00001517          	auipc	a0,0x1
     df8:	f4450513          	addi	a0,a0,-188 # 1d38 <malloc+0x248>
     dfc:	00001097          	auipc	ra,0x1
     e00:	b02080e7          	jalr	-1278(ra) # 18fe <printf>
     e04:	4505                	li	a0,1
     e06:	00000097          	auipc	ra,0x0
     e0a:	5a8080e7          	jalr	1448(ra) # 13ae <exit>
     e0e:	fe842783          	lw	a5,-24(s0)
     e12:	2781                	sext.w	a5,a5
     e14:	eb8d                	bnez	a5,e46 <iter+0xf8>
     e16:	00001797          	auipc	a5,0x1
     e1a:	1ea78793          	addi	a5,a5,490 # 2000 <rand_next>
     e1e:	6398                	ld	a4,0(a5)
     e20:	6789                	lui	a5,0x2
     e22:	c0978793          	addi	a5,a5,-1015 # 1c09 <malloc+0x119>
     e26:	8f3d                	xor	a4,a4,a5
     e28:	00001797          	auipc	a5,0x1
     e2c:	1d878793          	addi	a5,a5,472 # 2000 <rand_next>
     e30:	e398                	sd	a4,0(a5)
     e32:	4505                	li	a0,1
     e34:	fffff097          	auipc	ra,0xfffff
     e38:	294080e7          	jalr	660(ra) # c8 <go>
     e3c:	4501                	li	a0,0
     e3e:	00000097          	auipc	ra,0x0
     e42:	570080e7          	jalr	1392(ra) # 13ae <exit>
     e46:	57fd                	li	a5,-1
     e48:	fef42223          	sw	a5,-28(s0)
     e4c:	fe440793          	addi	a5,s0,-28
     e50:	853e                	mv	a0,a5
     e52:	00000097          	auipc	ra,0x0
     e56:	564080e7          	jalr	1380(ra) # 13b6 <wait>
     e5a:	fe442783          	lw	a5,-28(s0)
     e5e:	cf99                	beqz	a5,e7c <iter+0x12e>
     e60:	fec42783          	lw	a5,-20(s0)
     e64:	853e                	mv	a0,a5
     e66:	00000097          	auipc	ra,0x0
     e6a:	578080e7          	jalr	1400(ra) # 13de <kill>
     e6e:	fe842783          	lw	a5,-24(s0)
     e72:	853e                	mv	a0,a5
     e74:	00000097          	auipc	ra,0x0
     e78:	56a080e7          	jalr	1386(ra) # 13de <kill>
     e7c:	57fd                	li	a5,-1
     e7e:	fef42023          	sw	a5,-32(s0)
     e82:	fe040793          	addi	a5,s0,-32
     e86:	853e                	mv	a0,a5
     e88:	00000097          	auipc	ra,0x0
     e8c:	52e080e7          	jalr	1326(ra) # 13b6 <wait>
     e90:	4501                	li	a0,0
     e92:	00000097          	auipc	ra,0x0
     e96:	51c080e7          	jalr	1308(ra) # 13ae <exit>

0000000000000e9a <main>:
     e9a:	1101                	addi	sp,sp,-32
     e9c:	ec06                	sd	ra,24(sp)
     e9e:	e822                	sd	s0,16(sp)
     ea0:	1000                	addi	s0,sp,32
     ea2:	00000097          	auipc	ra,0x0
     ea6:	504080e7          	jalr	1284(ra) # 13a6 <fork>
     eaa:	87aa                	mv	a5,a0
     eac:	fef42623          	sw	a5,-20(s0)
     eb0:	fec42783          	lw	a5,-20(s0)
     eb4:	2781                	sext.w	a5,a5
     eb6:	eb91                	bnez	a5,eca <main+0x30>
     eb8:	00000097          	auipc	ra,0x0
     ebc:	e96080e7          	jalr	-362(ra) # d4e <iter>
     ec0:	4501                	li	a0,0
     ec2:	00000097          	auipc	ra,0x0
     ec6:	4ec080e7          	jalr	1260(ra) # 13ae <exit>
     eca:	fec42783          	lw	a5,-20(s0)
     ece:	2781                	sext.w	a5,a5
     ed0:	00f05763          	blez	a5,ede <main+0x44>
     ed4:	4501                	li	a0,0
     ed6:	00000097          	auipc	ra,0x0
     eda:	4e0080e7          	jalr	1248(ra) # 13b6 <wait>
     ede:	4551                	li	a0,20
     ee0:	00000097          	auipc	ra,0x0
     ee4:	55e080e7          	jalr	1374(ra) # 143e <sleep>
     ee8:	00001797          	auipc	a5,0x1
     eec:	11878793          	addi	a5,a5,280 # 2000 <rand_next>
     ef0:	639c                	ld	a5,0(a5)
     ef2:	00178713          	addi	a4,a5,1
     ef6:	00001797          	auipc	a5,0x1
     efa:	10a78793          	addi	a5,a5,266 # 2000 <rand_next>
     efe:	e398                	sd	a4,0(a5)
     f00:	b74d                	j	ea2 <main+0x8>

0000000000000f02 <_main>:
     f02:	1141                	addi	sp,sp,-16
     f04:	e406                	sd	ra,8(sp)
     f06:	e022                	sd	s0,0(sp)
     f08:	0800                	addi	s0,sp,16
     f0a:	00000097          	auipc	ra,0x0
     f0e:	f90080e7          	jalr	-112(ra) # e9a <main>
     f12:	4501                	li	a0,0
     f14:	00000097          	auipc	ra,0x0
     f18:	49a080e7          	jalr	1178(ra) # 13ae <exit>

0000000000000f1c <strcpy>:
     f1c:	7179                	addi	sp,sp,-48
     f1e:	f422                	sd	s0,40(sp)
     f20:	1800                	addi	s0,sp,48
     f22:	fca43c23          	sd	a0,-40(s0)
     f26:	fcb43823          	sd	a1,-48(s0)
     f2a:	fd843783          	ld	a5,-40(s0)
     f2e:	fef43423          	sd	a5,-24(s0)
     f32:	0001                	nop
     f34:	fd043703          	ld	a4,-48(s0)
     f38:	00170793          	addi	a5,a4,1
     f3c:	fcf43823          	sd	a5,-48(s0)
     f40:	fd843783          	ld	a5,-40(s0)
     f44:	00178693          	addi	a3,a5,1
     f48:	fcd43c23          	sd	a3,-40(s0)
     f4c:	00074703          	lbu	a4,0(a4)
     f50:	00e78023          	sb	a4,0(a5)
     f54:	0007c783          	lbu	a5,0(a5)
     f58:	fff1                	bnez	a5,f34 <strcpy+0x18>
     f5a:	fe843783          	ld	a5,-24(s0)
     f5e:	853e                	mv	a0,a5
     f60:	7422                	ld	s0,40(sp)
     f62:	6145                	addi	sp,sp,48
     f64:	8082                	ret

0000000000000f66 <strcmp>:
     f66:	1101                	addi	sp,sp,-32
     f68:	ec22                	sd	s0,24(sp)
     f6a:	1000                	addi	s0,sp,32
     f6c:	fea43423          	sd	a0,-24(s0)
     f70:	feb43023          	sd	a1,-32(s0)
     f74:	a819                	j	f8a <strcmp+0x24>
     f76:	fe843783          	ld	a5,-24(s0)
     f7a:	0785                	addi	a5,a5,1
     f7c:	fef43423          	sd	a5,-24(s0)
     f80:	fe043783          	ld	a5,-32(s0)
     f84:	0785                	addi	a5,a5,1
     f86:	fef43023          	sd	a5,-32(s0)
     f8a:	fe843783          	ld	a5,-24(s0)
     f8e:	0007c783          	lbu	a5,0(a5)
     f92:	cb99                	beqz	a5,fa8 <strcmp+0x42>
     f94:	fe843783          	ld	a5,-24(s0)
     f98:	0007c703          	lbu	a4,0(a5)
     f9c:	fe043783          	ld	a5,-32(s0)
     fa0:	0007c783          	lbu	a5,0(a5)
     fa4:	fcf709e3          	beq	a4,a5,f76 <strcmp+0x10>
     fa8:	fe843783          	ld	a5,-24(s0)
     fac:	0007c783          	lbu	a5,0(a5)
     fb0:	0007871b          	sext.w	a4,a5
     fb4:	fe043783          	ld	a5,-32(s0)
     fb8:	0007c783          	lbu	a5,0(a5)
     fbc:	2781                	sext.w	a5,a5
     fbe:	40f707bb          	subw	a5,a4,a5
     fc2:	2781                	sext.w	a5,a5
     fc4:	853e                	mv	a0,a5
     fc6:	6462                	ld	s0,24(sp)
     fc8:	6105                	addi	sp,sp,32
     fca:	8082                	ret

0000000000000fcc <strlen>:
     fcc:	7179                	addi	sp,sp,-48
     fce:	f422                	sd	s0,40(sp)
     fd0:	1800                	addi	s0,sp,48
     fd2:	fca43c23          	sd	a0,-40(s0)
     fd6:	fe042623          	sw	zero,-20(s0)
     fda:	a031                	j	fe6 <strlen+0x1a>
     fdc:	fec42783          	lw	a5,-20(s0)
     fe0:	2785                	addiw	a5,a5,1
     fe2:	fef42623          	sw	a5,-20(s0)
     fe6:	fec42783          	lw	a5,-20(s0)
     fea:	fd843703          	ld	a4,-40(s0)
     fee:	97ba                	add	a5,a5,a4
     ff0:	0007c783          	lbu	a5,0(a5)
     ff4:	f7e5                	bnez	a5,fdc <strlen+0x10>
     ff6:	fec42783          	lw	a5,-20(s0)
     ffa:	853e                	mv	a0,a5
     ffc:	7422                	ld	s0,40(sp)
     ffe:	6145                	addi	sp,sp,48
    1000:	8082                	ret

0000000000001002 <memset>:
    1002:	7179                	addi	sp,sp,-48
    1004:	f422                	sd	s0,40(sp)
    1006:	1800                	addi	s0,sp,48
    1008:	fca43c23          	sd	a0,-40(s0)
    100c:	87ae                	mv	a5,a1
    100e:	8732                	mv	a4,a2
    1010:	fcf42a23          	sw	a5,-44(s0)
    1014:	87ba                	mv	a5,a4
    1016:	fcf42823          	sw	a5,-48(s0)
    101a:	fd843783          	ld	a5,-40(s0)
    101e:	fef43023          	sd	a5,-32(s0)
    1022:	fe042623          	sw	zero,-20(s0)
    1026:	a00d                	j	1048 <memset+0x46>
    1028:	fec42783          	lw	a5,-20(s0)
    102c:	fe043703          	ld	a4,-32(s0)
    1030:	97ba                	add	a5,a5,a4
    1032:	fd442703          	lw	a4,-44(s0)
    1036:	0ff77713          	zext.b	a4,a4
    103a:	00e78023          	sb	a4,0(a5)
    103e:	fec42783          	lw	a5,-20(s0)
    1042:	2785                	addiw	a5,a5,1
    1044:	fef42623          	sw	a5,-20(s0)
    1048:	fec42703          	lw	a4,-20(s0)
    104c:	fd042783          	lw	a5,-48(s0)
    1050:	2781                	sext.w	a5,a5
    1052:	fcf76be3          	bltu	a4,a5,1028 <memset+0x26>
    1056:	fd843783          	ld	a5,-40(s0)
    105a:	853e                	mv	a0,a5
    105c:	7422                	ld	s0,40(sp)
    105e:	6145                	addi	sp,sp,48
    1060:	8082                	ret

0000000000001062 <strchr>:
    1062:	1101                	addi	sp,sp,-32
    1064:	ec22                	sd	s0,24(sp)
    1066:	1000                	addi	s0,sp,32
    1068:	fea43423          	sd	a0,-24(s0)
    106c:	87ae                	mv	a5,a1
    106e:	fef403a3          	sb	a5,-25(s0)
    1072:	a01d                	j	1098 <strchr+0x36>
    1074:	fe843783          	ld	a5,-24(s0)
    1078:	0007c703          	lbu	a4,0(a5)
    107c:	fe744783          	lbu	a5,-25(s0)
    1080:	0ff7f793          	zext.b	a5,a5
    1084:	00e79563          	bne	a5,a4,108e <strchr+0x2c>
    1088:	fe843783          	ld	a5,-24(s0)
    108c:	a821                	j	10a4 <strchr+0x42>
    108e:	fe843783          	ld	a5,-24(s0)
    1092:	0785                	addi	a5,a5,1
    1094:	fef43423          	sd	a5,-24(s0)
    1098:	fe843783          	ld	a5,-24(s0)
    109c:	0007c783          	lbu	a5,0(a5)
    10a0:	fbf1                	bnez	a5,1074 <strchr+0x12>
    10a2:	4781                	li	a5,0
    10a4:	853e                	mv	a0,a5
    10a6:	6462                	ld	s0,24(sp)
    10a8:	6105                	addi	sp,sp,32
    10aa:	8082                	ret

00000000000010ac <gets>:
    10ac:	7179                	addi	sp,sp,-48
    10ae:	f406                	sd	ra,40(sp)
    10b0:	f022                	sd	s0,32(sp)
    10b2:	1800                	addi	s0,sp,48
    10b4:	fca43c23          	sd	a0,-40(s0)
    10b8:	87ae                	mv	a5,a1
    10ba:	fcf42a23          	sw	a5,-44(s0)
    10be:	fe042623          	sw	zero,-20(s0)
    10c2:	a8a1                	j	111a <gets+0x6e>
    10c4:	fe740793          	addi	a5,s0,-25
    10c8:	4605                	li	a2,1
    10ca:	85be                	mv	a1,a5
    10cc:	4501                	li	a0,0
    10ce:	00000097          	auipc	ra,0x0
    10d2:	2f8080e7          	jalr	760(ra) # 13c6 <read>
    10d6:	87aa                	mv	a5,a0
    10d8:	fef42423          	sw	a5,-24(s0)
    10dc:	fe842783          	lw	a5,-24(s0)
    10e0:	2781                	sext.w	a5,a5
    10e2:	04f05763          	blez	a5,1130 <gets+0x84>
    10e6:	fec42783          	lw	a5,-20(s0)
    10ea:	0017871b          	addiw	a4,a5,1
    10ee:	fee42623          	sw	a4,-20(s0)
    10f2:	873e                	mv	a4,a5
    10f4:	fd843783          	ld	a5,-40(s0)
    10f8:	97ba                	add	a5,a5,a4
    10fa:	fe744703          	lbu	a4,-25(s0)
    10fe:	00e78023          	sb	a4,0(a5)
    1102:	fe744783          	lbu	a5,-25(s0)
    1106:	873e                	mv	a4,a5
    1108:	47a9                	li	a5,10
    110a:	02f70463          	beq	a4,a5,1132 <gets+0x86>
    110e:	fe744783          	lbu	a5,-25(s0)
    1112:	873e                	mv	a4,a5
    1114:	47b5                	li	a5,13
    1116:	00f70e63          	beq	a4,a5,1132 <gets+0x86>
    111a:	fec42783          	lw	a5,-20(s0)
    111e:	2785                	addiw	a5,a5,1
    1120:	0007871b          	sext.w	a4,a5
    1124:	fd442783          	lw	a5,-44(s0)
    1128:	2781                	sext.w	a5,a5
    112a:	f8f74de3          	blt	a4,a5,10c4 <gets+0x18>
    112e:	a011                	j	1132 <gets+0x86>
    1130:	0001                	nop
    1132:	fec42783          	lw	a5,-20(s0)
    1136:	fd843703          	ld	a4,-40(s0)
    113a:	97ba                	add	a5,a5,a4
    113c:	00078023          	sb	zero,0(a5)
    1140:	fd843783          	ld	a5,-40(s0)
    1144:	853e                	mv	a0,a5
    1146:	70a2                	ld	ra,40(sp)
    1148:	7402                	ld	s0,32(sp)
    114a:	6145                	addi	sp,sp,48
    114c:	8082                	ret

000000000000114e <stat>:
    114e:	7179                	addi	sp,sp,-48
    1150:	f406                	sd	ra,40(sp)
    1152:	f022                	sd	s0,32(sp)
    1154:	1800                	addi	s0,sp,48
    1156:	fca43c23          	sd	a0,-40(s0)
    115a:	fcb43823          	sd	a1,-48(s0)
    115e:	4581                	li	a1,0
    1160:	fd843503          	ld	a0,-40(s0)
    1164:	00000097          	auipc	ra,0x0
    1168:	28a080e7          	jalr	650(ra) # 13ee <open>
    116c:	87aa                	mv	a5,a0
    116e:	fef42623          	sw	a5,-20(s0)
    1172:	fec42783          	lw	a5,-20(s0)
    1176:	2781                	sext.w	a5,a5
    1178:	0007d463          	bgez	a5,1180 <stat+0x32>
    117c:	57fd                	li	a5,-1
    117e:	a035                	j	11aa <stat+0x5c>
    1180:	fec42783          	lw	a5,-20(s0)
    1184:	fd043583          	ld	a1,-48(s0)
    1188:	853e                	mv	a0,a5
    118a:	00000097          	auipc	ra,0x0
    118e:	27c080e7          	jalr	636(ra) # 1406 <fstat>
    1192:	87aa                	mv	a5,a0
    1194:	fef42423          	sw	a5,-24(s0)
    1198:	fec42783          	lw	a5,-20(s0)
    119c:	853e                	mv	a0,a5
    119e:	00000097          	auipc	ra,0x0
    11a2:	238080e7          	jalr	568(ra) # 13d6 <close>
    11a6:	fe842783          	lw	a5,-24(s0)
    11aa:	853e                	mv	a0,a5
    11ac:	70a2                	ld	ra,40(sp)
    11ae:	7402                	ld	s0,32(sp)
    11b0:	6145                	addi	sp,sp,48
    11b2:	8082                	ret

00000000000011b4 <atoi>:
    11b4:	7179                	addi	sp,sp,-48
    11b6:	f422                	sd	s0,40(sp)
    11b8:	1800                	addi	s0,sp,48
    11ba:	fca43c23          	sd	a0,-40(s0)
    11be:	fe042623          	sw	zero,-20(s0)
    11c2:	a81d                	j	11f8 <atoi+0x44>
    11c4:	fec42783          	lw	a5,-20(s0)
    11c8:	873e                	mv	a4,a5
    11ca:	87ba                	mv	a5,a4
    11cc:	0027979b          	slliw	a5,a5,0x2
    11d0:	9fb9                	addw	a5,a5,a4
    11d2:	0017979b          	slliw	a5,a5,0x1
    11d6:	0007871b          	sext.w	a4,a5
    11da:	fd843783          	ld	a5,-40(s0)
    11de:	00178693          	addi	a3,a5,1
    11e2:	fcd43c23          	sd	a3,-40(s0)
    11e6:	0007c783          	lbu	a5,0(a5)
    11ea:	2781                	sext.w	a5,a5
    11ec:	9fb9                	addw	a5,a5,a4
    11ee:	2781                	sext.w	a5,a5
    11f0:	fd07879b          	addiw	a5,a5,-48
    11f4:	fef42623          	sw	a5,-20(s0)
    11f8:	fd843783          	ld	a5,-40(s0)
    11fc:	0007c783          	lbu	a5,0(a5)
    1200:	873e                	mv	a4,a5
    1202:	02f00793          	li	a5,47
    1206:	00e7fb63          	bgeu	a5,a4,121c <atoi+0x68>
    120a:	fd843783          	ld	a5,-40(s0)
    120e:	0007c783          	lbu	a5,0(a5)
    1212:	873e                	mv	a4,a5
    1214:	03900793          	li	a5,57
    1218:	fae7f6e3          	bgeu	a5,a4,11c4 <atoi+0x10>
    121c:	fec42783          	lw	a5,-20(s0)
    1220:	853e                	mv	a0,a5
    1222:	7422                	ld	s0,40(sp)
    1224:	6145                	addi	sp,sp,48
    1226:	8082                	ret

0000000000001228 <memmove>:
    1228:	7139                	addi	sp,sp,-64
    122a:	fc22                	sd	s0,56(sp)
    122c:	0080                	addi	s0,sp,64
    122e:	fca43c23          	sd	a0,-40(s0)
    1232:	fcb43823          	sd	a1,-48(s0)
    1236:	87b2                	mv	a5,a2
    1238:	fcf42623          	sw	a5,-52(s0)
    123c:	fd843783          	ld	a5,-40(s0)
    1240:	fef43423          	sd	a5,-24(s0)
    1244:	fd043783          	ld	a5,-48(s0)
    1248:	fef43023          	sd	a5,-32(s0)
    124c:	fe043703          	ld	a4,-32(s0)
    1250:	fe843783          	ld	a5,-24(s0)
    1254:	02e7fc63          	bgeu	a5,a4,128c <memmove+0x64>
    1258:	a00d                	j	127a <memmove+0x52>
    125a:	fe043703          	ld	a4,-32(s0)
    125e:	00170793          	addi	a5,a4,1
    1262:	fef43023          	sd	a5,-32(s0)
    1266:	fe843783          	ld	a5,-24(s0)
    126a:	00178693          	addi	a3,a5,1
    126e:	fed43423          	sd	a3,-24(s0)
    1272:	00074703          	lbu	a4,0(a4)
    1276:	00e78023          	sb	a4,0(a5)
    127a:	fcc42783          	lw	a5,-52(s0)
    127e:	fff7871b          	addiw	a4,a5,-1
    1282:	fce42623          	sw	a4,-52(s0)
    1286:	fcf04ae3          	bgtz	a5,125a <memmove+0x32>
    128a:	a891                	j	12de <memmove+0xb6>
    128c:	fcc42783          	lw	a5,-52(s0)
    1290:	fe843703          	ld	a4,-24(s0)
    1294:	97ba                	add	a5,a5,a4
    1296:	fef43423          	sd	a5,-24(s0)
    129a:	fcc42783          	lw	a5,-52(s0)
    129e:	fe043703          	ld	a4,-32(s0)
    12a2:	97ba                	add	a5,a5,a4
    12a4:	fef43023          	sd	a5,-32(s0)
    12a8:	a01d                	j	12ce <memmove+0xa6>
    12aa:	fe043783          	ld	a5,-32(s0)
    12ae:	17fd                	addi	a5,a5,-1
    12b0:	fef43023          	sd	a5,-32(s0)
    12b4:	fe843783          	ld	a5,-24(s0)
    12b8:	17fd                	addi	a5,a5,-1
    12ba:	fef43423          	sd	a5,-24(s0)
    12be:	fe043783          	ld	a5,-32(s0)
    12c2:	0007c703          	lbu	a4,0(a5)
    12c6:	fe843783          	ld	a5,-24(s0)
    12ca:	00e78023          	sb	a4,0(a5)
    12ce:	fcc42783          	lw	a5,-52(s0)
    12d2:	fff7871b          	addiw	a4,a5,-1
    12d6:	fce42623          	sw	a4,-52(s0)
    12da:	fcf048e3          	bgtz	a5,12aa <memmove+0x82>
    12de:	fd843783          	ld	a5,-40(s0)
    12e2:	853e                	mv	a0,a5
    12e4:	7462                	ld	s0,56(sp)
    12e6:	6121                	addi	sp,sp,64
    12e8:	8082                	ret

00000000000012ea <memcmp>:
    12ea:	7139                	addi	sp,sp,-64
    12ec:	fc22                	sd	s0,56(sp)
    12ee:	0080                	addi	s0,sp,64
    12f0:	fca43c23          	sd	a0,-40(s0)
    12f4:	fcb43823          	sd	a1,-48(s0)
    12f8:	87b2                	mv	a5,a2
    12fa:	fcf42623          	sw	a5,-52(s0)
    12fe:	fd843783          	ld	a5,-40(s0)
    1302:	fef43423          	sd	a5,-24(s0)
    1306:	fd043783          	ld	a5,-48(s0)
    130a:	fef43023          	sd	a5,-32(s0)
    130e:	a0a1                	j	1356 <memcmp+0x6c>
    1310:	fe843783          	ld	a5,-24(s0)
    1314:	0007c703          	lbu	a4,0(a5)
    1318:	fe043783          	ld	a5,-32(s0)
    131c:	0007c783          	lbu	a5,0(a5)
    1320:	02f70163          	beq	a4,a5,1342 <memcmp+0x58>
    1324:	fe843783          	ld	a5,-24(s0)
    1328:	0007c783          	lbu	a5,0(a5)
    132c:	0007871b          	sext.w	a4,a5
    1330:	fe043783          	ld	a5,-32(s0)
    1334:	0007c783          	lbu	a5,0(a5)
    1338:	2781                	sext.w	a5,a5
    133a:	40f707bb          	subw	a5,a4,a5
    133e:	2781                	sext.w	a5,a5
    1340:	a01d                	j	1366 <memcmp+0x7c>
    1342:	fe843783          	ld	a5,-24(s0)
    1346:	0785                	addi	a5,a5,1
    1348:	fef43423          	sd	a5,-24(s0)
    134c:	fe043783          	ld	a5,-32(s0)
    1350:	0785                	addi	a5,a5,1
    1352:	fef43023          	sd	a5,-32(s0)
    1356:	fcc42783          	lw	a5,-52(s0)
    135a:	fff7871b          	addiw	a4,a5,-1
    135e:	fce42623          	sw	a4,-52(s0)
    1362:	f7dd                	bnez	a5,1310 <memcmp+0x26>
    1364:	4781                	li	a5,0
    1366:	853e                	mv	a0,a5
    1368:	7462                	ld	s0,56(sp)
    136a:	6121                	addi	sp,sp,64
    136c:	8082                	ret

000000000000136e <memcpy>:
    136e:	7179                	addi	sp,sp,-48
    1370:	f406                	sd	ra,40(sp)
    1372:	f022                	sd	s0,32(sp)
    1374:	1800                	addi	s0,sp,48
    1376:	fea43423          	sd	a0,-24(s0)
    137a:	feb43023          	sd	a1,-32(s0)
    137e:	87b2                	mv	a5,a2
    1380:	fcf42e23          	sw	a5,-36(s0)
    1384:	fdc42783          	lw	a5,-36(s0)
    1388:	863e                	mv	a2,a5
    138a:	fe043583          	ld	a1,-32(s0)
    138e:	fe843503          	ld	a0,-24(s0)
    1392:	00000097          	auipc	ra,0x0
    1396:	e96080e7          	jalr	-362(ra) # 1228 <memmove>
    139a:	87aa                	mv	a5,a0
    139c:	853e                	mv	a0,a5
    139e:	70a2                	ld	ra,40(sp)
    13a0:	7402                	ld	s0,32(sp)
    13a2:	6145                	addi	sp,sp,48
    13a4:	8082                	ret

00000000000013a6 <fork>:
    13a6:	4885                	li	a7,1
    13a8:	00000073          	ecall
    13ac:	8082                	ret

00000000000013ae <exit>:
    13ae:	4889                	li	a7,2
    13b0:	00000073          	ecall
    13b4:	8082                	ret

00000000000013b6 <wait>:
    13b6:	488d                	li	a7,3
    13b8:	00000073          	ecall
    13bc:	8082                	ret

00000000000013be <pipe>:
    13be:	4891                	li	a7,4
    13c0:	00000073          	ecall
    13c4:	8082                	ret

00000000000013c6 <read>:
    13c6:	4895                	li	a7,5
    13c8:	00000073          	ecall
    13cc:	8082                	ret

00000000000013ce <write>:
    13ce:	48c1                	li	a7,16
    13d0:	00000073          	ecall
    13d4:	8082                	ret

00000000000013d6 <close>:
    13d6:	48d5                	li	a7,21
    13d8:	00000073          	ecall
    13dc:	8082                	ret

00000000000013de <kill>:
    13de:	4899                	li	a7,6
    13e0:	00000073          	ecall
    13e4:	8082                	ret

00000000000013e6 <exec>:
    13e6:	489d                	li	a7,7
    13e8:	00000073          	ecall
    13ec:	8082                	ret

00000000000013ee <open>:
    13ee:	48bd                	li	a7,15
    13f0:	00000073          	ecall
    13f4:	8082                	ret

00000000000013f6 <mknod>:
    13f6:	48c5                	li	a7,17
    13f8:	00000073          	ecall
    13fc:	8082                	ret

00000000000013fe <unlink>:
    13fe:	48c9                	li	a7,18
    1400:	00000073          	ecall
    1404:	8082                	ret

0000000000001406 <fstat>:
    1406:	48a1                	li	a7,8
    1408:	00000073          	ecall
    140c:	8082                	ret

000000000000140e <link>:
    140e:	48cd                	li	a7,19
    1410:	00000073          	ecall
    1414:	8082                	ret

0000000000001416 <mkdir>:
    1416:	48d1                	li	a7,20
    1418:	00000073          	ecall
    141c:	8082                	ret

000000000000141e <chdir>:
    141e:	48a5                	li	a7,9
    1420:	00000073          	ecall
    1424:	8082                	ret

0000000000001426 <dup>:
    1426:	48a9                	li	a7,10
    1428:	00000073          	ecall
    142c:	8082                	ret

000000000000142e <getpid>:
    142e:	48ad                	li	a7,11
    1430:	00000073          	ecall
    1434:	8082                	ret

0000000000001436 <sbrk>:
    1436:	48b1                	li	a7,12
    1438:	00000073          	ecall
    143c:	8082                	ret

000000000000143e <sleep>:
    143e:	48b5                	li	a7,13
    1440:	00000073          	ecall
    1444:	8082                	ret

0000000000001446 <uptime>:
    1446:	48b9                	li	a7,14
    1448:	00000073          	ecall
    144c:	8082                	ret

000000000000144e <waitx>:
    144e:	48d9                	li	a7,22
    1450:	00000073          	ecall
    1454:	8082                	ret

0000000000001456 <getsyscount>:
    1456:	48dd                	li	a7,23
    1458:	00000073          	ecall
    145c:	8082                	ret

000000000000145e <sigalarm>:
    145e:	48e1                	li	a7,24
    1460:	00000073          	ecall
    1464:	8082                	ret

0000000000001466 <sigreturn>:
    1466:	48e5                	li	a7,25
    1468:	00000073          	ecall
    146c:	8082                	ret

000000000000146e <settickets>:
    146e:	48e9                	li	a7,26
    1470:	00000073          	ecall
    1474:	8082                	ret

0000000000001476 <putc>:
    1476:	1101                	addi	sp,sp,-32
    1478:	ec06                	sd	ra,24(sp)
    147a:	e822                	sd	s0,16(sp)
    147c:	1000                	addi	s0,sp,32
    147e:	87aa                	mv	a5,a0
    1480:	872e                	mv	a4,a1
    1482:	fef42623          	sw	a5,-20(s0)
    1486:	87ba                	mv	a5,a4
    1488:	fef405a3          	sb	a5,-21(s0)
    148c:	feb40713          	addi	a4,s0,-21
    1490:	fec42783          	lw	a5,-20(s0)
    1494:	4605                	li	a2,1
    1496:	85ba                	mv	a1,a4
    1498:	853e                	mv	a0,a5
    149a:	00000097          	auipc	ra,0x0
    149e:	f34080e7          	jalr	-204(ra) # 13ce <write>
    14a2:	0001                	nop
    14a4:	60e2                	ld	ra,24(sp)
    14a6:	6442                	ld	s0,16(sp)
    14a8:	6105                	addi	sp,sp,32
    14aa:	8082                	ret

00000000000014ac <printint>:
    14ac:	7139                	addi	sp,sp,-64
    14ae:	fc06                	sd	ra,56(sp)
    14b0:	f822                	sd	s0,48(sp)
    14b2:	0080                	addi	s0,sp,64
    14b4:	87aa                	mv	a5,a0
    14b6:	8736                	mv	a4,a3
    14b8:	fcf42623          	sw	a5,-52(s0)
    14bc:	87ae                	mv	a5,a1
    14be:	fcf42423          	sw	a5,-56(s0)
    14c2:	87b2                	mv	a5,a2
    14c4:	fcf42223          	sw	a5,-60(s0)
    14c8:	87ba                	mv	a5,a4
    14ca:	fcf42023          	sw	a5,-64(s0)
    14ce:	fe042423          	sw	zero,-24(s0)
    14d2:	fc042783          	lw	a5,-64(s0)
    14d6:	2781                	sext.w	a5,a5
    14d8:	c38d                	beqz	a5,14fa <printint+0x4e>
    14da:	fc842783          	lw	a5,-56(s0)
    14de:	2781                	sext.w	a5,a5
    14e0:	0007dd63          	bgez	a5,14fa <printint+0x4e>
    14e4:	4785                	li	a5,1
    14e6:	fef42423          	sw	a5,-24(s0)
    14ea:	fc842783          	lw	a5,-56(s0)
    14ee:	40f007bb          	negw	a5,a5
    14f2:	2781                	sext.w	a5,a5
    14f4:	fef42223          	sw	a5,-28(s0)
    14f8:	a029                	j	1502 <printint+0x56>
    14fa:	fc842783          	lw	a5,-56(s0)
    14fe:	fef42223          	sw	a5,-28(s0)
    1502:	fe042623          	sw	zero,-20(s0)
    1506:	fc442783          	lw	a5,-60(s0)
    150a:	fe442703          	lw	a4,-28(s0)
    150e:	02f777bb          	remuw	a5,a4,a5
    1512:	0007861b          	sext.w	a2,a5
    1516:	fec42783          	lw	a5,-20(s0)
    151a:	0017871b          	addiw	a4,a5,1
    151e:	fee42623          	sw	a4,-20(s0)
    1522:	00001697          	auipc	a3,0x1
    1526:	aee68693          	addi	a3,a3,-1298 # 2010 <digits>
    152a:	02061713          	slli	a4,a2,0x20
    152e:	9301                	srli	a4,a4,0x20
    1530:	9736                	add	a4,a4,a3
    1532:	00074703          	lbu	a4,0(a4)
    1536:	17c1                	addi	a5,a5,-16
    1538:	97a2                	add	a5,a5,s0
    153a:	fee78023          	sb	a4,-32(a5)
    153e:	fc442783          	lw	a5,-60(s0)
    1542:	fe442703          	lw	a4,-28(s0)
    1546:	02f757bb          	divuw	a5,a4,a5
    154a:	fef42223          	sw	a5,-28(s0)
    154e:	fe442783          	lw	a5,-28(s0)
    1552:	2781                	sext.w	a5,a5
    1554:	fbcd                	bnez	a5,1506 <printint+0x5a>
    1556:	fe842783          	lw	a5,-24(s0)
    155a:	2781                	sext.w	a5,a5
    155c:	cf85                	beqz	a5,1594 <printint+0xe8>
    155e:	fec42783          	lw	a5,-20(s0)
    1562:	0017871b          	addiw	a4,a5,1
    1566:	fee42623          	sw	a4,-20(s0)
    156a:	17c1                	addi	a5,a5,-16
    156c:	97a2                	add	a5,a5,s0
    156e:	02d00713          	li	a4,45
    1572:	fee78023          	sb	a4,-32(a5)
    1576:	a839                	j	1594 <printint+0xe8>
    1578:	fec42783          	lw	a5,-20(s0)
    157c:	17c1                	addi	a5,a5,-16
    157e:	97a2                	add	a5,a5,s0
    1580:	fe07c703          	lbu	a4,-32(a5)
    1584:	fcc42783          	lw	a5,-52(s0)
    1588:	85ba                	mv	a1,a4
    158a:	853e                	mv	a0,a5
    158c:	00000097          	auipc	ra,0x0
    1590:	eea080e7          	jalr	-278(ra) # 1476 <putc>
    1594:	fec42783          	lw	a5,-20(s0)
    1598:	37fd                	addiw	a5,a5,-1
    159a:	fef42623          	sw	a5,-20(s0)
    159e:	fec42783          	lw	a5,-20(s0)
    15a2:	2781                	sext.w	a5,a5
    15a4:	fc07dae3          	bgez	a5,1578 <printint+0xcc>
    15a8:	0001                	nop
    15aa:	0001                	nop
    15ac:	70e2                	ld	ra,56(sp)
    15ae:	7442                	ld	s0,48(sp)
    15b0:	6121                	addi	sp,sp,64
    15b2:	8082                	ret

00000000000015b4 <printptr>:
    15b4:	7179                	addi	sp,sp,-48
    15b6:	f406                	sd	ra,40(sp)
    15b8:	f022                	sd	s0,32(sp)
    15ba:	1800                	addi	s0,sp,48
    15bc:	87aa                	mv	a5,a0
    15be:	fcb43823          	sd	a1,-48(s0)
    15c2:	fcf42e23          	sw	a5,-36(s0)
    15c6:	fdc42783          	lw	a5,-36(s0)
    15ca:	03000593          	li	a1,48
    15ce:	853e                	mv	a0,a5
    15d0:	00000097          	auipc	ra,0x0
    15d4:	ea6080e7          	jalr	-346(ra) # 1476 <putc>
    15d8:	fdc42783          	lw	a5,-36(s0)
    15dc:	07800593          	li	a1,120
    15e0:	853e                	mv	a0,a5
    15e2:	00000097          	auipc	ra,0x0
    15e6:	e94080e7          	jalr	-364(ra) # 1476 <putc>
    15ea:	fe042623          	sw	zero,-20(s0)
    15ee:	a82d                	j	1628 <printptr+0x74>
    15f0:	fd043783          	ld	a5,-48(s0)
    15f4:	93f1                	srli	a5,a5,0x3c
    15f6:	00001717          	auipc	a4,0x1
    15fa:	a1a70713          	addi	a4,a4,-1510 # 2010 <digits>
    15fe:	97ba                	add	a5,a5,a4
    1600:	0007c703          	lbu	a4,0(a5)
    1604:	fdc42783          	lw	a5,-36(s0)
    1608:	85ba                	mv	a1,a4
    160a:	853e                	mv	a0,a5
    160c:	00000097          	auipc	ra,0x0
    1610:	e6a080e7          	jalr	-406(ra) # 1476 <putc>
    1614:	fec42783          	lw	a5,-20(s0)
    1618:	2785                	addiw	a5,a5,1
    161a:	fef42623          	sw	a5,-20(s0)
    161e:	fd043783          	ld	a5,-48(s0)
    1622:	0792                	slli	a5,a5,0x4
    1624:	fcf43823          	sd	a5,-48(s0)
    1628:	fec42783          	lw	a5,-20(s0)
    162c:	873e                	mv	a4,a5
    162e:	47bd                	li	a5,15
    1630:	fce7f0e3          	bgeu	a5,a4,15f0 <printptr+0x3c>
    1634:	0001                	nop
    1636:	0001                	nop
    1638:	70a2                	ld	ra,40(sp)
    163a:	7402                	ld	s0,32(sp)
    163c:	6145                	addi	sp,sp,48
    163e:	8082                	ret

0000000000001640 <vprintf>:
    1640:	715d                	addi	sp,sp,-80
    1642:	e486                	sd	ra,72(sp)
    1644:	e0a2                	sd	s0,64(sp)
    1646:	0880                	addi	s0,sp,80
    1648:	87aa                	mv	a5,a0
    164a:	fcb43023          	sd	a1,-64(s0)
    164e:	fac43c23          	sd	a2,-72(s0)
    1652:	fcf42623          	sw	a5,-52(s0)
    1656:	fe042023          	sw	zero,-32(s0)
    165a:	fe042223          	sw	zero,-28(s0)
    165e:	a42d                	j	1888 <vprintf+0x248>
    1660:	fe442783          	lw	a5,-28(s0)
    1664:	fc043703          	ld	a4,-64(s0)
    1668:	97ba                	add	a5,a5,a4
    166a:	0007c783          	lbu	a5,0(a5)
    166e:	fcf42e23          	sw	a5,-36(s0)
    1672:	fe042783          	lw	a5,-32(s0)
    1676:	2781                	sext.w	a5,a5
    1678:	eb9d                	bnez	a5,16ae <vprintf+0x6e>
    167a:	fdc42783          	lw	a5,-36(s0)
    167e:	0007871b          	sext.w	a4,a5
    1682:	02500793          	li	a5,37
    1686:	00f71763          	bne	a4,a5,1694 <vprintf+0x54>
    168a:	02500793          	li	a5,37
    168e:	fef42023          	sw	a5,-32(s0)
    1692:	a2f5                	j	187e <vprintf+0x23e>
    1694:	fdc42783          	lw	a5,-36(s0)
    1698:	0ff7f713          	zext.b	a4,a5
    169c:	fcc42783          	lw	a5,-52(s0)
    16a0:	85ba                	mv	a1,a4
    16a2:	853e                	mv	a0,a5
    16a4:	00000097          	auipc	ra,0x0
    16a8:	dd2080e7          	jalr	-558(ra) # 1476 <putc>
    16ac:	aac9                	j	187e <vprintf+0x23e>
    16ae:	fe042783          	lw	a5,-32(s0)
    16b2:	0007871b          	sext.w	a4,a5
    16b6:	02500793          	li	a5,37
    16ba:	1cf71263          	bne	a4,a5,187e <vprintf+0x23e>
    16be:	fdc42783          	lw	a5,-36(s0)
    16c2:	0007871b          	sext.w	a4,a5
    16c6:	06400793          	li	a5,100
    16ca:	02f71463          	bne	a4,a5,16f2 <vprintf+0xb2>
    16ce:	fb843783          	ld	a5,-72(s0)
    16d2:	00878713          	addi	a4,a5,8
    16d6:	fae43c23          	sd	a4,-72(s0)
    16da:	4398                	lw	a4,0(a5)
    16dc:	fcc42783          	lw	a5,-52(s0)
    16e0:	4685                	li	a3,1
    16e2:	4629                	li	a2,10
    16e4:	85ba                	mv	a1,a4
    16e6:	853e                	mv	a0,a5
    16e8:	00000097          	auipc	ra,0x0
    16ec:	dc4080e7          	jalr	-572(ra) # 14ac <printint>
    16f0:	a269                	j	187a <vprintf+0x23a>
    16f2:	fdc42783          	lw	a5,-36(s0)
    16f6:	0007871b          	sext.w	a4,a5
    16fa:	06c00793          	li	a5,108
    16fe:	02f71663          	bne	a4,a5,172a <vprintf+0xea>
    1702:	fb843783          	ld	a5,-72(s0)
    1706:	00878713          	addi	a4,a5,8
    170a:	fae43c23          	sd	a4,-72(s0)
    170e:	639c                	ld	a5,0(a5)
    1710:	0007871b          	sext.w	a4,a5
    1714:	fcc42783          	lw	a5,-52(s0)
    1718:	4681                	li	a3,0
    171a:	4629                	li	a2,10
    171c:	85ba                	mv	a1,a4
    171e:	853e                	mv	a0,a5
    1720:	00000097          	auipc	ra,0x0
    1724:	d8c080e7          	jalr	-628(ra) # 14ac <printint>
    1728:	aa89                	j	187a <vprintf+0x23a>
    172a:	fdc42783          	lw	a5,-36(s0)
    172e:	0007871b          	sext.w	a4,a5
    1732:	07800793          	li	a5,120
    1736:	02f71463          	bne	a4,a5,175e <vprintf+0x11e>
    173a:	fb843783          	ld	a5,-72(s0)
    173e:	00878713          	addi	a4,a5,8
    1742:	fae43c23          	sd	a4,-72(s0)
    1746:	4398                	lw	a4,0(a5)
    1748:	fcc42783          	lw	a5,-52(s0)
    174c:	4681                	li	a3,0
    174e:	4641                	li	a2,16
    1750:	85ba                	mv	a1,a4
    1752:	853e                	mv	a0,a5
    1754:	00000097          	auipc	ra,0x0
    1758:	d58080e7          	jalr	-680(ra) # 14ac <printint>
    175c:	aa39                	j	187a <vprintf+0x23a>
    175e:	fdc42783          	lw	a5,-36(s0)
    1762:	0007871b          	sext.w	a4,a5
    1766:	07000793          	li	a5,112
    176a:	02f71263          	bne	a4,a5,178e <vprintf+0x14e>
    176e:	fb843783          	ld	a5,-72(s0)
    1772:	00878713          	addi	a4,a5,8
    1776:	fae43c23          	sd	a4,-72(s0)
    177a:	6398                	ld	a4,0(a5)
    177c:	fcc42783          	lw	a5,-52(s0)
    1780:	85ba                	mv	a1,a4
    1782:	853e                	mv	a0,a5
    1784:	00000097          	auipc	ra,0x0
    1788:	e30080e7          	jalr	-464(ra) # 15b4 <printptr>
    178c:	a0fd                	j	187a <vprintf+0x23a>
    178e:	fdc42783          	lw	a5,-36(s0)
    1792:	0007871b          	sext.w	a4,a5
    1796:	07300793          	li	a5,115
    179a:	04f71c63          	bne	a4,a5,17f2 <vprintf+0x1b2>
    179e:	fb843783          	ld	a5,-72(s0)
    17a2:	00878713          	addi	a4,a5,8
    17a6:	fae43c23          	sd	a4,-72(s0)
    17aa:	639c                	ld	a5,0(a5)
    17ac:	fef43423          	sd	a5,-24(s0)
    17b0:	fe843783          	ld	a5,-24(s0)
    17b4:	eb8d                	bnez	a5,17e6 <vprintf+0x1a6>
    17b6:	00000797          	auipc	a5,0x0
    17ba:	77a78793          	addi	a5,a5,1914 # 1f30 <malloc+0x440>
    17be:	fef43423          	sd	a5,-24(s0)
    17c2:	a015                	j	17e6 <vprintf+0x1a6>
    17c4:	fe843783          	ld	a5,-24(s0)
    17c8:	0007c703          	lbu	a4,0(a5)
    17cc:	fcc42783          	lw	a5,-52(s0)
    17d0:	85ba                	mv	a1,a4
    17d2:	853e                	mv	a0,a5
    17d4:	00000097          	auipc	ra,0x0
    17d8:	ca2080e7          	jalr	-862(ra) # 1476 <putc>
    17dc:	fe843783          	ld	a5,-24(s0)
    17e0:	0785                	addi	a5,a5,1
    17e2:	fef43423          	sd	a5,-24(s0)
    17e6:	fe843783          	ld	a5,-24(s0)
    17ea:	0007c783          	lbu	a5,0(a5)
    17ee:	fbf9                	bnez	a5,17c4 <vprintf+0x184>
    17f0:	a069                	j	187a <vprintf+0x23a>
    17f2:	fdc42783          	lw	a5,-36(s0)
    17f6:	0007871b          	sext.w	a4,a5
    17fa:	06300793          	li	a5,99
    17fe:	02f71463          	bne	a4,a5,1826 <vprintf+0x1e6>
    1802:	fb843783          	ld	a5,-72(s0)
    1806:	00878713          	addi	a4,a5,8
    180a:	fae43c23          	sd	a4,-72(s0)
    180e:	439c                	lw	a5,0(a5)
    1810:	0ff7f713          	zext.b	a4,a5
    1814:	fcc42783          	lw	a5,-52(s0)
    1818:	85ba                	mv	a1,a4
    181a:	853e                	mv	a0,a5
    181c:	00000097          	auipc	ra,0x0
    1820:	c5a080e7          	jalr	-934(ra) # 1476 <putc>
    1824:	a899                	j	187a <vprintf+0x23a>
    1826:	fdc42783          	lw	a5,-36(s0)
    182a:	0007871b          	sext.w	a4,a5
    182e:	02500793          	li	a5,37
    1832:	00f71f63          	bne	a4,a5,1850 <vprintf+0x210>
    1836:	fdc42783          	lw	a5,-36(s0)
    183a:	0ff7f713          	zext.b	a4,a5
    183e:	fcc42783          	lw	a5,-52(s0)
    1842:	85ba                	mv	a1,a4
    1844:	853e                	mv	a0,a5
    1846:	00000097          	auipc	ra,0x0
    184a:	c30080e7          	jalr	-976(ra) # 1476 <putc>
    184e:	a035                	j	187a <vprintf+0x23a>
    1850:	fcc42783          	lw	a5,-52(s0)
    1854:	02500593          	li	a1,37
    1858:	853e                	mv	a0,a5
    185a:	00000097          	auipc	ra,0x0
    185e:	c1c080e7          	jalr	-996(ra) # 1476 <putc>
    1862:	fdc42783          	lw	a5,-36(s0)
    1866:	0ff7f713          	zext.b	a4,a5
    186a:	fcc42783          	lw	a5,-52(s0)
    186e:	85ba                	mv	a1,a4
    1870:	853e                	mv	a0,a5
    1872:	00000097          	auipc	ra,0x0
    1876:	c04080e7          	jalr	-1020(ra) # 1476 <putc>
    187a:	fe042023          	sw	zero,-32(s0)
    187e:	fe442783          	lw	a5,-28(s0)
    1882:	2785                	addiw	a5,a5,1
    1884:	fef42223          	sw	a5,-28(s0)
    1888:	fe442783          	lw	a5,-28(s0)
    188c:	fc043703          	ld	a4,-64(s0)
    1890:	97ba                	add	a5,a5,a4
    1892:	0007c783          	lbu	a5,0(a5)
    1896:	dc0795e3          	bnez	a5,1660 <vprintf+0x20>
    189a:	0001                	nop
    189c:	0001                	nop
    189e:	60a6                	ld	ra,72(sp)
    18a0:	6406                	ld	s0,64(sp)
    18a2:	6161                	addi	sp,sp,80
    18a4:	8082                	ret

00000000000018a6 <fprintf>:
    18a6:	7159                	addi	sp,sp,-112
    18a8:	fc06                	sd	ra,56(sp)
    18aa:	f822                	sd	s0,48(sp)
    18ac:	0080                	addi	s0,sp,64
    18ae:	fcb43823          	sd	a1,-48(s0)
    18b2:	e010                	sd	a2,0(s0)
    18b4:	e414                	sd	a3,8(s0)
    18b6:	e818                	sd	a4,16(s0)
    18b8:	ec1c                	sd	a5,24(s0)
    18ba:	03043023          	sd	a6,32(s0)
    18be:	03143423          	sd	a7,40(s0)
    18c2:	87aa                	mv	a5,a0
    18c4:	fcf42e23          	sw	a5,-36(s0)
    18c8:	03040793          	addi	a5,s0,48
    18cc:	fcf43423          	sd	a5,-56(s0)
    18d0:	fc843783          	ld	a5,-56(s0)
    18d4:	fd078793          	addi	a5,a5,-48
    18d8:	fef43423          	sd	a5,-24(s0)
    18dc:	fe843703          	ld	a4,-24(s0)
    18e0:	fdc42783          	lw	a5,-36(s0)
    18e4:	863a                	mv	a2,a4
    18e6:	fd043583          	ld	a1,-48(s0)
    18ea:	853e                	mv	a0,a5
    18ec:	00000097          	auipc	ra,0x0
    18f0:	d54080e7          	jalr	-684(ra) # 1640 <vprintf>
    18f4:	0001                	nop
    18f6:	70e2                	ld	ra,56(sp)
    18f8:	7442                	ld	s0,48(sp)
    18fa:	6165                	addi	sp,sp,112
    18fc:	8082                	ret

00000000000018fe <printf>:
    18fe:	7159                	addi	sp,sp,-112
    1900:	f406                	sd	ra,40(sp)
    1902:	f022                	sd	s0,32(sp)
    1904:	1800                	addi	s0,sp,48
    1906:	fca43c23          	sd	a0,-40(s0)
    190a:	e40c                	sd	a1,8(s0)
    190c:	e810                	sd	a2,16(s0)
    190e:	ec14                	sd	a3,24(s0)
    1910:	f018                	sd	a4,32(s0)
    1912:	f41c                	sd	a5,40(s0)
    1914:	03043823          	sd	a6,48(s0)
    1918:	03143c23          	sd	a7,56(s0)
    191c:	04040793          	addi	a5,s0,64
    1920:	fcf43823          	sd	a5,-48(s0)
    1924:	fd043783          	ld	a5,-48(s0)
    1928:	fc878793          	addi	a5,a5,-56
    192c:	fef43423          	sd	a5,-24(s0)
    1930:	fe843783          	ld	a5,-24(s0)
    1934:	863e                	mv	a2,a5
    1936:	fd843583          	ld	a1,-40(s0)
    193a:	4505                	li	a0,1
    193c:	00000097          	auipc	ra,0x0
    1940:	d04080e7          	jalr	-764(ra) # 1640 <vprintf>
    1944:	0001                	nop
    1946:	70a2                	ld	ra,40(sp)
    1948:	7402                	ld	s0,32(sp)
    194a:	6165                	addi	sp,sp,112
    194c:	8082                	ret

000000000000194e <free>:
    194e:	7179                	addi	sp,sp,-48
    1950:	f422                	sd	s0,40(sp)
    1952:	1800                	addi	s0,sp,48
    1954:	fca43c23          	sd	a0,-40(s0)
    1958:	fd843783          	ld	a5,-40(s0)
    195c:	17c1                	addi	a5,a5,-16
    195e:	fef43023          	sd	a5,-32(s0)
    1962:	00001797          	auipc	a5,0x1
    1966:	ac678793          	addi	a5,a5,-1338 # 2428 <freep>
    196a:	639c                	ld	a5,0(a5)
    196c:	fef43423          	sd	a5,-24(s0)
    1970:	a815                	j	19a4 <free+0x56>
    1972:	fe843783          	ld	a5,-24(s0)
    1976:	639c                	ld	a5,0(a5)
    1978:	fe843703          	ld	a4,-24(s0)
    197c:	00f76f63          	bltu	a4,a5,199a <free+0x4c>
    1980:	fe043703          	ld	a4,-32(s0)
    1984:	fe843783          	ld	a5,-24(s0)
    1988:	02e7eb63          	bltu	a5,a4,19be <free+0x70>
    198c:	fe843783          	ld	a5,-24(s0)
    1990:	639c                	ld	a5,0(a5)
    1992:	fe043703          	ld	a4,-32(s0)
    1996:	02f76463          	bltu	a4,a5,19be <free+0x70>
    199a:	fe843783          	ld	a5,-24(s0)
    199e:	639c                	ld	a5,0(a5)
    19a0:	fef43423          	sd	a5,-24(s0)
    19a4:	fe043703          	ld	a4,-32(s0)
    19a8:	fe843783          	ld	a5,-24(s0)
    19ac:	fce7f3e3          	bgeu	a5,a4,1972 <free+0x24>
    19b0:	fe843783          	ld	a5,-24(s0)
    19b4:	639c                	ld	a5,0(a5)
    19b6:	fe043703          	ld	a4,-32(s0)
    19ba:	faf77ce3          	bgeu	a4,a5,1972 <free+0x24>
    19be:	fe043783          	ld	a5,-32(s0)
    19c2:	479c                	lw	a5,8(a5)
    19c4:	1782                	slli	a5,a5,0x20
    19c6:	9381                	srli	a5,a5,0x20
    19c8:	0792                	slli	a5,a5,0x4
    19ca:	fe043703          	ld	a4,-32(s0)
    19ce:	973e                	add	a4,a4,a5
    19d0:	fe843783          	ld	a5,-24(s0)
    19d4:	639c                	ld	a5,0(a5)
    19d6:	02f71763          	bne	a4,a5,1a04 <free+0xb6>
    19da:	fe043783          	ld	a5,-32(s0)
    19de:	4798                	lw	a4,8(a5)
    19e0:	fe843783          	ld	a5,-24(s0)
    19e4:	639c                	ld	a5,0(a5)
    19e6:	479c                	lw	a5,8(a5)
    19e8:	9fb9                	addw	a5,a5,a4
    19ea:	0007871b          	sext.w	a4,a5
    19ee:	fe043783          	ld	a5,-32(s0)
    19f2:	c798                	sw	a4,8(a5)
    19f4:	fe843783          	ld	a5,-24(s0)
    19f8:	639c                	ld	a5,0(a5)
    19fa:	6398                	ld	a4,0(a5)
    19fc:	fe043783          	ld	a5,-32(s0)
    1a00:	e398                	sd	a4,0(a5)
    1a02:	a039                	j	1a10 <free+0xc2>
    1a04:	fe843783          	ld	a5,-24(s0)
    1a08:	6398                	ld	a4,0(a5)
    1a0a:	fe043783          	ld	a5,-32(s0)
    1a0e:	e398                	sd	a4,0(a5)
    1a10:	fe843783          	ld	a5,-24(s0)
    1a14:	479c                	lw	a5,8(a5)
    1a16:	1782                	slli	a5,a5,0x20
    1a18:	9381                	srli	a5,a5,0x20
    1a1a:	0792                	slli	a5,a5,0x4
    1a1c:	fe843703          	ld	a4,-24(s0)
    1a20:	97ba                	add	a5,a5,a4
    1a22:	fe043703          	ld	a4,-32(s0)
    1a26:	02f71563          	bne	a4,a5,1a50 <free+0x102>
    1a2a:	fe843783          	ld	a5,-24(s0)
    1a2e:	4798                	lw	a4,8(a5)
    1a30:	fe043783          	ld	a5,-32(s0)
    1a34:	479c                	lw	a5,8(a5)
    1a36:	9fb9                	addw	a5,a5,a4
    1a38:	0007871b          	sext.w	a4,a5
    1a3c:	fe843783          	ld	a5,-24(s0)
    1a40:	c798                	sw	a4,8(a5)
    1a42:	fe043783          	ld	a5,-32(s0)
    1a46:	6398                	ld	a4,0(a5)
    1a48:	fe843783          	ld	a5,-24(s0)
    1a4c:	e398                	sd	a4,0(a5)
    1a4e:	a031                	j	1a5a <free+0x10c>
    1a50:	fe843783          	ld	a5,-24(s0)
    1a54:	fe043703          	ld	a4,-32(s0)
    1a58:	e398                	sd	a4,0(a5)
    1a5a:	00001797          	auipc	a5,0x1
    1a5e:	9ce78793          	addi	a5,a5,-1586 # 2428 <freep>
    1a62:	fe843703          	ld	a4,-24(s0)
    1a66:	e398                	sd	a4,0(a5)
    1a68:	0001                	nop
    1a6a:	7422                	ld	s0,40(sp)
    1a6c:	6145                	addi	sp,sp,48
    1a6e:	8082                	ret

0000000000001a70 <morecore>:
    1a70:	7179                	addi	sp,sp,-48
    1a72:	f406                	sd	ra,40(sp)
    1a74:	f022                	sd	s0,32(sp)
    1a76:	1800                	addi	s0,sp,48
    1a78:	87aa                	mv	a5,a0
    1a7a:	fcf42e23          	sw	a5,-36(s0)
    1a7e:	fdc42783          	lw	a5,-36(s0)
    1a82:	0007871b          	sext.w	a4,a5
    1a86:	6785                	lui	a5,0x1
    1a88:	00f77563          	bgeu	a4,a5,1a92 <morecore+0x22>
    1a8c:	6785                	lui	a5,0x1
    1a8e:	fcf42e23          	sw	a5,-36(s0)
    1a92:	fdc42783          	lw	a5,-36(s0)
    1a96:	0047979b          	slliw	a5,a5,0x4
    1a9a:	2781                	sext.w	a5,a5
    1a9c:	2781                	sext.w	a5,a5
    1a9e:	853e                	mv	a0,a5
    1aa0:	00000097          	auipc	ra,0x0
    1aa4:	996080e7          	jalr	-1642(ra) # 1436 <sbrk>
    1aa8:	fea43423          	sd	a0,-24(s0)
    1aac:	fe843703          	ld	a4,-24(s0)
    1ab0:	57fd                	li	a5,-1
    1ab2:	00f71463          	bne	a4,a5,1aba <morecore+0x4a>
    1ab6:	4781                	li	a5,0
    1ab8:	a03d                	j	1ae6 <morecore+0x76>
    1aba:	fe843783          	ld	a5,-24(s0)
    1abe:	fef43023          	sd	a5,-32(s0)
    1ac2:	fe043783          	ld	a5,-32(s0)
    1ac6:	fdc42703          	lw	a4,-36(s0)
    1aca:	c798                	sw	a4,8(a5)
    1acc:	fe043783          	ld	a5,-32(s0)
    1ad0:	07c1                	addi	a5,a5,16 # 1010 <memset+0xe>
    1ad2:	853e                	mv	a0,a5
    1ad4:	00000097          	auipc	ra,0x0
    1ad8:	e7a080e7          	jalr	-390(ra) # 194e <free>
    1adc:	00001797          	auipc	a5,0x1
    1ae0:	94c78793          	addi	a5,a5,-1716 # 2428 <freep>
    1ae4:	639c                	ld	a5,0(a5)
    1ae6:	853e                	mv	a0,a5
    1ae8:	70a2                	ld	ra,40(sp)
    1aea:	7402                	ld	s0,32(sp)
    1aec:	6145                	addi	sp,sp,48
    1aee:	8082                	ret

0000000000001af0 <malloc>:
    1af0:	7139                	addi	sp,sp,-64
    1af2:	fc06                	sd	ra,56(sp)
    1af4:	f822                	sd	s0,48(sp)
    1af6:	0080                	addi	s0,sp,64
    1af8:	87aa                	mv	a5,a0
    1afa:	fcf42623          	sw	a5,-52(s0)
    1afe:	fcc46783          	lwu	a5,-52(s0)
    1b02:	07bd                	addi	a5,a5,15
    1b04:	8391                	srli	a5,a5,0x4
    1b06:	2781                	sext.w	a5,a5
    1b08:	2785                	addiw	a5,a5,1
    1b0a:	fcf42e23          	sw	a5,-36(s0)
    1b0e:	00001797          	auipc	a5,0x1
    1b12:	91a78793          	addi	a5,a5,-1766 # 2428 <freep>
    1b16:	639c                	ld	a5,0(a5)
    1b18:	fef43023          	sd	a5,-32(s0)
    1b1c:	fe043783          	ld	a5,-32(s0)
    1b20:	ef95                	bnez	a5,1b5c <malloc+0x6c>
    1b22:	00001797          	auipc	a5,0x1
    1b26:	8f678793          	addi	a5,a5,-1802 # 2418 <base>
    1b2a:	fef43023          	sd	a5,-32(s0)
    1b2e:	00001797          	auipc	a5,0x1
    1b32:	8fa78793          	addi	a5,a5,-1798 # 2428 <freep>
    1b36:	fe043703          	ld	a4,-32(s0)
    1b3a:	e398                	sd	a4,0(a5)
    1b3c:	00001797          	auipc	a5,0x1
    1b40:	8ec78793          	addi	a5,a5,-1812 # 2428 <freep>
    1b44:	6398                	ld	a4,0(a5)
    1b46:	00001797          	auipc	a5,0x1
    1b4a:	8d278793          	addi	a5,a5,-1838 # 2418 <base>
    1b4e:	e398                	sd	a4,0(a5)
    1b50:	00001797          	auipc	a5,0x1
    1b54:	8c878793          	addi	a5,a5,-1848 # 2418 <base>
    1b58:	0007a423          	sw	zero,8(a5)
    1b5c:	fe043783          	ld	a5,-32(s0)
    1b60:	639c                	ld	a5,0(a5)
    1b62:	fef43423          	sd	a5,-24(s0)
    1b66:	fe843783          	ld	a5,-24(s0)
    1b6a:	4798                	lw	a4,8(a5)
    1b6c:	fdc42783          	lw	a5,-36(s0)
    1b70:	2781                	sext.w	a5,a5
    1b72:	06f76763          	bltu	a4,a5,1be0 <malloc+0xf0>
    1b76:	fe843783          	ld	a5,-24(s0)
    1b7a:	4798                	lw	a4,8(a5)
    1b7c:	fdc42783          	lw	a5,-36(s0)
    1b80:	2781                	sext.w	a5,a5
    1b82:	00e79963          	bne	a5,a4,1b94 <malloc+0xa4>
    1b86:	fe843783          	ld	a5,-24(s0)
    1b8a:	6398                	ld	a4,0(a5)
    1b8c:	fe043783          	ld	a5,-32(s0)
    1b90:	e398                	sd	a4,0(a5)
    1b92:	a825                	j	1bca <malloc+0xda>
    1b94:	fe843783          	ld	a5,-24(s0)
    1b98:	479c                	lw	a5,8(a5)
    1b9a:	fdc42703          	lw	a4,-36(s0)
    1b9e:	9f99                	subw	a5,a5,a4
    1ba0:	0007871b          	sext.w	a4,a5
    1ba4:	fe843783          	ld	a5,-24(s0)
    1ba8:	c798                	sw	a4,8(a5)
    1baa:	fe843783          	ld	a5,-24(s0)
    1bae:	479c                	lw	a5,8(a5)
    1bb0:	1782                	slli	a5,a5,0x20
    1bb2:	9381                	srli	a5,a5,0x20
    1bb4:	0792                	slli	a5,a5,0x4
    1bb6:	fe843703          	ld	a4,-24(s0)
    1bba:	97ba                	add	a5,a5,a4
    1bbc:	fef43423          	sd	a5,-24(s0)
    1bc0:	fe843783          	ld	a5,-24(s0)
    1bc4:	fdc42703          	lw	a4,-36(s0)
    1bc8:	c798                	sw	a4,8(a5)
    1bca:	00001797          	auipc	a5,0x1
    1bce:	85e78793          	addi	a5,a5,-1954 # 2428 <freep>
    1bd2:	fe043703          	ld	a4,-32(s0)
    1bd6:	e398                	sd	a4,0(a5)
    1bd8:	fe843783          	ld	a5,-24(s0)
    1bdc:	07c1                	addi	a5,a5,16
    1bde:	a091                	j	1c22 <malloc+0x132>
    1be0:	00001797          	auipc	a5,0x1
    1be4:	84878793          	addi	a5,a5,-1976 # 2428 <freep>
    1be8:	639c                	ld	a5,0(a5)
    1bea:	fe843703          	ld	a4,-24(s0)
    1bee:	02f71063          	bne	a4,a5,1c0e <malloc+0x11e>
    1bf2:	fdc42783          	lw	a5,-36(s0)
    1bf6:	853e                	mv	a0,a5
    1bf8:	00000097          	auipc	ra,0x0
    1bfc:	e78080e7          	jalr	-392(ra) # 1a70 <morecore>
    1c00:	fea43423          	sd	a0,-24(s0)
    1c04:	fe843783          	ld	a5,-24(s0)
    1c08:	e399                	bnez	a5,1c0e <malloc+0x11e>
    1c0a:	4781                	li	a5,0
    1c0c:	a819                	j	1c22 <malloc+0x132>
    1c0e:	fe843783          	ld	a5,-24(s0)
    1c12:	fef43023          	sd	a5,-32(s0)
    1c16:	fe843783          	ld	a5,-24(s0)
    1c1a:	639c                	ld	a5,0(a5)
    1c1c:	fef43423          	sd	a5,-24(s0)
    1c20:	b799                	j	1b66 <malloc+0x76>
    1c22:	853e                	mv	a0,a5
    1c24:	70e2                	ld	ra,56(sp)
    1c26:	7442                	ld	s0,48(sp)
    1c28:	6121                	addi	sp,sp,64
    1c2a:	8082                	ret
