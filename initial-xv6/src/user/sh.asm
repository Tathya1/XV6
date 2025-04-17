
user/_sh:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <runcmd>:
       0:	715d                	addi	sp,sp,-80
       2:	e486                	sd	ra,72(sp)
       4:	e0a2                	sd	s0,64(sp)
       6:	0880                	addi	s0,sp,80
       8:	faa43c23          	sd	a0,-72(s0)
       c:	fb843783          	ld	a5,-72(s0)
      10:	e791                	bnez	a5,1c <runcmd+0x1c>
      12:	4505                	li	a0,1
      14:	00001097          	auipc	ra,0x1
      18:	3f2080e7          	jalr	1010(ra) # 1406 <exit>
      1c:	fb843783          	ld	a5,-72(s0)
      20:	439c                	lw	a5,0(a5)
      22:	86be                	mv	a3,a5
      24:	4715                	li	a4,5
      26:	02d76263          	bltu	a4,a3,4a <runcmd+0x4a>
      2a:	00279713          	slli	a4,a5,0x2
      2e:	00002797          	auipc	a5,0x2
      32:	c9278793          	addi	a5,a5,-878 # 1cc0 <malloc+0x178>
      36:	97ba                	add	a5,a5,a4
      38:	439c                	lw	a5,0(a5)
      3a:	0007871b          	sext.w	a4,a5
      3e:	00002797          	auipc	a5,0x2
      42:	c8278793          	addi	a5,a5,-894 # 1cc0 <malloc+0x178>
      46:	97ba                	add	a5,a5,a4
      48:	8782                	jr	a5
      4a:	00002517          	auipc	a0,0x2
      4e:	c4650513          	addi	a0,a0,-954 # 1c90 <malloc+0x148>
      52:	00000097          	auipc	ra,0x0
      56:	3d6080e7          	jalr	982(ra) # 428 <panic>
      5a:	fb843783          	ld	a5,-72(s0)
      5e:	fcf43423          	sd	a5,-56(s0)
      62:	fc843783          	ld	a5,-56(s0)
      66:	679c                	ld	a5,8(a5)
      68:	e791                	bnez	a5,74 <runcmd+0x74>
      6a:	4505                	li	a0,1
      6c:	00001097          	auipc	ra,0x1
      70:	39a080e7          	jalr	922(ra) # 1406 <exit>
      74:	fc843783          	ld	a5,-56(s0)
      78:	6798                	ld	a4,8(a5)
      7a:	fc843783          	ld	a5,-56(s0)
      7e:	07a1                	addi	a5,a5,8
      80:	85be                	mv	a1,a5
      82:	853a                	mv	a0,a4
      84:	00001097          	auipc	ra,0x1
      88:	3ba080e7          	jalr	954(ra) # 143e <exec>
      8c:	fc843783          	ld	a5,-56(s0)
      90:	679c                	ld	a5,8(a5)
      92:	863e                	mv	a2,a5
      94:	00002597          	auipc	a1,0x2
      98:	c0458593          	addi	a1,a1,-1020 # 1c98 <malloc+0x150>
      9c:	4509                	li	a0,2
      9e:	00002097          	auipc	ra,0x2
      a2:	860080e7          	jalr	-1952(ra) # 18fe <fprintf>
      a6:	a2f9                	j	274 <runcmd+0x274>
      a8:	fb843783          	ld	a5,-72(s0)
      ac:	fcf43823          	sd	a5,-48(s0)
      b0:	fd043783          	ld	a5,-48(s0)
      b4:	53dc                	lw	a5,36(a5)
      b6:	853e                	mv	a0,a5
      b8:	00001097          	auipc	ra,0x1
      bc:	376080e7          	jalr	886(ra) # 142e <close>
      c0:	fd043783          	ld	a5,-48(s0)
      c4:	6b98                	ld	a4,16(a5)
      c6:	fd043783          	ld	a5,-48(s0)
      ca:	539c                	lw	a5,32(a5)
      cc:	85be                	mv	a1,a5
      ce:	853a                	mv	a0,a4
      d0:	00001097          	auipc	ra,0x1
      d4:	376080e7          	jalr	886(ra) # 1446 <open>
      d8:	87aa                	mv	a5,a0
      da:	0207d463          	bgez	a5,102 <runcmd+0x102>
      de:	fd043783          	ld	a5,-48(s0)
      e2:	6b9c                	ld	a5,16(a5)
      e4:	863e                	mv	a2,a5
      e6:	00002597          	auipc	a1,0x2
      ea:	bc258593          	addi	a1,a1,-1086 # 1ca8 <malloc+0x160>
      ee:	4509                	li	a0,2
      f0:	00002097          	auipc	ra,0x2
      f4:	80e080e7          	jalr	-2034(ra) # 18fe <fprintf>
      f8:	4505                	li	a0,1
      fa:	00001097          	auipc	ra,0x1
      fe:	30c080e7          	jalr	780(ra) # 1406 <exit>
     102:	fd043783          	ld	a5,-48(s0)
     106:	679c                	ld	a5,8(a5)
     108:	853e                	mv	a0,a5
     10a:	00000097          	auipc	ra,0x0
     10e:	ef6080e7          	jalr	-266(ra) # 0 <runcmd>
     112:	fb843783          	ld	a5,-72(s0)
     116:	fef43023          	sd	a5,-32(s0)
     11a:	00000097          	auipc	ra,0x0
     11e:	33a080e7          	jalr	826(ra) # 454 <fork1>
     122:	87aa                	mv	a5,a0
     124:	eb89                	bnez	a5,136 <runcmd+0x136>
     126:	fe043783          	ld	a5,-32(s0)
     12a:	679c                	ld	a5,8(a5)
     12c:	853e                	mv	a0,a5
     12e:	00000097          	auipc	ra,0x0
     132:	ed2080e7          	jalr	-302(ra) # 0 <runcmd>
     136:	4501                	li	a0,0
     138:	00001097          	auipc	ra,0x1
     13c:	2d6080e7          	jalr	726(ra) # 140e <wait>
     140:	fe043783          	ld	a5,-32(s0)
     144:	6b9c                	ld	a5,16(a5)
     146:	853e                	mv	a0,a5
     148:	00000097          	auipc	ra,0x0
     14c:	eb8080e7          	jalr	-328(ra) # 0 <runcmd>
     150:	fb843783          	ld	a5,-72(s0)
     154:	fcf43c23          	sd	a5,-40(s0)
     158:	fc040793          	addi	a5,s0,-64
     15c:	853e                	mv	a0,a5
     15e:	00001097          	auipc	ra,0x1
     162:	2b8080e7          	jalr	696(ra) # 1416 <pipe>
     166:	87aa                	mv	a5,a0
     168:	0007da63          	bgez	a5,17c <runcmd+0x17c>
     16c:	00002517          	auipc	a0,0x2
     170:	b4c50513          	addi	a0,a0,-1204 # 1cb8 <malloc+0x170>
     174:	00000097          	auipc	ra,0x0
     178:	2b4080e7          	jalr	692(ra) # 428 <panic>
     17c:	00000097          	auipc	ra,0x0
     180:	2d8080e7          	jalr	728(ra) # 454 <fork1>
     184:	87aa                	mv	a5,a0
     186:	e3b9                	bnez	a5,1cc <runcmd+0x1cc>
     188:	4505                	li	a0,1
     18a:	00001097          	auipc	ra,0x1
     18e:	2a4080e7          	jalr	676(ra) # 142e <close>
     192:	fc442783          	lw	a5,-60(s0)
     196:	853e                	mv	a0,a5
     198:	00001097          	auipc	ra,0x1
     19c:	2e6080e7          	jalr	742(ra) # 147e <dup>
     1a0:	fc042783          	lw	a5,-64(s0)
     1a4:	853e                	mv	a0,a5
     1a6:	00001097          	auipc	ra,0x1
     1aa:	288080e7          	jalr	648(ra) # 142e <close>
     1ae:	fc442783          	lw	a5,-60(s0)
     1b2:	853e                	mv	a0,a5
     1b4:	00001097          	auipc	ra,0x1
     1b8:	27a080e7          	jalr	634(ra) # 142e <close>
     1bc:	fd843783          	ld	a5,-40(s0)
     1c0:	679c                	ld	a5,8(a5)
     1c2:	853e                	mv	a0,a5
     1c4:	00000097          	auipc	ra,0x0
     1c8:	e3c080e7          	jalr	-452(ra) # 0 <runcmd>
     1cc:	00000097          	auipc	ra,0x0
     1d0:	288080e7          	jalr	648(ra) # 454 <fork1>
     1d4:	87aa                	mv	a5,a0
     1d6:	e3b9                	bnez	a5,21c <runcmd+0x21c>
     1d8:	4501                	li	a0,0
     1da:	00001097          	auipc	ra,0x1
     1de:	254080e7          	jalr	596(ra) # 142e <close>
     1e2:	fc042783          	lw	a5,-64(s0)
     1e6:	853e                	mv	a0,a5
     1e8:	00001097          	auipc	ra,0x1
     1ec:	296080e7          	jalr	662(ra) # 147e <dup>
     1f0:	fc042783          	lw	a5,-64(s0)
     1f4:	853e                	mv	a0,a5
     1f6:	00001097          	auipc	ra,0x1
     1fa:	238080e7          	jalr	568(ra) # 142e <close>
     1fe:	fc442783          	lw	a5,-60(s0)
     202:	853e                	mv	a0,a5
     204:	00001097          	auipc	ra,0x1
     208:	22a080e7          	jalr	554(ra) # 142e <close>
     20c:	fd843783          	ld	a5,-40(s0)
     210:	6b9c                	ld	a5,16(a5)
     212:	853e                	mv	a0,a5
     214:	00000097          	auipc	ra,0x0
     218:	dec080e7          	jalr	-532(ra) # 0 <runcmd>
     21c:	fc042783          	lw	a5,-64(s0)
     220:	853e                	mv	a0,a5
     222:	00001097          	auipc	ra,0x1
     226:	20c080e7          	jalr	524(ra) # 142e <close>
     22a:	fc442783          	lw	a5,-60(s0)
     22e:	853e                	mv	a0,a5
     230:	00001097          	auipc	ra,0x1
     234:	1fe080e7          	jalr	510(ra) # 142e <close>
     238:	4501                	li	a0,0
     23a:	00001097          	auipc	ra,0x1
     23e:	1d4080e7          	jalr	468(ra) # 140e <wait>
     242:	4501                	li	a0,0
     244:	00001097          	auipc	ra,0x1
     248:	1ca080e7          	jalr	458(ra) # 140e <wait>
     24c:	a025                	j	274 <runcmd+0x274>
     24e:	fb843783          	ld	a5,-72(s0)
     252:	fef43423          	sd	a5,-24(s0)
     256:	00000097          	auipc	ra,0x0
     25a:	1fe080e7          	jalr	510(ra) # 454 <fork1>
     25e:	87aa                	mv	a5,a0
     260:	eb89                	bnez	a5,272 <runcmd+0x272>
     262:	fe843783          	ld	a5,-24(s0)
     266:	679c                	ld	a5,8(a5)
     268:	853e                	mv	a0,a5
     26a:	00000097          	auipc	ra,0x0
     26e:	d96080e7          	jalr	-618(ra) # 0 <runcmd>
     272:	0001                	nop
     274:	4501                	li	a0,0
     276:	00001097          	auipc	ra,0x1
     27a:	190080e7          	jalr	400(ra) # 1406 <exit>

000000000000027e <getcmd>:
     27e:	1101                	addi	sp,sp,-32
     280:	ec06                	sd	ra,24(sp)
     282:	e822                	sd	s0,16(sp)
     284:	1000                	addi	s0,sp,32
     286:	fea43423          	sd	a0,-24(s0)
     28a:	87ae                	mv	a5,a1
     28c:	fef42223          	sw	a5,-28(s0)
     290:	4609                	li	a2,2
     292:	00002597          	auipc	a1,0x2
     296:	a4658593          	addi	a1,a1,-1466 # 1cd8 <malloc+0x190>
     29a:	4509                	li	a0,2
     29c:	00001097          	auipc	ra,0x1
     2a0:	18a080e7          	jalr	394(ra) # 1426 <write>
     2a4:	fe442783          	lw	a5,-28(s0)
     2a8:	863e                	mv	a2,a5
     2aa:	4581                	li	a1,0
     2ac:	fe843503          	ld	a0,-24(s0)
     2b0:	00001097          	auipc	ra,0x1
     2b4:	daa080e7          	jalr	-598(ra) # 105a <memset>
     2b8:	fe442783          	lw	a5,-28(s0)
     2bc:	85be                	mv	a1,a5
     2be:	fe843503          	ld	a0,-24(s0)
     2c2:	00001097          	auipc	ra,0x1
     2c6:	e42080e7          	jalr	-446(ra) # 1104 <gets>
     2ca:	fe843783          	ld	a5,-24(s0)
     2ce:	0007c783          	lbu	a5,0(a5)
     2d2:	e399                	bnez	a5,2d8 <getcmd+0x5a>
     2d4:	57fd                	li	a5,-1
     2d6:	a011                	j	2da <getcmd+0x5c>
     2d8:	4781                	li	a5,0
     2da:	853e                	mv	a0,a5
     2dc:	60e2                	ld	ra,24(sp)
     2de:	6442                	ld	s0,16(sp)
     2e0:	6105                	addi	sp,sp,32
     2e2:	8082                	ret

00000000000002e4 <main>:
     2e4:	1101                	addi	sp,sp,-32
     2e6:	ec06                	sd	ra,24(sp)
     2e8:	e822                	sd	s0,16(sp)
     2ea:	1000                	addi	s0,sp,32
     2ec:	a005                	j	30c <main+0x28>
     2ee:	fec42783          	lw	a5,-20(s0)
     2f2:	0007871b          	sext.w	a4,a5
     2f6:	4789                	li	a5,2
     2f8:	00e7da63          	bge	a5,a4,30c <main+0x28>
     2fc:	fec42783          	lw	a5,-20(s0)
     300:	853e                	mv	a0,a5
     302:	00001097          	auipc	ra,0x1
     306:	12c080e7          	jalr	300(ra) # 142e <close>
     30a:	a015                	j	32e <main+0x4a>
     30c:	4589                	li	a1,2
     30e:	00002517          	auipc	a0,0x2
     312:	9d250513          	addi	a0,a0,-1582 # 1ce0 <malloc+0x198>
     316:	00001097          	auipc	ra,0x1
     31a:	130080e7          	jalr	304(ra) # 1446 <open>
     31e:	87aa                	mv	a5,a0
     320:	fef42623          	sw	a5,-20(s0)
     324:	fec42783          	lw	a5,-20(s0)
     328:	2781                	sext.w	a5,a5
     32a:	fc07d2e3          	bgez	a5,2ee <main+0xa>
     32e:	a8d9                	j	404 <main+0x120>
     330:	00002797          	auipc	a5,0x2
     334:	d0078793          	addi	a5,a5,-768 # 2030 <buf.0>
     338:	0007c783          	lbu	a5,0(a5)
     33c:	873e                	mv	a4,a5
     33e:	06300793          	li	a5,99
     342:	08f71863          	bne	a4,a5,3d2 <main+0xee>
     346:	00002797          	auipc	a5,0x2
     34a:	cea78793          	addi	a5,a5,-790 # 2030 <buf.0>
     34e:	0017c783          	lbu	a5,1(a5)
     352:	873e                	mv	a4,a5
     354:	06400793          	li	a5,100
     358:	06f71d63          	bne	a4,a5,3d2 <main+0xee>
     35c:	00002797          	auipc	a5,0x2
     360:	cd478793          	addi	a5,a5,-812 # 2030 <buf.0>
     364:	0027c783          	lbu	a5,2(a5)
     368:	873e                	mv	a4,a5
     36a:	02000793          	li	a5,32
     36e:	06f71263          	bne	a4,a5,3d2 <main+0xee>
     372:	00002517          	auipc	a0,0x2
     376:	cbe50513          	addi	a0,a0,-834 # 2030 <buf.0>
     37a:	00001097          	auipc	ra,0x1
     37e:	caa080e7          	jalr	-854(ra) # 1024 <strlen>
     382:	87aa                	mv	a5,a0
     384:	2781                	sext.w	a5,a5
     386:	37fd                	addiw	a5,a5,-1
     388:	2781                	sext.w	a5,a5
     38a:	00002717          	auipc	a4,0x2
     38e:	ca670713          	addi	a4,a4,-858 # 2030 <buf.0>
     392:	1782                	slli	a5,a5,0x20
     394:	9381                	srli	a5,a5,0x20
     396:	97ba                	add	a5,a5,a4
     398:	00078023          	sb	zero,0(a5)
     39c:	00002797          	auipc	a5,0x2
     3a0:	c9778793          	addi	a5,a5,-873 # 2033 <buf.0+0x3>
     3a4:	853e                	mv	a0,a5
     3a6:	00001097          	auipc	ra,0x1
     3aa:	0d0080e7          	jalr	208(ra) # 1476 <chdir>
     3ae:	87aa                	mv	a5,a0
     3b0:	0407da63          	bgez	a5,404 <main+0x120>
     3b4:	00002797          	auipc	a5,0x2
     3b8:	c7f78793          	addi	a5,a5,-897 # 2033 <buf.0+0x3>
     3bc:	863e                	mv	a2,a5
     3be:	00002597          	auipc	a1,0x2
     3c2:	92a58593          	addi	a1,a1,-1750 # 1ce8 <malloc+0x1a0>
     3c6:	4509                	li	a0,2
     3c8:	00001097          	auipc	ra,0x1
     3cc:	536080e7          	jalr	1334(ra) # 18fe <fprintf>
     3d0:	a815                	j	404 <main+0x120>
     3d2:	00000097          	auipc	ra,0x0
     3d6:	082080e7          	jalr	130(ra) # 454 <fork1>
     3da:	87aa                	mv	a5,a0
     3dc:	ef99                	bnez	a5,3fa <main+0x116>
     3de:	00002517          	auipc	a0,0x2
     3e2:	c5250513          	addi	a0,a0,-942 # 2030 <buf.0>
     3e6:	00000097          	auipc	ra,0x0
     3ea:	4e2080e7          	jalr	1250(ra) # 8c8 <parsecmd>
     3ee:	87aa                	mv	a5,a0
     3f0:	853e                	mv	a0,a5
     3f2:	00000097          	auipc	ra,0x0
     3f6:	c0e080e7          	jalr	-1010(ra) # 0 <runcmd>
     3fa:	4501                	li	a0,0
     3fc:	00001097          	auipc	ra,0x1
     400:	012080e7          	jalr	18(ra) # 140e <wait>
     404:	06400593          	li	a1,100
     408:	00002517          	auipc	a0,0x2
     40c:	c2850513          	addi	a0,a0,-984 # 2030 <buf.0>
     410:	00000097          	auipc	ra,0x0
     414:	e6e080e7          	jalr	-402(ra) # 27e <getcmd>
     418:	87aa                	mv	a5,a0
     41a:	f007dbe3          	bgez	a5,330 <main+0x4c>
     41e:	4501                	li	a0,0
     420:	00001097          	auipc	ra,0x1
     424:	fe6080e7          	jalr	-26(ra) # 1406 <exit>

0000000000000428 <panic>:
     428:	1101                	addi	sp,sp,-32
     42a:	ec06                	sd	ra,24(sp)
     42c:	e822                	sd	s0,16(sp)
     42e:	1000                	addi	s0,sp,32
     430:	fea43423          	sd	a0,-24(s0)
     434:	fe843603          	ld	a2,-24(s0)
     438:	00002597          	auipc	a1,0x2
     43c:	8c058593          	addi	a1,a1,-1856 # 1cf8 <malloc+0x1b0>
     440:	4509                	li	a0,2
     442:	00001097          	auipc	ra,0x1
     446:	4bc080e7          	jalr	1212(ra) # 18fe <fprintf>
     44a:	4505                	li	a0,1
     44c:	00001097          	auipc	ra,0x1
     450:	fba080e7          	jalr	-70(ra) # 1406 <exit>

0000000000000454 <fork1>:
     454:	1101                	addi	sp,sp,-32
     456:	ec06                	sd	ra,24(sp)
     458:	e822                	sd	s0,16(sp)
     45a:	1000                	addi	s0,sp,32
     45c:	00001097          	auipc	ra,0x1
     460:	fa2080e7          	jalr	-94(ra) # 13fe <fork>
     464:	87aa                	mv	a5,a0
     466:	fef42623          	sw	a5,-20(s0)
     46a:	fec42783          	lw	a5,-20(s0)
     46e:	0007871b          	sext.w	a4,a5
     472:	57fd                	li	a5,-1
     474:	00f71a63          	bne	a4,a5,488 <fork1+0x34>
     478:	00002517          	auipc	a0,0x2
     47c:	88850513          	addi	a0,a0,-1912 # 1d00 <malloc+0x1b8>
     480:	00000097          	auipc	ra,0x0
     484:	fa8080e7          	jalr	-88(ra) # 428 <panic>
     488:	fec42783          	lw	a5,-20(s0)
     48c:	853e                	mv	a0,a5
     48e:	60e2                	ld	ra,24(sp)
     490:	6442                	ld	s0,16(sp)
     492:	6105                	addi	sp,sp,32
     494:	8082                	ret

0000000000000496 <execcmd>:
     496:	1101                	addi	sp,sp,-32
     498:	ec06                	sd	ra,24(sp)
     49a:	e822                	sd	s0,16(sp)
     49c:	1000                	addi	s0,sp,32
     49e:	0a800513          	li	a0,168
     4a2:	00001097          	auipc	ra,0x1
     4a6:	6a6080e7          	jalr	1702(ra) # 1b48 <malloc>
     4aa:	fea43423          	sd	a0,-24(s0)
     4ae:	0a800613          	li	a2,168
     4b2:	4581                	li	a1,0
     4b4:	fe843503          	ld	a0,-24(s0)
     4b8:	00001097          	auipc	ra,0x1
     4bc:	ba2080e7          	jalr	-1118(ra) # 105a <memset>
     4c0:	fe843783          	ld	a5,-24(s0)
     4c4:	4705                	li	a4,1
     4c6:	c398                	sw	a4,0(a5)
     4c8:	fe843783          	ld	a5,-24(s0)
     4cc:	853e                	mv	a0,a5
     4ce:	60e2                	ld	ra,24(sp)
     4d0:	6442                	ld	s0,16(sp)
     4d2:	6105                	addi	sp,sp,32
     4d4:	8082                	ret

00000000000004d6 <redircmd>:
     4d6:	7139                	addi	sp,sp,-64
     4d8:	fc06                	sd	ra,56(sp)
     4da:	f822                	sd	s0,48(sp)
     4dc:	0080                	addi	s0,sp,64
     4de:	fca43c23          	sd	a0,-40(s0)
     4e2:	fcb43823          	sd	a1,-48(s0)
     4e6:	fcc43423          	sd	a2,-56(s0)
     4ea:	87b6                	mv	a5,a3
     4ec:	fcf42223          	sw	a5,-60(s0)
     4f0:	87ba                	mv	a5,a4
     4f2:	fcf42023          	sw	a5,-64(s0)
     4f6:	02800513          	li	a0,40
     4fa:	00001097          	auipc	ra,0x1
     4fe:	64e080e7          	jalr	1614(ra) # 1b48 <malloc>
     502:	fea43423          	sd	a0,-24(s0)
     506:	02800613          	li	a2,40
     50a:	4581                	li	a1,0
     50c:	fe843503          	ld	a0,-24(s0)
     510:	00001097          	auipc	ra,0x1
     514:	b4a080e7          	jalr	-1206(ra) # 105a <memset>
     518:	fe843783          	ld	a5,-24(s0)
     51c:	4709                	li	a4,2
     51e:	c398                	sw	a4,0(a5)
     520:	fe843783          	ld	a5,-24(s0)
     524:	fd843703          	ld	a4,-40(s0)
     528:	e798                	sd	a4,8(a5)
     52a:	fe843783          	ld	a5,-24(s0)
     52e:	fd043703          	ld	a4,-48(s0)
     532:	eb98                	sd	a4,16(a5)
     534:	fe843783          	ld	a5,-24(s0)
     538:	fc843703          	ld	a4,-56(s0)
     53c:	ef98                	sd	a4,24(a5)
     53e:	fe843783          	ld	a5,-24(s0)
     542:	fc442703          	lw	a4,-60(s0)
     546:	d398                	sw	a4,32(a5)
     548:	fe843783          	ld	a5,-24(s0)
     54c:	fc042703          	lw	a4,-64(s0)
     550:	d3d8                	sw	a4,36(a5)
     552:	fe843783          	ld	a5,-24(s0)
     556:	853e                	mv	a0,a5
     558:	70e2                	ld	ra,56(sp)
     55a:	7442                	ld	s0,48(sp)
     55c:	6121                	addi	sp,sp,64
     55e:	8082                	ret

0000000000000560 <pipecmd>:
     560:	7179                	addi	sp,sp,-48
     562:	f406                	sd	ra,40(sp)
     564:	f022                	sd	s0,32(sp)
     566:	1800                	addi	s0,sp,48
     568:	fca43c23          	sd	a0,-40(s0)
     56c:	fcb43823          	sd	a1,-48(s0)
     570:	4561                	li	a0,24
     572:	00001097          	auipc	ra,0x1
     576:	5d6080e7          	jalr	1494(ra) # 1b48 <malloc>
     57a:	fea43423          	sd	a0,-24(s0)
     57e:	4661                	li	a2,24
     580:	4581                	li	a1,0
     582:	fe843503          	ld	a0,-24(s0)
     586:	00001097          	auipc	ra,0x1
     58a:	ad4080e7          	jalr	-1324(ra) # 105a <memset>
     58e:	fe843783          	ld	a5,-24(s0)
     592:	470d                	li	a4,3
     594:	c398                	sw	a4,0(a5)
     596:	fe843783          	ld	a5,-24(s0)
     59a:	fd843703          	ld	a4,-40(s0)
     59e:	e798                	sd	a4,8(a5)
     5a0:	fe843783          	ld	a5,-24(s0)
     5a4:	fd043703          	ld	a4,-48(s0)
     5a8:	eb98                	sd	a4,16(a5)
     5aa:	fe843783          	ld	a5,-24(s0)
     5ae:	853e                	mv	a0,a5
     5b0:	70a2                	ld	ra,40(sp)
     5b2:	7402                	ld	s0,32(sp)
     5b4:	6145                	addi	sp,sp,48
     5b6:	8082                	ret

00000000000005b8 <listcmd>:
     5b8:	7179                	addi	sp,sp,-48
     5ba:	f406                	sd	ra,40(sp)
     5bc:	f022                	sd	s0,32(sp)
     5be:	1800                	addi	s0,sp,48
     5c0:	fca43c23          	sd	a0,-40(s0)
     5c4:	fcb43823          	sd	a1,-48(s0)
     5c8:	4561                	li	a0,24
     5ca:	00001097          	auipc	ra,0x1
     5ce:	57e080e7          	jalr	1406(ra) # 1b48 <malloc>
     5d2:	fea43423          	sd	a0,-24(s0)
     5d6:	4661                	li	a2,24
     5d8:	4581                	li	a1,0
     5da:	fe843503          	ld	a0,-24(s0)
     5de:	00001097          	auipc	ra,0x1
     5e2:	a7c080e7          	jalr	-1412(ra) # 105a <memset>
     5e6:	fe843783          	ld	a5,-24(s0)
     5ea:	4711                	li	a4,4
     5ec:	c398                	sw	a4,0(a5)
     5ee:	fe843783          	ld	a5,-24(s0)
     5f2:	fd843703          	ld	a4,-40(s0)
     5f6:	e798                	sd	a4,8(a5)
     5f8:	fe843783          	ld	a5,-24(s0)
     5fc:	fd043703          	ld	a4,-48(s0)
     600:	eb98                	sd	a4,16(a5)
     602:	fe843783          	ld	a5,-24(s0)
     606:	853e                	mv	a0,a5
     608:	70a2                	ld	ra,40(sp)
     60a:	7402                	ld	s0,32(sp)
     60c:	6145                	addi	sp,sp,48
     60e:	8082                	ret

0000000000000610 <backcmd>:
     610:	7179                	addi	sp,sp,-48
     612:	f406                	sd	ra,40(sp)
     614:	f022                	sd	s0,32(sp)
     616:	1800                	addi	s0,sp,48
     618:	fca43c23          	sd	a0,-40(s0)
     61c:	4541                	li	a0,16
     61e:	00001097          	auipc	ra,0x1
     622:	52a080e7          	jalr	1322(ra) # 1b48 <malloc>
     626:	fea43423          	sd	a0,-24(s0)
     62a:	4641                	li	a2,16
     62c:	4581                	li	a1,0
     62e:	fe843503          	ld	a0,-24(s0)
     632:	00001097          	auipc	ra,0x1
     636:	a28080e7          	jalr	-1496(ra) # 105a <memset>
     63a:	fe843783          	ld	a5,-24(s0)
     63e:	4715                	li	a4,5
     640:	c398                	sw	a4,0(a5)
     642:	fe843783          	ld	a5,-24(s0)
     646:	fd843703          	ld	a4,-40(s0)
     64a:	e798                	sd	a4,8(a5)
     64c:	fe843783          	ld	a5,-24(s0)
     650:	853e                	mv	a0,a5
     652:	70a2                	ld	ra,40(sp)
     654:	7402                	ld	s0,32(sp)
     656:	6145                	addi	sp,sp,48
     658:	8082                	ret

000000000000065a <gettoken>:
     65a:	7139                	addi	sp,sp,-64
     65c:	fc06                	sd	ra,56(sp)
     65e:	f822                	sd	s0,48(sp)
     660:	0080                	addi	s0,sp,64
     662:	fca43c23          	sd	a0,-40(s0)
     666:	fcb43823          	sd	a1,-48(s0)
     66a:	fcc43423          	sd	a2,-56(s0)
     66e:	fcd43023          	sd	a3,-64(s0)
     672:	fd843783          	ld	a5,-40(s0)
     676:	639c                	ld	a5,0(a5)
     678:	fef43423          	sd	a5,-24(s0)
     67c:	a031                	j	688 <gettoken+0x2e>
     67e:	fe843783          	ld	a5,-24(s0)
     682:	0785                	addi	a5,a5,1
     684:	fef43423          	sd	a5,-24(s0)
     688:	fe843703          	ld	a4,-24(s0)
     68c:	fd043783          	ld	a5,-48(s0)
     690:	02f77163          	bgeu	a4,a5,6b2 <gettoken+0x58>
     694:	fe843783          	ld	a5,-24(s0)
     698:	0007c783          	lbu	a5,0(a5)
     69c:	85be                	mv	a1,a5
     69e:	00002517          	auipc	a0,0x2
     6a2:	96250513          	addi	a0,a0,-1694 # 2000 <whitespace>
     6a6:	00001097          	auipc	ra,0x1
     6aa:	a14080e7          	jalr	-1516(ra) # 10ba <strchr>
     6ae:	87aa                	mv	a5,a0
     6b0:	f7f9                	bnez	a5,67e <gettoken+0x24>
     6b2:	fc843783          	ld	a5,-56(s0)
     6b6:	c791                	beqz	a5,6c2 <gettoken+0x68>
     6b8:	fc843783          	ld	a5,-56(s0)
     6bc:	fe843703          	ld	a4,-24(s0)
     6c0:	e398                	sd	a4,0(a5)
     6c2:	fe843783          	ld	a5,-24(s0)
     6c6:	0007c783          	lbu	a5,0(a5)
     6ca:	fef42223          	sw	a5,-28(s0)
     6ce:	fe843783          	ld	a5,-24(s0)
     6d2:	0007c783          	lbu	a5,0(a5)
     6d6:	2781                	sext.w	a5,a5
     6d8:	86be                	mv	a3,a5
     6da:	07c00713          	li	a4,124
     6de:	04e68b63          	beq	a3,a4,734 <gettoken+0xda>
     6e2:	86be                	mv	a3,a5
     6e4:	07c00713          	li	a4,124
     6e8:	08d74463          	blt	a4,a3,770 <gettoken+0x116>
     6ec:	86be                	mv	a3,a5
     6ee:	03e00713          	li	a4,62
     6f2:	04e68763          	beq	a3,a4,740 <gettoken+0xe6>
     6f6:	86be                	mv	a3,a5
     6f8:	03e00713          	li	a4,62
     6fc:	06d74a63          	blt	a4,a3,770 <gettoken+0x116>
     700:	86be                	mv	a3,a5
     702:	03c00713          	li	a4,60
     706:	06d74563          	blt	a4,a3,770 <gettoken+0x116>
     70a:	86be                	mv	a3,a5
     70c:	03b00713          	li	a4,59
     710:	02e6d263          	bge	a3,a4,734 <gettoken+0xda>
     714:	86be                	mv	a3,a5
     716:	02900713          	li	a4,41
     71a:	04d74b63          	blt	a4,a3,770 <gettoken+0x116>
     71e:	86be                	mv	a3,a5
     720:	02800713          	li	a4,40
     724:	00e6d863          	bge	a3,a4,734 <gettoken+0xda>
     728:	c3dd                	beqz	a5,7ce <gettoken+0x174>
     72a:	873e                	mv	a4,a5
     72c:	02600793          	li	a5,38
     730:	04f71063          	bne	a4,a5,770 <gettoken+0x116>
     734:	fe843783          	ld	a5,-24(s0)
     738:	0785                	addi	a5,a5,1
     73a:	fef43423          	sd	a5,-24(s0)
     73e:	a869                	j	7d8 <gettoken+0x17e>
     740:	fe843783          	ld	a5,-24(s0)
     744:	0785                	addi	a5,a5,1
     746:	fef43423          	sd	a5,-24(s0)
     74a:	fe843783          	ld	a5,-24(s0)
     74e:	0007c783          	lbu	a5,0(a5)
     752:	873e                	mv	a4,a5
     754:	03e00793          	li	a5,62
     758:	06f71d63          	bne	a4,a5,7d2 <gettoken+0x178>
     75c:	02b00793          	li	a5,43
     760:	fef42223          	sw	a5,-28(s0)
     764:	fe843783          	ld	a5,-24(s0)
     768:	0785                	addi	a5,a5,1
     76a:	fef43423          	sd	a5,-24(s0)
     76e:	a095                	j	7d2 <gettoken+0x178>
     770:	06100793          	li	a5,97
     774:	fef42223          	sw	a5,-28(s0)
     778:	a031                	j	784 <gettoken+0x12a>
     77a:	fe843783          	ld	a5,-24(s0)
     77e:	0785                	addi	a5,a5,1
     780:	fef43423          	sd	a5,-24(s0)
     784:	fe843703          	ld	a4,-24(s0)
     788:	fd043783          	ld	a5,-48(s0)
     78c:	04f77563          	bgeu	a4,a5,7d6 <gettoken+0x17c>
     790:	fe843783          	ld	a5,-24(s0)
     794:	0007c783          	lbu	a5,0(a5)
     798:	85be                	mv	a1,a5
     79a:	00002517          	auipc	a0,0x2
     79e:	86650513          	addi	a0,a0,-1946 # 2000 <whitespace>
     7a2:	00001097          	auipc	ra,0x1
     7a6:	918080e7          	jalr	-1768(ra) # 10ba <strchr>
     7aa:	87aa                	mv	a5,a0
     7ac:	e78d                	bnez	a5,7d6 <gettoken+0x17c>
     7ae:	fe843783          	ld	a5,-24(s0)
     7b2:	0007c783          	lbu	a5,0(a5)
     7b6:	85be                	mv	a1,a5
     7b8:	00002517          	auipc	a0,0x2
     7bc:	85050513          	addi	a0,a0,-1968 # 2008 <symbols>
     7c0:	00001097          	auipc	ra,0x1
     7c4:	8fa080e7          	jalr	-1798(ra) # 10ba <strchr>
     7c8:	87aa                	mv	a5,a0
     7ca:	dbc5                	beqz	a5,77a <gettoken+0x120>
     7cc:	a029                	j	7d6 <gettoken+0x17c>
     7ce:	0001                	nop
     7d0:	a021                	j	7d8 <gettoken+0x17e>
     7d2:	0001                	nop
     7d4:	a011                	j	7d8 <gettoken+0x17e>
     7d6:	0001                	nop
     7d8:	fc043783          	ld	a5,-64(s0)
     7dc:	cf81                	beqz	a5,7f4 <gettoken+0x19a>
     7de:	fc043783          	ld	a5,-64(s0)
     7e2:	fe843703          	ld	a4,-24(s0)
     7e6:	e398                	sd	a4,0(a5)
     7e8:	a031                	j	7f4 <gettoken+0x19a>
     7ea:	fe843783          	ld	a5,-24(s0)
     7ee:	0785                	addi	a5,a5,1
     7f0:	fef43423          	sd	a5,-24(s0)
     7f4:	fe843703          	ld	a4,-24(s0)
     7f8:	fd043783          	ld	a5,-48(s0)
     7fc:	02f77163          	bgeu	a4,a5,81e <gettoken+0x1c4>
     800:	fe843783          	ld	a5,-24(s0)
     804:	0007c783          	lbu	a5,0(a5)
     808:	85be                	mv	a1,a5
     80a:	00001517          	auipc	a0,0x1
     80e:	7f650513          	addi	a0,a0,2038 # 2000 <whitespace>
     812:	00001097          	auipc	ra,0x1
     816:	8a8080e7          	jalr	-1880(ra) # 10ba <strchr>
     81a:	87aa                	mv	a5,a0
     81c:	f7f9                	bnez	a5,7ea <gettoken+0x190>
     81e:	fd843783          	ld	a5,-40(s0)
     822:	fe843703          	ld	a4,-24(s0)
     826:	e398                	sd	a4,0(a5)
     828:	fe442783          	lw	a5,-28(s0)
     82c:	853e                	mv	a0,a5
     82e:	70e2                	ld	ra,56(sp)
     830:	7442                	ld	s0,48(sp)
     832:	6121                	addi	sp,sp,64
     834:	8082                	ret

0000000000000836 <peek>:
     836:	7139                	addi	sp,sp,-64
     838:	fc06                	sd	ra,56(sp)
     83a:	f822                	sd	s0,48(sp)
     83c:	0080                	addi	s0,sp,64
     83e:	fca43c23          	sd	a0,-40(s0)
     842:	fcb43823          	sd	a1,-48(s0)
     846:	fcc43423          	sd	a2,-56(s0)
     84a:	fd843783          	ld	a5,-40(s0)
     84e:	639c                	ld	a5,0(a5)
     850:	fef43423          	sd	a5,-24(s0)
     854:	a031                	j	860 <peek+0x2a>
     856:	fe843783          	ld	a5,-24(s0)
     85a:	0785                	addi	a5,a5,1
     85c:	fef43423          	sd	a5,-24(s0)
     860:	fe843703          	ld	a4,-24(s0)
     864:	fd043783          	ld	a5,-48(s0)
     868:	02f77163          	bgeu	a4,a5,88a <peek+0x54>
     86c:	fe843783          	ld	a5,-24(s0)
     870:	0007c783          	lbu	a5,0(a5)
     874:	85be                	mv	a1,a5
     876:	00001517          	auipc	a0,0x1
     87a:	78a50513          	addi	a0,a0,1930 # 2000 <whitespace>
     87e:	00001097          	auipc	ra,0x1
     882:	83c080e7          	jalr	-1988(ra) # 10ba <strchr>
     886:	87aa                	mv	a5,a0
     888:	f7f9                	bnez	a5,856 <peek+0x20>
     88a:	fd843783          	ld	a5,-40(s0)
     88e:	fe843703          	ld	a4,-24(s0)
     892:	e398                	sd	a4,0(a5)
     894:	fe843783          	ld	a5,-24(s0)
     898:	0007c783          	lbu	a5,0(a5)
     89c:	c385                	beqz	a5,8bc <peek+0x86>
     89e:	fe843783          	ld	a5,-24(s0)
     8a2:	0007c783          	lbu	a5,0(a5)
     8a6:	85be                	mv	a1,a5
     8a8:	fc843503          	ld	a0,-56(s0)
     8ac:	00001097          	auipc	ra,0x1
     8b0:	80e080e7          	jalr	-2034(ra) # 10ba <strchr>
     8b4:	87aa                	mv	a5,a0
     8b6:	c399                	beqz	a5,8bc <peek+0x86>
     8b8:	4785                	li	a5,1
     8ba:	a011                	j	8be <peek+0x88>
     8bc:	4781                	li	a5,0
     8be:	853e                	mv	a0,a5
     8c0:	70e2                	ld	ra,56(sp)
     8c2:	7442                	ld	s0,48(sp)
     8c4:	6121                	addi	sp,sp,64
     8c6:	8082                	ret

00000000000008c8 <parsecmd>:
     8c8:	7139                	addi	sp,sp,-64
     8ca:	fc06                	sd	ra,56(sp)
     8cc:	f822                	sd	s0,48(sp)
     8ce:	f426                	sd	s1,40(sp)
     8d0:	0080                	addi	s0,sp,64
     8d2:	fca43423          	sd	a0,-56(s0)
     8d6:	fc843483          	ld	s1,-56(s0)
     8da:	fc843783          	ld	a5,-56(s0)
     8de:	853e                	mv	a0,a5
     8e0:	00000097          	auipc	ra,0x0
     8e4:	744080e7          	jalr	1860(ra) # 1024 <strlen>
     8e8:	87aa                	mv	a5,a0
     8ea:	2781                	sext.w	a5,a5
     8ec:	1782                	slli	a5,a5,0x20
     8ee:	9381                	srli	a5,a5,0x20
     8f0:	97a6                	add	a5,a5,s1
     8f2:	fcf43c23          	sd	a5,-40(s0)
     8f6:	fc840793          	addi	a5,s0,-56
     8fa:	fd843583          	ld	a1,-40(s0)
     8fe:	853e                	mv	a0,a5
     900:	00000097          	auipc	ra,0x0
     904:	076080e7          	jalr	118(ra) # 976 <parseline>
     908:	fca43823          	sd	a0,-48(s0)
     90c:	fc840793          	addi	a5,s0,-56
     910:	00001617          	auipc	a2,0x1
     914:	3f860613          	addi	a2,a2,1016 # 1d08 <malloc+0x1c0>
     918:	fd843583          	ld	a1,-40(s0)
     91c:	853e                	mv	a0,a5
     91e:	00000097          	auipc	ra,0x0
     922:	f18080e7          	jalr	-232(ra) # 836 <peek>
     926:	fc843783          	ld	a5,-56(s0)
     92a:	fd843703          	ld	a4,-40(s0)
     92e:	02f70663          	beq	a4,a5,95a <parsecmd+0x92>
     932:	fc843783          	ld	a5,-56(s0)
     936:	863e                	mv	a2,a5
     938:	00001597          	auipc	a1,0x1
     93c:	3d858593          	addi	a1,a1,984 # 1d10 <malloc+0x1c8>
     940:	4509                	li	a0,2
     942:	00001097          	auipc	ra,0x1
     946:	fbc080e7          	jalr	-68(ra) # 18fe <fprintf>
     94a:	00001517          	auipc	a0,0x1
     94e:	3d650513          	addi	a0,a0,982 # 1d20 <malloc+0x1d8>
     952:	00000097          	auipc	ra,0x0
     956:	ad6080e7          	jalr	-1322(ra) # 428 <panic>
     95a:	fd043503          	ld	a0,-48(s0)
     95e:	00000097          	auipc	ra,0x0
     962:	4da080e7          	jalr	1242(ra) # e38 <nulterminate>
     966:	fd043783          	ld	a5,-48(s0)
     96a:	853e                	mv	a0,a5
     96c:	70e2                	ld	ra,56(sp)
     96e:	7442                	ld	s0,48(sp)
     970:	74a2                	ld	s1,40(sp)
     972:	6121                	addi	sp,sp,64
     974:	8082                	ret

0000000000000976 <parseline>:
     976:	7179                	addi	sp,sp,-48
     978:	f406                	sd	ra,40(sp)
     97a:	f022                	sd	s0,32(sp)
     97c:	1800                	addi	s0,sp,48
     97e:	fca43c23          	sd	a0,-40(s0)
     982:	fcb43823          	sd	a1,-48(s0)
     986:	fd043583          	ld	a1,-48(s0)
     98a:	fd843503          	ld	a0,-40(s0)
     98e:	00000097          	auipc	ra,0x0
     992:	0b0080e7          	jalr	176(ra) # a3e <parsepipe>
     996:	fea43423          	sd	a0,-24(s0)
     99a:	a01d                	j	9c0 <parseline+0x4a>
     99c:	4681                	li	a3,0
     99e:	4601                	li	a2,0
     9a0:	fd043583          	ld	a1,-48(s0)
     9a4:	fd843503          	ld	a0,-40(s0)
     9a8:	00000097          	auipc	ra,0x0
     9ac:	cb2080e7          	jalr	-846(ra) # 65a <gettoken>
     9b0:	fe843503          	ld	a0,-24(s0)
     9b4:	00000097          	auipc	ra,0x0
     9b8:	c5c080e7          	jalr	-932(ra) # 610 <backcmd>
     9bc:	fea43423          	sd	a0,-24(s0)
     9c0:	00001617          	auipc	a2,0x1
     9c4:	36860613          	addi	a2,a2,872 # 1d28 <malloc+0x1e0>
     9c8:	fd043583          	ld	a1,-48(s0)
     9cc:	fd843503          	ld	a0,-40(s0)
     9d0:	00000097          	auipc	ra,0x0
     9d4:	e66080e7          	jalr	-410(ra) # 836 <peek>
     9d8:	87aa                	mv	a5,a0
     9da:	f3e9                	bnez	a5,99c <parseline+0x26>
     9dc:	00001617          	auipc	a2,0x1
     9e0:	35460613          	addi	a2,a2,852 # 1d30 <malloc+0x1e8>
     9e4:	fd043583          	ld	a1,-48(s0)
     9e8:	fd843503          	ld	a0,-40(s0)
     9ec:	00000097          	auipc	ra,0x0
     9f0:	e4a080e7          	jalr	-438(ra) # 836 <peek>
     9f4:	87aa                	mv	a5,a0
     9f6:	cf8d                	beqz	a5,a30 <parseline+0xba>
     9f8:	4681                	li	a3,0
     9fa:	4601                	li	a2,0
     9fc:	fd043583          	ld	a1,-48(s0)
     a00:	fd843503          	ld	a0,-40(s0)
     a04:	00000097          	auipc	ra,0x0
     a08:	c56080e7          	jalr	-938(ra) # 65a <gettoken>
     a0c:	fd043583          	ld	a1,-48(s0)
     a10:	fd843503          	ld	a0,-40(s0)
     a14:	00000097          	auipc	ra,0x0
     a18:	f62080e7          	jalr	-158(ra) # 976 <parseline>
     a1c:	87aa                	mv	a5,a0
     a1e:	85be                	mv	a1,a5
     a20:	fe843503          	ld	a0,-24(s0)
     a24:	00000097          	auipc	ra,0x0
     a28:	b94080e7          	jalr	-1132(ra) # 5b8 <listcmd>
     a2c:	fea43423          	sd	a0,-24(s0)
     a30:	fe843783          	ld	a5,-24(s0)
     a34:	853e                	mv	a0,a5
     a36:	70a2                	ld	ra,40(sp)
     a38:	7402                	ld	s0,32(sp)
     a3a:	6145                	addi	sp,sp,48
     a3c:	8082                	ret

0000000000000a3e <parsepipe>:
     a3e:	7179                	addi	sp,sp,-48
     a40:	f406                	sd	ra,40(sp)
     a42:	f022                	sd	s0,32(sp)
     a44:	1800                	addi	s0,sp,48
     a46:	fca43c23          	sd	a0,-40(s0)
     a4a:	fcb43823          	sd	a1,-48(s0)
     a4e:	fd043583          	ld	a1,-48(s0)
     a52:	fd843503          	ld	a0,-40(s0)
     a56:	00000097          	auipc	ra,0x0
     a5a:	270080e7          	jalr	624(ra) # cc6 <parseexec>
     a5e:	fea43423          	sd	a0,-24(s0)
     a62:	00001617          	auipc	a2,0x1
     a66:	2d660613          	addi	a2,a2,726 # 1d38 <malloc+0x1f0>
     a6a:	fd043583          	ld	a1,-48(s0)
     a6e:	fd843503          	ld	a0,-40(s0)
     a72:	00000097          	auipc	ra,0x0
     a76:	dc4080e7          	jalr	-572(ra) # 836 <peek>
     a7a:	87aa                	mv	a5,a0
     a7c:	cf8d                	beqz	a5,ab6 <parsepipe+0x78>
     a7e:	4681                	li	a3,0
     a80:	4601                	li	a2,0
     a82:	fd043583          	ld	a1,-48(s0)
     a86:	fd843503          	ld	a0,-40(s0)
     a8a:	00000097          	auipc	ra,0x0
     a8e:	bd0080e7          	jalr	-1072(ra) # 65a <gettoken>
     a92:	fd043583          	ld	a1,-48(s0)
     a96:	fd843503          	ld	a0,-40(s0)
     a9a:	00000097          	auipc	ra,0x0
     a9e:	fa4080e7          	jalr	-92(ra) # a3e <parsepipe>
     aa2:	87aa                	mv	a5,a0
     aa4:	85be                	mv	a1,a5
     aa6:	fe843503          	ld	a0,-24(s0)
     aaa:	00000097          	auipc	ra,0x0
     aae:	ab6080e7          	jalr	-1354(ra) # 560 <pipecmd>
     ab2:	fea43423          	sd	a0,-24(s0)
     ab6:	fe843783          	ld	a5,-24(s0)
     aba:	853e                	mv	a0,a5
     abc:	70a2                	ld	ra,40(sp)
     abe:	7402                	ld	s0,32(sp)
     ac0:	6145                	addi	sp,sp,48
     ac2:	8082                	ret

0000000000000ac4 <parseredirs>:
     ac4:	715d                	addi	sp,sp,-80
     ac6:	e486                	sd	ra,72(sp)
     ac8:	e0a2                	sd	s0,64(sp)
     aca:	0880                	addi	s0,sp,80
     acc:	fca43423          	sd	a0,-56(s0)
     ad0:	fcb43023          	sd	a1,-64(s0)
     ad4:	fac43c23          	sd	a2,-72(s0)
     ad8:	a8e5                	j	bd0 <parseredirs+0x10c>
     ada:	4681                	li	a3,0
     adc:	4601                	li	a2,0
     ade:	fb843583          	ld	a1,-72(s0)
     ae2:	fc043503          	ld	a0,-64(s0)
     ae6:	00000097          	auipc	ra,0x0
     aea:	b74080e7          	jalr	-1164(ra) # 65a <gettoken>
     aee:	87aa                	mv	a5,a0
     af0:	fef42623          	sw	a5,-20(s0)
     af4:	fd840713          	addi	a4,s0,-40
     af8:	fe040793          	addi	a5,s0,-32
     afc:	86ba                	mv	a3,a4
     afe:	863e                	mv	a2,a5
     b00:	fb843583          	ld	a1,-72(s0)
     b04:	fc043503          	ld	a0,-64(s0)
     b08:	00000097          	auipc	ra,0x0
     b0c:	b52080e7          	jalr	-1198(ra) # 65a <gettoken>
     b10:	87aa                	mv	a5,a0
     b12:	873e                	mv	a4,a5
     b14:	06100793          	li	a5,97
     b18:	00f70a63          	beq	a4,a5,b2c <parseredirs+0x68>
     b1c:	00001517          	auipc	a0,0x1
     b20:	22450513          	addi	a0,a0,548 # 1d40 <malloc+0x1f8>
     b24:	00000097          	auipc	ra,0x0
     b28:	904080e7          	jalr	-1788(ra) # 428 <panic>
     b2c:	fec42783          	lw	a5,-20(s0)
     b30:	0007871b          	sext.w	a4,a5
     b34:	03e00793          	li	a5,62
     b38:	04f70a63          	beq	a4,a5,b8c <parseredirs+0xc8>
     b3c:	fec42783          	lw	a5,-20(s0)
     b40:	0007871b          	sext.w	a4,a5
     b44:	03e00793          	li	a5,62
     b48:	08e7c463          	blt	a5,a4,bd0 <parseredirs+0x10c>
     b4c:	fec42783          	lw	a5,-20(s0)
     b50:	0007871b          	sext.w	a4,a5
     b54:	02b00793          	li	a5,43
     b58:	04f70b63          	beq	a4,a5,bae <parseredirs+0xea>
     b5c:	fec42783          	lw	a5,-20(s0)
     b60:	0007871b          	sext.w	a4,a5
     b64:	03c00793          	li	a5,60
     b68:	06f71463          	bne	a4,a5,bd0 <parseredirs+0x10c>
     b6c:	fe043783          	ld	a5,-32(s0)
     b70:	fd843603          	ld	a2,-40(s0)
     b74:	4701                	li	a4,0
     b76:	4681                	li	a3,0
     b78:	85be                	mv	a1,a5
     b7a:	fc843503          	ld	a0,-56(s0)
     b7e:	00000097          	auipc	ra,0x0
     b82:	958080e7          	jalr	-1704(ra) # 4d6 <redircmd>
     b86:	fca43423          	sd	a0,-56(s0)
     b8a:	a099                	j	bd0 <parseredirs+0x10c>
     b8c:	fe043783          	ld	a5,-32(s0)
     b90:	fd843603          	ld	a2,-40(s0)
     b94:	4705                	li	a4,1
     b96:	60100693          	li	a3,1537
     b9a:	85be                	mv	a1,a5
     b9c:	fc843503          	ld	a0,-56(s0)
     ba0:	00000097          	auipc	ra,0x0
     ba4:	936080e7          	jalr	-1738(ra) # 4d6 <redircmd>
     ba8:	fca43423          	sd	a0,-56(s0)
     bac:	a015                	j	bd0 <parseredirs+0x10c>
     bae:	fe043783          	ld	a5,-32(s0)
     bb2:	fd843603          	ld	a2,-40(s0)
     bb6:	4705                	li	a4,1
     bb8:	20100693          	li	a3,513
     bbc:	85be                	mv	a1,a5
     bbe:	fc843503          	ld	a0,-56(s0)
     bc2:	00000097          	auipc	ra,0x0
     bc6:	914080e7          	jalr	-1772(ra) # 4d6 <redircmd>
     bca:	fca43423          	sd	a0,-56(s0)
     bce:	0001                	nop
     bd0:	00001617          	auipc	a2,0x1
     bd4:	19060613          	addi	a2,a2,400 # 1d60 <malloc+0x218>
     bd8:	fb843583          	ld	a1,-72(s0)
     bdc:	fc043503          	ld	a0,-64(s0)
     be0:	00000097          	auipc	ra,0x0
     be4:	c56080e7          	jalr	-938(ra) # 836 <peek>
     be8:	87aa                	mv	a5,a0
     bea:	ee0798e3          	bnez	a5,ada <parseredirs+0x16>
     bee:	fc843783          	ld	a5,-56(s0)
     bf2:	853e                	mv	a0,a5
     bf4:	60a6                	ld	ra,72(sp)
     bf6:	6406                	ld	s0,64(sp)
     bf8:	6161                	addi	sp,sp,80
     bfa:	8082                	ret

0000000000000bfc <parseblock>:
     bfc:	7179                	addi	sp,sp,-48
     bfe:	f406                	sd	ra,40(sp)
     c00:	f022                	sd	s0,32(sp)
     c02:	1800                	addi	s0,sp,48
     c04:	fca43c23          	sd	a0,-40(s0)
     c08:	fcb43823          	sd	a1,-48(s0)
     c0c:	00001617          	auipc	a2,0x1
     c10:	15c60613          	addi	a2,a2,348 # 1d68 <malloc+0x220>
     c14:	fd043583          	ld	a1,-48(s0)
     c18:	fd843503          	ld	a0,-40(s0)
     c1c:	00000097          	auipc	ra,0x0
     c20:	c1a080e7          	jalr	-998(ra) # 836 <peek>
     c24:	87aa                	mv	a5,a0
     c26:	eb89                	bnez	a5,c38 <parseblock+0x3c>
     c28:	00001517          	auipc	a0,0x1
     c2c:	14850513          	addi	a0,a0,328 # 1d70 <malloc+0x228>
     c30:	fffff097          	auipc	ra,0xfffff
     c34:	7f8080e7          	jalr	2040(ra) # 428 <panic>
     c38:	4681                	li	a3,0
     c3a:	4601                	li	a2,0
     c3c:	fd043583          	ld	a1,-48(s0)
     c40:	fd843503          	ld	a0,-40(s0)
     c44:	00000097          	auipc	ra,0x0
     c48:	a16080e7          	jalr	-1514(ra) # 65a <gettoken>
     c4c:	fd043583          	ld	a1,-48(s0)
     c50:	fd843503          	ld	a0,-40(s0)
     c54:	00000097          	auipc	ra,0x0
     c58:	d22080e7          	jalr	-734(ra) # 976 <parseline>
     c5c:	fea43423          	sd	a0,-24(s0)
     c60:	00001617          	auipc	a2,0x1
     c64:	12060613          	addi	a2,a2,288 # 1d80 <malloc+0x238>
     c68:	fd043583          	ld	a1,-48(s0)
     c6c:	fd843503          	ld	a0,-40(s0)
     c70:	00000097          	auipc	ra,0x0
     c74:	bc6080e7          	jalr	-1082(ra) # 836 <peek>
     c78:	87aa                	mv	a5,a0
     c7a:	eb89                	bnez	a5,c8c <parseblock+0x90>
     c7c:	00001517          	auipc	a0,0x1
     c80:	10c50513          	addi	a0,a0,268 # 1d88 <malloc+0x240>
     c84:	fffff097          	auipc	ra,0xfffff
     c88:	7a4080e7          	jalr	1956(ra) # 428 <panic>
     c8c:	4681                	li	a3,0
     c8e:	4601                	li	a2,0
     c90:	fd043583          	ld	a1,-48(s0)
     c94:	fd843503          	ld	a0,-40(s0)
     c98:	00000097          	auipc	ra,0x0
     c9c:	9c2080e7          	jalr	-1598(ra) # 65a <gettoken>
     ca0:	fd043603          	ld	a2,-48(s0)
     ca4:	fd843583          	ld	a1,-40(s0)
     ca8:	fe843503          	ld	a0,-24(s0)
     cac:	00000097          	auipc	ra,0x0
     cb0:	e18080e7          	jalr	-488(ra) # ac4 <parseredirs>
     cb4:	fea43423          	sd	a0,-24(s0)
     cb8:	fe843783          	ld	a5,-24(s0)
     cbc:	853e                	mv	a0,a5
     cbe:	70a2                	ld	ra,40(sp)
     cc0:	7402                	ld	s0,32(sp)
     cc2:	6145                	addi	sp,sp,48
     cc4:	8082                	ret

0000000000000cc6 <parseexec>:
     cc6:	715d                	addi	sp,sp,-80
     cc8:	e486                	sd	ra,72(sp)
     cca:	e0a2                	sd	s0,64(sp)
     ccc:	0880                	addi	s0,sp,80
     cce:	faa43c23          	sd	a0,-72(s0)
     cd2:	fab43823          	sd	a1,-80(s0)
     cd6:	00001617          	auipc	a2,0x1
     cda:	09260613          	addi	a2,a2,146 # 1d68 <malloc+0x220>
     cde:	fb043583          	ld	a1,-80(s0)
     ce2:	fb843503          	ld	a0,-72(s0)
     ce6:	00000097          	auipc	ra,0x0
     cea:	b50080e7          	jalr	-1200(ra) # 836 <peek>
     cee:	87aa                	mv	a5,a0
     cf0:	cb99                	beqz	a5,d06 <parseexec+0x40>
     cf2:	fb043583          	ld	a1,-80(s0)
     cf6:	fb843503          	ld	a0,-72(s0)
     cfa:	00000097          	auipc	ra,0x0
     cfe:	f02080e7          	jalr	-254(ra) # bfc <parseblock>
     d02:	87aa                	mv	a5,a0
     d04:	a22d                	j	e2e <parseexec+0x168>
     d06:	fffff097          	auipc	ra,0xfffff
     d0a:	790080e7          	jalr	1936(ra) # 496 <execcmd>
     d0e:	fea43023          	sd	a0,-32(s0)
     d12:	fe043783          	ld	a5,-32(s0)
     d16:	fcf43c23          	sd	a5,-40(s0)
     d1a:	fe042623          	sw	zero,-20(s0)
     d1e:	fb043603          	ld	a2,-80(s0)
     d22:	fb843583          	ld	a1,-72(s0)
     d26:	fe043503          	ld	a0,-32(s0)
     d2a:	00000097          	auipc	ra,0x0
     d2e:	d9a080e7          	jalr	-614(ra) # ac4 <parseredirs>
     d32:	fea43023          	sd	a0,-32(s0)
     d36:	a84d                	j	de8 <parseexec+0x122>
     d38:	fc040713          	addi	a4,s0,-64
     d3c:	fc840793          	addi	a5,s0,-56
     d40:	86ba                	mv	a3,a4
     d42:	863e                	mv	a2,a5
     d44:	fb043583          	ld	a1,-80(s0)
     d48:	fb843503          	ld	a0,-72(s0)
     d4c:	00000097          	auipc	ra,0x0
     d50:	90e080e7          	jalr	-1778(ra) # 65a <gettoken>
     d54:	87aa                	mv	a5,a0
     d56:	fcf42a23          	sw	a5,-44(s0)
     d5a:	fd442783          	lw	a5,-44(s0)
     d5e:	2781                	sext.w	a5,a5
     d60:	c3dd                	beqz	a5,e06 <parseexec+0x140>
     d62:	fd442783          	lw	a5,-44(s0)
     d66:	0007871b          	sext.w	a4,a5
     d6a:	06100793          	li	a5,97
     d6e:	00f70a63          	beq	a4,a5,d82 <parseexec+0xbc>
     d72:	00001517          	auipc	a0,0x1
     d76:	fae50513          	addi	a0,a0,-82 # 1d20 <malloc+0x1d8>
     d7a:	fffff097          	auipc	ra,0xfffff
     d7e:	6ae080e7          	jalr	1710(ra) # 428 <panic>
     d82:	fc843703          	ld	a4,-56(s0)
     d86:	fd843683          	ld	a3,-40(s0)
     d8a:	fec42783          	lw	a5,-20(s0)
     d8e:	078e                	slli	a5,a5,0x3
     d90:	97b6                	add	a5,a5,a3
     d92:	e798                	sd	a4,8(a5)
     d94:	fc043703          	ld	a4,-64(s0)
     d98:	fd843683          	ld	a3,-40(s0)
     d9c:	fec42783          	lw	a5,-20(s0)
     da0:	07a9                	addi	a5,a5,10
     da2:	078e                	slli	a5,a5,0x3
     da4:	97b6                	add	a5,a5,a3
     da6:	e798                	sd	a4,8(a5)
     da8:	fec42783          	lw	a5,-20(s0)
     dac:	2785                	addiw	a5,a5,1
     dae:	fef42623          	sw	a5,-20(s0)
     db2:	fec42783          	lw	a5,-20(s0)
     db6:	0007871b          	sext.w	a4,a5
     dba:	47a5                	li	a5,9
     dbc:	00e7da63          	bge	a5,a4,dd0 <parseexec+0x10a>
     dc0:	00001517          	auipc	a0,0x1
     dc4:	fe050513          	addi	a0,a0,-32 # 1da0 <malloc+0x258>
     dc8:	fffff097          	auipc	ra,0xfffff
     dcc:	660080e7          	jalr	1632(ra) # 428 <panic>
     dd0:	fb043603          	ld	a2,-80(s0)
     dd4:	fb843583          	ld	a1,-72(s0)
     dd8:	fe043503          	ld	a0,-32(s0)
     ddc:	00000097          	auipc	ra,0x0
     de0:	ce8080e7          	jalr	-792(ra) # ac4 <parseredirs>
     de4:	fea43023          	sd	a0,-32(s0)
     de8:	00001617          	auipc	a2,0x1
     dec:	fc860613          	addi	a2,a2,-56 # 1db0 <malloc+0x268>
     df0:	fb043583          	ld	a1,-80(s0)
     df4:	fb843503          	ld	a0,-72(s0)
     df8:	00000097          	auipc	ra,0x0
     dfc:	a3e080e7          	jalr	-1474(ra) # 836 <peek>
     e00:	87aa                	mv	a5,a0
     e02:	db9d                	beqz	a5,d38 <parseexec+0x72>
     e04:	a011                	j	e08 <parseexec+0x142>
     e06:	0001                	nop
     e08:	fd843703          	ld	a4,-40(s0)
     e0c:	fec42783          	lw	a5,-20(s0)
     e10:	078e                	slli	a5,a5,0x3
     e12:	97ba                	add	a5,a5,a4
     e14:	0007b423          	sd	zero,8(a5)
     e18:	fd843703          	ld	a4,-40(s0)
     e1c:	fec42783          	lw	a5,-20(s0)
     e20:	07a9                	addi	a5,a5,10
     e22:	078e                	slli	a5,a5,0x3
     e24:	97ba                	add	a5,a5,a4
     e26:	0007b423          	sd	zero,8(a5)
     e2a:	fe043783          	ld	a5,-32(s0)
     e2e:	853e                	mv	a0,a5
     e30:	60a6                	ld	ra,72(sp)
     e32:	6406                	ld	s0,64(sp)
     e34:	6161                	addi	sp,sp,80
     e36:	8082                	ret

0000000000000e38 <nulterminate>:
     e38:	715d                	addi	sp,sp,-80
     e3a:	e486                	sd	ra,72(sp)
     e3c:	e0a2                	sd	s0,64(sp)
     e3e:	0880                	addi	s0,sp,80
     e40:	faa43c23          	sd	a0,-72(s0)
     e44:	fb843783          	ld	a5,-72(s0)
     e48:	e399                	bnez	a5,e4e <nulterminate+0x16>
     e4a:	4781                	li	a5,0
     e4c:	a211                	j	f50 <nulterminate+0x118>
     e4e:	fb843783          	ld	a5,-72(s0)
     e52:	439c                	lw	a5,0(a5)
     e54:	86be                	mv	a3,a5
     e56:	4715                	li	a4,5
     e58:	0ed76a63          	bltu	a4,a3,f4c <nulterminate+0x114>
     e5c:	00279713          	slli	a4,a5,0x2
     e60:	00001797          	auipc	a5,0x1
     e64:	f5878793          	addi	a5,a5,-168 # 1db8 <malloc+0x270>
     e68:	97ba                	add	a5,a5,a4
     e6a:	439c                	lw	a5,0(a5)
     e6c:	0007871b          	sext.w	a4,a5
     e70:	00001797          	auipc	a5,0x1
     e74:	f4878793          	addi	a5,a5,-184 # 1db8 <malloc+0x270>
     e78:	97ba                	add	a5,a5,a4
     e7a:	8782                	jr	a5
     e7c:	fb843783          	ld	a5,-72(s0)
     e80:	fcf43023          	sd	a5,-64(s0)
     e84:	fe042623          	sw	zero,-20(s0)
     e88:	a005                	j	ea8 <nulterminate+0x70>
     e8a:	fc043703          	ld	a4,-64(s0)
     e8e:	fec42783          	lw	a5,-20(s0)
     e92:	07a9                	addi	a5,a5,10
     e94:	078e                	slli	a5,a5,0x3
     e96:	97ba                	add	a5,a5,a4
     e98:	679c                	ld	a5,8(a5)
     e9a:	00078023          	sb	zero,0(a5)
     e9e:	fec42783          	lw	a5,-20(s0)
     ea2:	2785                	addiw	a5,a5,1
     ea4:	fef42623          	sw	a5,-20(s0)
     ea8:	fc043703          	ld	a4,-64(s0)
     eac:	fec42783          	lw	a5,-20(s0)
     eb0:	078e                	slli	a5,a5,0x3
     eb2:	97ba                	add	a5,a5,a4
     eb4:	679c                	ld	a5,8(a5)
     eb6:	fbf1                	bnez	a5,e8a <nulterminate+0x52>
     eb8:	a851                	j	f4c <nulterminate+0x114>
     eba:	fb843783          	ld	a5,-72(s0)
     ebe:	fcf43423          	sd	a5,-56(s0)
     ec2:	fc843783          	ld	a5,-56(s0)
     ec6:	679c                	ld	a5,8(a5)
     ec8:	853e                	mv	a0,a5
     eca:	00000097          	auipc	ra,0x0
     ece:	f6e080e7          	jalr	-146(ra) # e38 <nulterminate>
     ed2:	fc843783          	ld	a5,-56(s0)
     ed6:	6f9c                	ld	a5,24(a5)
     ed8:	00078023          	sb	zero,0(a5)
     edc:	a885                	j	f4c <nulterminate+0x114>
     ede:	fb843783          	ld	a5,-72(s0)
     ee2:	fcf43823          	sd	a5,-48(s0)
     ee6:	fd043783          	ld	a5,-48(s0)
     eea:	679c                	ld	a5,8(a5)
     eec:	853e                	mv	a0,a5
     eee:	00000097          	auipc	ra,0x0
     ef2:	f4a080e7          	jalr	-182(ra) # e38 <nulterminate>
     ef6:	fd043783          	ld	a5,-48(s0)
     efa:	6b9c                	ld	a5,16(a5)
     efc:	853e                	mv	a0,a5
     efe:	00000097          	auipc	ra,0x0
     f02:	f3a080e7          	jalr	-198(ra) # e38 <nulterminate>
     f06:	a099                	j	f4c <nulterminate+0x114>
     f08:	fb843783          	ld	a5,-72(s0)
     f0c:	fcf43c23          	sd	a5,-40(s0)
     f10:	fd843783          	ld	a5,-40(s0)
     f14:	679c                	ld	a5,8(a5)
     f16:	853e                	mv	a0,a5
     f18:	00000097          	auipc	ra,0x0
     f1c:	f20080e7          	jalr	-224(ra) # e38 <nulterminate>
     f20:	fd843783          	ld	a5,-40(s0)
     f24:	6b9c                	ld	a5,16(a5)
     f26:	853e                	mv	a0,a5
     f28:	00000097          	auipc	ra,0x0
     f2c:	f10080e7          	jalr	-240(ra) # e38 <nulterminate>
     f30:	a831                	j	f4c <nulterminate+0x114>
     f32:	fb843783          	ld	a5,-72(s0)
     f36:	fef43023          	sd	a5,-32(s0)
     f3a:	fe043783          	ld	a5,-32(s0)
     f3e:	679c                	ld	a5,8(a5)
     f40:	853e                	mv	a0,a5
     f42:	00000097          	auipc	ra,0x0
     f46:	ef6080e7          	jalr	-266(ra) # e38 <nulterminate>
     f4a:	0001                	nop
     f4c:	fb843783          	ld	a5,-72(s0)
     f50:	853e                	mv	a0,a5
     f52:	60a6                	ld	ra,72(sp)
     f54:	6406                	ld	s0,64(sp)
     f56:	6161                	addi	sp,sp,80
     f58:	8082                	ret

0000000000000f5a <_main>:
     f5a:	1141                	addi	sp,sp,-16
     f5c:	e406                	sd	ra,8(sp)
     f5e:	e022                	sd	s0,0(sp)
     f60:	0800                	addi	s0,sp,16
     f62:	fffff097          	auipc	ra,0xfffff
     f66:	382080e7          	jalr	898(ra) # 2e4 <main>
     f6a:	4501                	li	a0,0
     f6c:	00000097          	auipc	ra,0x0
     f70:	49a080e7          	jalr	1178(ra) # 1406 <exit>

0000000000000f74 <strcpy>:
     f74:	7179                	addi	sp,sp,-48
     f76:	f422                	sd	s0,40(sp)
     f78:	1800                	addi	s0,sp,48
     f7a:	fca43c23          	sd	a0,-40(s0)
     f7e:	fcb43823          	sd	a1,-48(s0)
     f82:	fd843783          	ld	a5,-40(s0)
     f86:	fef43423          	sd	a5,-24(s0)
     f8a:	0001                	nop
     f8c:	fd043703          	ld	a4,-48(s0)
     f90:	00170793          	addi	a5,a4,1
     f94:	fcf43823          	sd	a5,-48(s0)
     f98:	fd843783          	ld	a5,-40(s0)
     f9c:	00178693          	addi	a3,a5,1
     fa0:	fcd43c23          	sd	a3,-40(s0)
     fa4:	00074703          	lbu	a4,0(a4)
     fa8:	00e78023          	sb	a4,0(a5)
     fac:	0007c783          	lbu	a5,0(a5)
     fb0:	fff1                	bnez	a5,f8c <strcpy+0x18>
     fb2:	fe843783          	ld	a5,-24(s0)
     fb6:	853e                	mv	a0,a5
     fb8:	7422                	ld	s0,40(sp)
     fba:	6145                	addi	sp,sp,48
     fbc:	8082                	ret

0000000000000fbe <strcmp>:
     fbe:	1101                	addi	sp,sp,-32
     fc0:	ec22                	sd	s0,24(sp)
     fc2:	1000                	addi	s0,sp,32
     fc4:	fea43423          	sd	a0,-24(s0)
     fc8:	feb43023          	sd	a1,-32(s0)
     fcc:	a819                	j	fe2 <strcmp+0x24>
     fce:	fe843783          	ld	a5,-24(s0)
     fd2:	0785                	addi	a5,a5,1
     fd4:	fef43423          	sd	a5,-24(s0)
     fd8:	fe043783          	ld	a5,-32(s0)
     fdc:	0785                	addi	a5,a5,1
     fde:	fef43023          	sd	a5,-32(s0)
     fe2:	fe843783          	ld	a5,-24(s0)
     fe6:	0007c783          	lbu	a5,0(a5)
     fea:	cb99                	beqz	a5,1000 <strcmp+0x42>
     fec:	fe843783          	ld	a5,-24(s0)
     ff0:	0007c703          	lbu	a4,0(a5)
     ff4:	fe043783          	ld	a5,-32(s0)
     ff8:	0007c783          	lbu	a5,0(a5)
     ffc:	fcf709e3          	beq	a4,a5,fce <strcmp+0x10>
    1000:	fe843783          	ld	a5,-24(s0)
    1004:	0007c783          	lbu	a5,0(a5)
    1008:	0007871b          	sext.w	a4,a5
    100c:	fe043783          	ld	a5,-32(s0)
    1010:	0007c783          	lbu	a5,0(a5)
    1014:	2781                	sext.w	a5,a5
    1016:	40f707bb          	subw	a5,a4,a5
    101a:	2781                	sext.w	a5,a5
    101c:	853e                	mv	a0,a5
    101e:	6462                	ld	s0,24(sp)
    1020:	6105                	addi	sp,sp,32
    1022:	8082                	ret

0000000000001024 <strlen>:
    1024:	7179                	addi	sp,sp,-48
    1026:	f422                	sd	s0,40(sp)
    1028:	1800                	addi	s0,sp,48
    102a:	fca43c23          	sd	a0,-40(s0)
    102e:	fe042623          	sw	zero,-20(s0)
    1032:	a031                	j	103e <strlen+0x1a>
    1034:	fec42783          	lw	a5,-20(s0)
    1038:	2785                	addiw	a5,a5,1
    103a:	fef42623          	sw	a5,-20(s0)
    103e:	fec42783          	lw	a5,-20(s0)
    1042:	fd843703          	ld	a4,-40(s0)
    1046:	97ba                	add	a5,a5,a4
    1048:	0007c783          	lbu	a5,0(a5)
    104c:	f7e5                	bnez	a5,1034 <strlen+0x10>
    104e:	fec42783          	lw	a5,-20(s0)
    1052:	853e                	mv	a0,a5
    1054:	7422                	ld	s0,40(sp)
    1056:	6145                	addi	sp,sp,48
    1058:	8082                	ret

000000000000105a <memset>:
    105a:	7179                	addi	sp,sp,-48
    105c:	f422                	sd	s0,40(sp)
    105e:	1800                	addi	s0,sp,48
    1060:	fca43c23          	sd	a0,-40(s0)
    1064:	87ae                	mv	a5,a1
    1066:	8732                	mv	a4,a2
    1068:	fcf42a23          	sw	a5,-44(s0)
    106c:	87ba                	mv	a5,a4
    106e:	fcf42823          	sw	a5,-48(s0)
    1072:	fd843783          	ld	a5,-40(s0)
    1076:	fef43023          	sd	a5,-32(s0)
    107a:	fe042623          	sw	zero,-20(s0)
    107e:	a00d                	j	10a0 <memset+0x46>
    1080:	fec42783          	lw	a5,-20(s0)
    1084:	fe043703          	ld	a4,-32(s0)
    1088:	97ba                	add	a5,a5,a4
    108a:	fd442703          	lw	a4,-44(s0)
    108e:	0ff77713          	zext.b	a4,a4
    1092:	00e78023          	sb	a4,0(a5)
    1096:	fec42783          	lw	a5,-20(s0)
    109a:	2785                	addiw	a5,a5,1
    109c:	fef42623          	sw	a5,-20(s0)
    10a0:	fec42703          	lw	a4,-20(s0)
    10a4:	fd042783          	lw	a5,-48(s0)
    10a8:	2781                	sext.w	a5,a5
    10aa:	fcf76be3          	bltu	a4,a5,1080 <memset+0x26>
    10ae:	fd843783          	ld	a5,-40(s0)
    10b2:	853e                	mv	a0,a5
    10b4:	7422                	ld	s0,40(sp)
    10b6:	6145                	addi	sp,sp,48
    10b8:	8082                	ret

00000000000010ba <strchr>:
    10ba:	1101                	addi	sp,sp,-32
    10bc:	ec22                	sd	s0,24(sp)
    10be:	1000                	addi	s0,sp,32
    10c0:	fea43423          	sd	a0,-24(s0)
    10c4:	87ae                	mv	a5,a1
    10c6:	fef403a3          	sb	a5,-25(s0)
    10ca:	a01d                	j	10f0 <strchr+0x36>
    10cc:	fe843783          	ld	a5,-24(s0)
    10d0:	0007c703          	lbu	a4,0(a5)
    10d4:	fe744783          	lbu	a5,-25(s0)
    10d8:	0ff7f793          	zext.b	a5,a5
    10dc:	00e79563          	bne	a5,a4,10e6 <strchr+0x2c>
    10e0:	fe843783          	ld	a5,-24(s0)
    10e4:	a821                	j	10fc <strchr+0x42>
    10e6:	fe843783          	ld	a5,-24(s0)
    10ea:	0785                	addi	a5,a5,1
    10ec:	fef43423          	sd	a5,-24(s0)
    10f0:	fe843783          	ld	a5,-24(s0)
    10f4:	0007c783          	lbu	a5,0(a5)
    10f8:	fbf1                	bnez	a5,10cc <strchr+0x12>
    10fa:	4781                	li	a5,0
    10fc:	853e                	mv	a0,a5
    10fe:	6462                	ld	s0,24(sp)
    1100:	6105                	addi	sp,sp,32
    1102:	8082                	ret

0000000000001104 <gets>:
    1104:	7179                	addi	sp,sp,-48
    1106:	f406                	sd	ra,40(sp)
    1108:	f022                	sd	s0,32(sp)
    110a:	1800                	addi	s0,sp,48
    110c:	fca43c23          	sd	a0,-40(s0)
    1110:	87ae                	mv	a5,a1
    1112:	fcf42a23          	sw	a5,-44(s0)
    1116:	fe042623          	sw	zero,-20(s0)
    111a:	a8a1                	j	1172 <gets+0x6e>
    111c:	fe740793          	addi	a5,s0,-25
    1120:	4605                	li	a2,1
    1122:	85be                	mv	a1,a5
    1124:	4501                	li	a0,0
    1126:	00000097          	auipc	ra,0x0
    112a:	2f8080e7          	jalr	760(ra) # 141e <read>
    112e:	87aa                	mv	a5,a0
    1130:	fef42423          	sw	a5,-24(s0)
    1134:	fe842783          	lw	a5,-24(s0)
    1138:	2781                	sext.w	a5,a5
    113a:	04f05763          	blez	a5,1188 <gets+0x84>
    113e:	fec42783          	lw	a5,-20(s0)
    1142:	0017871b          	addiw	a4,a5,1
    1146:	fee42623          	sw	a4,-20(s0)
    114a:	873e                	mv	a4,a5
    114c:	fd843783          	ld	a5,-40(s0)
    1150:	97ba                	add	a5,a5,a4
    1152:	fe744703          	lbu	a4,-25(s0)
    1156:	00e78023          	sb	a4,0(a5)
    115a:	fe744783          	lbu	a5,-25(s0)
    115e:	873e                	mv	a4,a5
    1160:	47a9                	li	a5,10
    1162:	02f70463          	beq	a4,a5,118a <gets+0x86>
    1166:	fe744783          	lbu	a5,-25(s0)
    116a:	873e                	mv	a4,a5
    116c:	47b5                	li	a5,13
    116e:	00f70e63          	beq	a4,a5,118a <gets+0x86>
    1172:	fec42783          	lw	a5,-20(s0)
    1176:	2785                	addiw	a5,a5,1
    1178:	0007871b          	sext.w	a4,a5
    117c:	fd442783          	lw	a5,-44(s0)
    1180:	2781                	sext.w	a5,a5
    1182:	f8f74de3          	blt	a4,a5,111c <gets+0x18>
    1186:	a011                	j	118a <gets+0x86>
    1188:	0001                	nop
    118a:	fec42783          	lw	a5,-20(s0)
    118e:	fd843703          	ld	a4,-40(s0)
    1192:	97ba                	add	a5,a5,a4
    1194:	00078023          	sb	zero,0(a5)
    1198:	fd843783          	ld	a5,-40(s0)
    119c:	853e                	mv	a0,a5
    119e:	70a2                	ld	ra,40(sp)
    11a0:	7402                	ld	s0,32(sp)
    11a2:	6145                	addi	sp,sp,48
    11a4:	8082                	ret

00000000000011a6 <stat>:
    11a6:	7179                	addi	sp,sp,-48
    11a8:	f406                	sd	ra,40(sp)
    11aa:	f022                	sd	s0,32(sp)
    11ac:	1800                	addi	s0,sp,48
    11ae:	fca43c23          	sd	a0,-40(s0)
    11b2:	fcb43823          	sd	a1,-48(s0)
    11b6:	4581                	li	a1,0
    11b8:	fd843503          	ld	a0,-40(s0)
    11bc:	00000097          	auipc	ra,0x0
    11c0:	28a080e7          	jalr	650(ra) # 1446 <open>
    11c4:	87aa                	mv	a5,a0
    11c6:	fef42623          	sw	a5,-20(s0)
    11ca:	fec42783          	lw	a5,-20(s0)
    11ce:	2781                	sext.w	a5,a5
    11d0:	0007d463          	bgez	a5,11d8 <stat+0x32>
    11d4:	57fd                	li	a5,-1
    11d6:	a035                	j	1202 <stat+0x5c>
    11d8:	fec42783          	lw	a5,-20(s0)
    11dc:	fd043583          	ld	a1,-48(s0)
    11e0:	853e                	mv	a0,a5
    11e2:	00000097          	auipc	ra,0x0
    11e6:	27c080e7          	jalr	636(ra) # 145e <fstat>
    11ea:	87aa                	mv	a5,a0
    11ec:	fef42423          	sw	a5,-24(s0)
    11f0:	fec42783          	lw	a5,-20(s0)
    11f4:	853e                	mv	a0,a5
    11f6:	00000097          	auipc	ra,0x0
    11fa:	238080e7          	jalr	568(ra) # 142e <close>
    11fe:	fe842783          	lw	a5,-24(s0)
    1202:	853e                	mv	a0,a5
    1204:	70a2                	ld	ra,40(sp)
    1206:	7402                	ld	s0,32(sp)
    1208:	6145                	addi	sp,sp,48
    120a:	8082                	ret

000000000000120c <atoi>:
    120c:	7179                	addi	sp,sp,-48
    120e:	f422                	sd	s0,40(sp)
    1210:	1800                	addi	s0,sp,48
    1212:	fca43c23          	sd	a0,-40(s0)
    1216:	fe042623          	sw	zero,-20(s0)
    121a:	a81d                	j	1250 <atoi+0x44>
    121c:	fec42783          	lw	a5,-20(s0)
    1220:	873e                	mv	a4,a5
    1222:	87ba                	mv	a5,a4
    1224:	0027979b          	slliw	a5,a5,0x2
    1228:	9fb9                	addw	a5,a5,a4
    122a:	0017979b          	slliw	a5,a5,0x1
    122e:	0007871b          	sext.w	a4,a5
    1232:	fd843783          	ld	a5,-40(s0)
    1236:	00178693          	addi	a3,a5,1
    123a:	fcd43c23          	sd	a3,-40(s0)
    123e:	0007c783          	lbu	a5,0(a5)
    1242:	2781                	sext.w	a5,a5
    1244:	9fb9                	addw	a5,a5,a4
    1246:	2781                	sext.w	a5,a5
    1248:	fd07879b          	addiw	a5,a5,-48
    124c:	fef42623          	sw	a5,-20(s0)
    1250:	fd843783          	ld	a5,-40(s0)
    1254:	0007c783          	lbu	a5,0(a5)
    1258:	873e                	mv	a4,a5
    125a:	02f00793          	li	a5,47
    125e:	00e7fb63          	bgeu	a5,a4,1274 <atoi+0x68>
    1262:	fd843783          	ld	a5,-40(s0)
    1266:	0007c783          	lbu	a5,0(a5)
    126a:	873e                	mv	a4,a5
    126c:	03900793          	li	a5,57
    1270:	fae7f6e3          	bgeu	a5,a4,121c <atoi+0x10>
    1274:	fec42783          	lw	a5,-20(s0)
    1278:	853e                	mv	a0,a5
    127a:	7422                	ld	s0,40(sp)
    127c:	6145                	addi	sp,sp,48
    127e:	8082                	ret

0000000000001280 <memmove>:
    1280:	7139                	addi	sp,sp,-64
    1282:	fc22                	sd	s0,56(sp)
    1284:	0080                	addi	s0,sp,64
    1286:	fca43c23          	sd	a0,-40(s0)
    128a:	fcb43823          	sd	a1,-48(s0)
    128e:	87b2                	mv	a5,a2
    1290:	fcf42623          	sw	a5,-52(s0)
    1294:	fd843783          	ld	a5,-40(s0)
    1298:	fef43423          	sd	a5,-24(s0)
    129c:	fd043783          	ld	a5,-48(s0)
    12a0:	fef43023          	sd	a5,-32(s0)
    12a4:	fe043703          	ld	a4,-32(s0)
    12a8:	fe843783          	ld	a5,-24(s0)
    12ac:	02e7fc63          	bgeu	a5,a4,12e4 <memmove+0x64>
    12b0:	a00d                	j	12d2 <memmove+0x52>
    12b2:	fe043703          	ld	a4,-32(s0)
    12b6:	00170793          	addi	a5,a4,1
    12ba:	fef43023          	sd	a5,-32(s0)
    12be:	fe843783          	ld	a5,-24(s0)
    12c2:	00178693          	addi	a3,a5,1
    12c6:	fed43423          	sd	a3,-24(s0)
    12ca:	00074703          	lbu	a4,0(a4)
    12ce:	00e78023          	sb	a4,0(a5)
    12d2:	fcc42783          	lw	a5,-52(s0)
    12d6:	fff7871b          	addiw	a4,a5,-1
    12da:	fce42623          	sw	a4,-52(s0)
    12de:	fcf04ae3          	bgtz	a5,12b2 <memmove+0x32>
    12e2:	a891                	j	1336 <memmove+0xb6>
    12e4:	fcc42783          	lw	a5,-52(s0)
    12e8:	fe843703          	ld	a4,-24(s0)
    12ec:	97ba                	add	a5,a5,a4
    12ee:	fef43423          	sd	a5,-24(s0)
    12f2:	fcc42783          	lw	a5,-52(s0)
    12f6:	fe043703          	ld	a4,-32(s0)
    12fa:	97ba                	add	a5,a5,a4
    12fc:	fef43023          	sd	a5,-32(s0)
    1300:	a01d                	j	1326 <memmove+0xa6>
    1302:	fe043783          	ld	a5,-32(s0)
    1306:	17fd                	addi	a5,a5,-1
    1308:	fef43023          	sd	a5,-32(s0)
    130c:	fe843783          	ld	a5,-24(s0)
    1310:	17fd                	addi	a5,a5,-1
    1312:	fef43423          	sd	a5,-24(s0)
    1316:	fe043783          	ld	a5,-32(s0)
    131a:	0007c703          	lbu	a4,0(a5)
    131e:	fe843783          	ld	a5,-24(s0)
    1322:	00e78023          	sb	a4,0(a5)
    1326:	fcc42783          	lw	a5,-52(s0)
    132a:	fff7871b          	addiw	a4,a5,-1
    132e:	fce42623          	sw	a4,-52(s0)
    1332:	fcf048e3          	bgtz	a5,1302 <memmove+0x82>
    1336:	fd843783          	ld	a5,-40(s0)
    133a:	853e                	mv	a0,a5
    133c:	7462                	ld	s0,56(sp)
    133e:	6121                	addi	sp,sp,64
    1340:	8082                	ret

0000000000001342 <memcmp>:
    1342:	7139                	addi	sp,sp,-64
    1344:	fc22                	sd	s0,56(sp)
    1346:	0080                	addi	s0,sp,64
    1348:	fca43c23          	sd	a0,-40(s0)
    134c:	fcb43823          	sd	a1,-48(s0)
    1350:	87b2                	mv	a5,a2
    1352:	fcf42623          	sw	a5,-52(s0)
    1356:	fd843783          	ld	a5,-40(s0)
    135a:	fef43423          	sd	a5,-24(s0)
    135e:	fd043783          	ld	a5,-48(s0)
    1362:	fef43023          	sd	a5,-32(s0)
    1366:	a0a1                	j	13ae <memcmp+0x6c>
    1368:	fe843783          	ld	a5,-24(s0)
    136c:	0007c703          	lbu	a4,0(a5)
    1370:	fe043783          	ld	a5,-32(s0)
    1374:	0007c783          	lbu	a5,0(a5)
    1378:	02f70163          	beq	a4,a5,139a <memcmp+0x58>
    137c:	fe843783          	ld	a5,-24(s0)
    1380:	0007c783          	lbu	a5,0(a5)
    1384:	0007871b          	sext.w	a4,a5
    1388:	fe043783          	ld	a5,-32(s0)
    138c:	0007c783          	lbu	a5,0(a5)
    1390:	2781                	sext.w	a5,a5
    1392:	40f707bb          	subw	a5,a4,a5
    1396:	2781                	sext.w	a5,a5
    1398:	a01d                	j	13be <memcmp+0x7c>
    139a:	fe843783          	ld	a5,-24(s0)
    139e:	0785                	addi	a5,a5,1
    13a0:	fef43423          	sd	a5,-24(s0)
    13a4:	fe043783          	ld	a5,-32(s0)
    13a8:	0785                	addi	a5,a5,1
    13aa:	fef43023          	sd	a5,-32(s0)
    13ae:	fcc42783          	lw	a5,-52(s0)
    13b2:	fff7871b          	addiw	a4,a5,-1
    13b6:	fce42623          	sw	a4,-52(s0)
    13ba:	f7dd                	bnez	a5,1368 <memcmp+0x26>
    13bc:	4781                	li	a5,0
    13be:	853e                	mv	a0,a5
    13c0:	7462                	ld	s0,56(sp)
    13c2:	6121                	addi	sp,sp,64
    13c4:	8082                	ret

00000000000013c6 <memcpy>:
    13c6:	7179                	addi	sp,sp,-48
    13c8:	f406                	sd	ra,40(sp)
    13ca:	f022                	sd	s0,32(sp)
    13cc:	1800                	addi	s0,sp,48
    13ce:	fea43423          	sd	a0,-24(s0)
    13d2:	feb43023          	sd	a1,-32(s0)
    13d6:	87b2                	mv	a5,a2
    13d8:	fcf42e23          	sw	a5,-36(s0)
    13dc:	fdc42783          	lw	a5,-36(s0)
    13e0:	863e                	mv	a2,a5
    13e2:	fe043583          	ld	a1,-32(s0)
    13e6:	fe843503          	ld	a0,-24(s0)
    13ea:	00000097          	auipc	ra,0x0
    13ee:	e96080e7          	jalr	-362(ra) # 1280 <memmove>
    13f2:	87aa                	mv	a5,a0
    13f4:	853e                	mv	a0,a5
    13f6:	70a2                	ld	ra,40(sp)
    13f8:	7402                	ld	s0,32(sp)
    13fa:	6145                	addi	sp,sp,48
    13fc:	8082                	ret

00000000000013fe <fork>:
    13fe:	4885                	li	a7,1
    1400:	00000073          	ecall
    1404:	8082                	ret

0000000000001406 <exit>:
    1406:	4889                	li	a7,2
    1408:	00000073          	ecall
    140c:	8082                	ret

000000000000140e <wait>:
    140e:	488d                	li	a7,3
    1410:	00000073          	ecall
    1414:	8082                	ret

0000000000001416 <pipe>:
    1416:	4891                	li	a7,4
    1418:	00000073          	ecall
    141c:	8082                	ret

000000000000141e <read>:
    141e:	4895                	li	a7,5
    1420:	00000073          	ecall
    1424:	8082                	ret

0000000000001426 <write>:
    1426:	48c1                	li	a7,16
    1428:	00000073          	ecall
    142c:	8082                	ret

000000000000142e <close>:
    142e:	48d5                	li	a7,21
    1430:	00000073          	ecall
    1434:	8082                	ret

0000000000001436 <kill>:
    1436:	4899                	li	a7,6
    1438:	00000073          	ecall
    143c:	8082                	ret

000000000000143e <exec>:
    143e:	489d                	li	a7,7
    1440:	00000073          	ecall
    1444:	8082                	ret

0000000000001446 <open>:
    1446:	48bd                	li	a7,15
    1448:	00000073          	ecall
    144c:	8082                	ret

000000000000144e <mknod>:
    144e:	48c5                	li	a7,17
    1450:	00000073          	ecall
    1454:	8082                	ret

0000000000001456 <unlink>:
    1456:	48c9                	li	a7,18
    1458:	00000073          	ecall
    145c:	8082                	ret

000000000000145e <fstat>:
    145e:	48a1                	li	a7,8
    1460:	00000073          	ecall
    1464:	8082                	ret

0000000000001466 <link>:
    1466:	48cd                	li	a7,19
    1468:	00000073          	ecall
    146c:	8082                	ret

000000000000146e <mkdir>:
    146e:	48d1                	li	a7,20
    1470:	00000073          	ecall
    1474:	8082                	ret

0000000000001476 <chdir>:
    1476:	48a5                	li	a7,9
    1478:	00000073          	ecall
    147c:	8082                	ret

000000000000147e <dup>:
    147e:	48a9                	li	a7,10
    1480:	00000073          	ecall
    1484:	8082                	ret

0000000000001486 <getpid>:
    1486:	48ad                	li	a7,11
    1488:	00000073          	ecall
    148c:	8082                	ret

000000000000148e <sbrk>:
    148e:	48b1                	li	a7,12
    1490:	00000073          	ecall
    1494:	8082                	ret

0000000000001496 <sleep>:
    1496:	48b5                	li	a7,13
    1498:	00000073          	ecall
    149c:	8082                	ret

000000000000149e <uptime>:
    149e:	48b9                	li	a7,14
    14a0:	00000073          	ecall
    14a4:	8082                	ret

00000000000014a6 <waitx>:
    14a6:	48d9                	li	a7,22
    14a8:	00000073          	ecall
    14ac:	8082                	ret

00000000000014ae <getsyscount>:
    14ae:	48dd                	li	a7,23
    14b0:	00000073          	ecall
    14b4:	8082                	ret

00000000000014b6 <sigalarm>:
    14b6:	48e1                	li	a7,24
    14b8:	00000073          	ecall
    14bc:	8082                	ret

00000000000014be <sigreturn>:
    14be:	48e5                	li	a7,25
    14c0:	00000073          	ecall
    14c4:	8082                	ret

00000000000014c6 <settickets>:
    14c6:	48e9                	li	a7,26
    14c8:	00000073          	ecall
    14cc:	8082                	ret

00000000000014ce <putc>:
    14ce:	1101                	addi	sp,sp,-32
    14d0:	ec06                	sd	ra,24(sp)
    14d2:	e822                	sd	s0,16(sp)
    14d4:	1000                	addi	s0,sp,32
    14d6:	87aa                	mv	a5,a0
    14d8:	872e                	mv	a4,a1
    14da:	fef42623          	sw	a5,-20(s0)
    14de:	87ba                	mv	a5,a4
    14e0:	fef405a3          	sb	a5,-21(s0)
    14e4:	feb40713          	addi	a4,s0,-21
    14e8:	fec42783          	lw	a5,-20(s0)
    14ec:	4605                	li	a2,1
    14ee:	85ba                	mv	a1,a4
    14f0:	853e                	mv	a0,a5
    14f2:	00000097          	auipc	ra,0x0
    14f6:	f34080e7          	jalr	-204(ra) # 1426 <write>
    14fa:	0001                	nop
    14fc:	60e2                	ld	ra,24(sp)
    14fe:	6442                	ld	s0,16(sp)
    1500:	6105                	addi	sp,sp,32
    1502:	8082                	ret

0000000000001504 <printint>:
    1504:	7139                	addi	sp,sp,-64
    1506:	fc06                	sd	ra,56(sp)
    1508:	f822                	sd	s0,48(sp)
    150a:	0080                	addi	s0,sp,64
    150c:	87aa                	mv	a5,a0
    150e:	8736                	mv	a4,a3
    1510:	fcf42623          	sw	a5,-52(s0)
    1514:	87ae                	mv	a5,a1
    1516:	fcf42423          	sw	a5,-56(s0)
    151a:	87b2                	mv	a5,a2
    151c:	fcf42223          	sw	a5,-60(s0)
    1520:	87ba                	mv	a5,a4
    1522:	fcf42023          	sw	a5,-64(s0)
    1526:	fe042423          	sw	zero,-24(s0)
    152a:	fc042783          	lw	a5,-64(s0)
    152e:	2781                	sext.w	a5,a5
    1530:	c38d                	beqz	a5,1552 <printint+0x4e>
    1532:	fc842783          	lw	a5,-56(s0)
    1536:	2781                	sext.w	a5,a5
    1538:	0007dd63          	bgez	a5,1552 <printint+0x4e>
    153c:	4785                	li	a5,1
    153e:	fef42423          	sw	a5,-24(s0)
    1542:	fc842783          	lw	a5,-56(s0)
    1546:	40f007bb          	negw	a5,a5
    154a:	2781                	sext.w	a5,a5
    154c:	fef42223          	sw	a5,-28(s0)
    1550:	a029                	j	155a <printint+0x56>
    1552:	fc842783          	lw	a5,-56(s0)
    1556:	fef42223          	sw	a5,-28(s0)
    155a:	fe042623          	sw	zero,-20(s0)
    155e:	fc442783          	lw	a5,-60(s0)
    1562:	fe442703          	lw	a4,-28(s0)
    1566:	02f777bb          	remuw	a5,a4,a5
    156a:	0007861b          	sext.w	a2,a5
    156e:	fec42783          	lw	a5,-20(s0)
    1572:	0017871b          	addiw	a4,a5,1
    1576:	fee42623          	sw	a4,-20(s0)
    157a:	00001697          	auipc	a3,0x1
    157e:	a9668693          	addi	a3,a3,-1386 # 2010 <digits>
    1582:	02061713          	slli	a4,a2,0x20
    1586:	9301                	srli	a4,a4,0x20
    1588:	9736                	add	a4,a4,a3
    158a:	00074703          	lbu	a4,0(a4)
    158e:	17c1                	addi	a5,a5,-16
    1590:	97a2                	add	a5,a5,s0
    1592:	fee78023          	sb	a4,-32(a5)
    1596:	fc442783          	lw	a5,-60(s0)
    159a:	fe442703          	lw	a4,-28(s0)
    159e:	02f757bb          	divuw	a5,a4,a5
    15a2:	fef42223          	sw	a5,-28(s0)
    15a6:	fe442783          	lw	a5,-28(s0)
    15aa:	2781                	sext.w	a5,a5
    15ac:	fbcd                	bnez	a5,155e <printint+0x5a>
    15ae:	fe842783          	lw	a5,-24(s0)
    15b2:	2781                	sext.w	a5,a5
    15b4:	cf85                	beqz	a5,15ec <printint+0xe8>
    15b6:	fec42783          	lw	a5,-20(s0)
    15ba:	0017871b          	addiw	a4,a5,1
    15be:	fee42623          	sw	a4,-20(s0)
    15c2:	17c1                	addi	a5,a5,-16
    15c4:	97a2                	add	a5,a5,s0
    15c6:	02d00713          	li	a4,45
    15ca:	fee78023          	sb	a4,-32(a5)
    15ce:	a839                	j	15ec <printint+0xe8>
    15d0:	fec42783          	lw	a5,-20(s0)
    15d4:	17c1                	addi	a5,a5,-16
    15d6:	97a2                	add	a5,a5,s0
    15d8:	fe07c703          	lbu	a4,-32(a5)
    15dc:	fcc42783          	lw	a5,-52(s0)
    15e0:	85ba                	mv	a1,a4
    15e2:	853e                	mv	a0,a5
    15e4:	00000097          	auipc	ra,0x0
    15e8:	eea080e7          	jalr	-278(ra) # 14ce <putc>
    15ec:	fec42783          	lw	a5,-20(s0)
    15f0:	37fd                	addiw	a5,a5,-1
    15f2:	fef42623          	sw	a5,-20(s0)
    15f6:	fec42783          	lw	a5,-20(s0)
    15fa:	2781                	sext.w	a5,a5
    15fc:	fc07dae3          	bgez	a5,15d0 <printint+0xcc>
    1600:	0001                	nop
    1602:	0001                	nop
    1604:	70e2                	ld	ra,56(sp)
    1606:	7442                	ld	s0,48(sp)
    1608:	6121                	addi	sp,sp,64
    160a:	8082                	ret

000000000000160c <printptr>:
    160c:	7179                	addi	sp,sp,-48
    160e:	f406                	sd	ra,40(sp)
    1610:	f022                	sd	s0,32(sp)
    1612:	1800                	addi	s0,sp,48
    1614:	87aa                	mv	a5,a0
    1616:	fcb43823          	sd	a1,-48(s0)
    161a:	fcf42e23          	sw	a5,-36(s0)
    161e:	fdc42783          	lw	a5,-36(s0)
    1622:	03000593          	li	a1,48
    1626:	853e                	mv	a0,a5
    1628:	00000097          	auipc	ra,0x0
    162c:	ea6080e7          	jalr	-346(ra) # 14ce <putc>
    1630:	fdc42783          	lw	a5,-36(s0)
    1634:	07800593          	li	a1,120
    1638:	853e                	mv	a0,a5
    163a:	00000097          	auipc	ra,0x0
    163e:	e94080e7          	jalr	-364(ra) # 14ce <putc>
    1642:	fe042623          	sw	zero,-20(s0)
    1646:	a82d                	j	1680 <printptr+0x74>
    1648:	fd043783          	ld	a5,-48(s0)
    164c:	93f1                	srli	a5,a5,0x3c
    164e:	00001717          	auipc	a4,0x1
    1652:	9c270713          	addi	a4,a4,-1598 # 2010 <digits>
    1656:	97ba                	add	a5,a5,a4
    1658:	0007c703          	lbu	a4,0(a5)
    165c:	fdc42783          	lw	a5,-36(s0)
    1660:	85ba                	mv	a1,a4
    1662:	853e                	mv	a0,a5
    1664:	00000097          	auipc	ra,0x0
    1668:	e6a080e7          	jalr	-406(ra) # 14ce <putc>
    166c:	fec42783          	lw	a5,-20(s0)
    1670:	2785                	addiw	a5,a5,1
    1672:	fef42623          	sw	a5,-20(s0)
    1676:	fd043783          	ld	a5,-48(s0)
    167a:	0792                	slli	a5,a5,0x4
    167c:	fcf43823          	sd	a5,-48(s0)
    1680:	fec42783          	lw	a5,-20(s0)
    1684:	873e                	mv	a4,a5
    1686:	47bd                	li	a5,15
    1688:	fce7f0e3          	bgeu	a5,a4,1648 <printptr+0x3c>
    168c:	0001                	nop
    168e:	0001                	nop
    1690:	70a2                	ld	ra,40(sp)
    1692:	7402                	ld	s0,32(sp)
    1694:	6145                	addi	sp,sp,48
    1696:	8082                	ret

0000000000001698 <vprintf>:
    1698:	715d                	addi	sp,sp,-80
    169a:	e486                	sd	ra,72(sp)
    169c:	e0a2                	sd	s0,64(sp)
    169e:	0880                	addi	s0,sp,80
    16a0:	87aa                	mv	a5,a0
    16a2:	fcb43023          	sd	a1,-64(s0)
    16a6:	fac43c23          	sd	a2,-72(s0)
    16aa:	fcf42623          	sw	a5,-52(s0)
    16ae:	fe042023          	sw	zero,-32(s0)
    16b2:	fe042223          	sw	zero,-28(s0)
    16b6:	a42d                	j	18e0 <vprintf+0x248>
    16b8:	fe442783          	lw	a5,-28(s0)
    16bc:	fc043703          	ld	a4,-64(s0)
    16c0:	97ba                	add	a5,a5,a4
    16c2:	0007c783          	lbu	a5,0(a5)
    16c6:	fcf42e23          	sw	a5,-36(s0)
    16ca:	fe042783          	lw	a5,-32(s0)
    16ce:	2781                	sext.w	a5,a5
    16d0:	eb9d                	bnez	a5,1706 <vprintf+0x6e>
    16d2:	fdc42783          	lw	a5,-36(s0)
    16d6:	0007871b          	sext.w	a4,a5
    16da:	02500793          	li	a5,37
    16de:	00f71763          	bne	a4,a5,16ec <vprintf+0x54>
    16e2:	02500793          	li	a5,37
    16e6:	fef42023          	sw	a5,-32(s0)
    16ea:	a2f5                	j	18d6 <vprintf+0x23e>
    16ec:	fdc42783          	lw	a5,-36(s0)
    16f0:	0ff7f713          	zext.b	a4,a5
    16f4:	fcc42783          	lw	a5,-52(s0)
    16f8:	85ba                	mv	a1,a4
    16fa:	853e                	mv	a0,a5
    16fc:	00000097          	auipc	ra,0x0
    1700:	dd2080e7          	jalr	-558(ra) # 14ce <putc>
    1704:	aac9                	j	18d6 <vprintf+0x23e>
    1706:	fe042783          	lw	a5,-32(s0)
    170a:	0007871b          	sext.w	a4,a5
    170e:	02500793          	li	a5,37
    1712:	1cf71263          	bne	a4,a5,18d6 <vprintf+0x23e>
    1716:	fdc42783          	lw	a5,-36(s0)
    171a:	0007871b          	sext.w	a4,a5
    171e:	06400793          	li	a5,100
    1722:	02f71463          	bne	a4,a5,174a <vprintf+0xb2>
    1726:	fb843783          	ld	a5,-72(s0)
    172a:	00878713          	addi	a4,a5,8
    172e:	fae43c23          	sd	a4,-72(s0)
    1732:	4398                	lw	a4,0(a5)
    1734:	fcc42783          	lw	a5,-52(s0)
    1738:	4685                	li	a3,1
    173a:	4629                	li	a2,10
    173c:	85ba                	mv	a1,a4
    173e:	853e                	mv	a0,a5
    1740:	00000097          	auipc	ra,0x0
    1744:	dc4080e7          	jalr	-572(ra) # 1504 <printint>
    1748:	a269                	j	18d2 <vprintf+0x23a>
    174a:	fdc42783          	lw	a5,-36(s0)
    174e:	0007871b          	sext.w	a4,a5
    1752:	06c00793          	li	a5,108
    1756:	02f71663          	bne	a4,a5,1782 <vprintf+0xea>
    175a:	fb843783          	ld	a5,-72(s0)
    175e:	00878713          	addi	a4,a5,8
    1762:	fae43c23          	sd	a4,-72(s0)
    1766:	639c                	ld	a5,0(a5)
    1768:	0007871b          	sext.w	a4,a5
    176c:	fcc42783          	lw	a5,-52(s0)
    1770:	4681                	li	a3,0
    1772:	4629                	li	a2,10
    1774:	85ba                	mv	a1,a4
    1776:	853e                	mv	a0,a5
    1778:	00000097          	auipc	ra,0x0
    177c:	d8c080e7          	jalr	-628(ra) # 1504 <printint>
    1780:	aa89                	j	18d2 <vprintf+0x23a>
    1782:	fdc42783          	lw	a5,-36(s0)
    1786:	0007871b          	sext.w	a4,a5
    178a:	07800793          	li	a5,120
    178e:	02f71463          	bne	a4,a5,17b6 <vprintf+0x11e>
    1792:	fb843783          	ld	a5,-72(s0)
    1796:	00878713          	addi	a4,a5,8
    179a:	fae43c23          	sd	a4,-72(s0)
    179e:	4398                	lw	a4,0(a5)
    17a0:	fcc42783          	lw	a5,-52(s0)
    17a4:	4681                	li	a3,0
    17a6:	4641                	li	a2,16
    17a8:	85ba                	mv	a1,a4
    17aa:	853e                	mv	a0,a5
    17ac:	00000097          	auipc	ra,0x0
    17b0:	d58080e7          	jalr	-680(ra) # 1504 <printint>
    17b4:	aa39                	j	18d2 <vprintf+0x23a>
    17b6:	fdc42783          	lw	a5,-36(s0)
    17ba:	0007871b          	sext.w	a4,a5
    17be:	07000793          	li	a5,112
    17c2:	02f71263          	bne	a4,a5,17e6 <vprintf+0x14e>
    17c6:	fb843783          	ld	a5,-72(s0)
    17ca:	00878713          	addi	a4,a5,8
    17ce:	fae43c23          	sd	a4,-72(s0)
    17d2:	6398                	ld	a4,0(a5)
    17d4:	fcc42783          	lw	a5,-52(s0)
    17d8:	85ba                	mv	a1,a4
    17da:	853e                	mv	a0,a5
    17dc:	00000097          	auipc	ra,0x0
    17e0:	e30080e7          	jalr	-464(ra) # 160c <printptr>
    17e4:	a0fd                	j	18d2 <vprintf+0x23a>
    17e6:	fdc42783          	lw	a5,-36(s0)
    17ea:	0007871b          	sext.w	a4,a5
    17ee:	07300793          	li	a5,115
    17f2:	04f71c63          	bne	a4,a5,184a <vprintf+0x1b2>
    17f6:	fb843783          	ld	a5,-72(s0)
    17fa:	00878713          	addi	a4,a5,8
    17fe:	fae43c23          	sd	a4,-72(s0)
    1802:	639c                	ld	a5,0(a5)
    1804:	fef43423          	sd	a5,-24(s0)
    1808:	fe843783          	ld	a5,-24(s0)
    180c:	eb8d                	bnez	a5,183e <vprintf+0x1a6>
    180e:	00000797          	auipc	a5,0x0
    1812:	5c278793          	addi	a5,a5,1474 # 1dd0 <malloc+0x288>
    1816:	fef43423          	sd	a5,-24(s0)
    181a:	a015                	j	183e <vprintf+0x1a6>
    181c:	fe843783          	ld	a5,-24(s0)
    1820:	0007c703          	lbu	a4,0(a5)
    1824:	fcc42783          	lw	a5,-52(s0)
    1828:	85ba                	mv	a1,a4
    182a:	853e                	mv	a0,a5
    182c:	00000097          	auipc	ra,0x0
    1830:	ca2080e7          	jalr	-862(ra) # 14ce <putc>
    1834:	fe843783          	ld	a5,-24(s0)
    1838:	0785                	addi	a5,a5,1
    183a:	fef43423          	sd	a5,-24(s0)
    183e:	fe843783          	ld	a5,-24(s0)
    1842:	0007c783          	lbu	a5,0(a5)
    1846:	fbf9                	bnez	a5,181c <vprintf+0x184>
    1848:	a069                	j	18d2 <vprintf+0x23a>
    184a:	fdc42783          	lw	a5,-36(s0)
    184e:	0007871b          	sext.w	a4,a5
    1852:	06300793          	li	a5,99
    1856:	02f71463          	bne	a4,a5,187e <vprintf+0x1e6>
    185a:	fb843783          	ld	a5,-72(s0)
    185e:	00878713          	addi	a4,a5,8
    1862:	fae43c23          	sd	a4,-72(s0)
    1866:	439c                	lw	a5,0(a5)
    1868:	0ff7f713          	zext.b	a4,a5
    186c:	fcc42783          	lw	a5,-52(s0)
    1870:	85ba                	mv	a1,a4
    1872:	853e                	mv	a0,a5
    1874:	00000097          	auipc	ra,0x0
    1878:	c5a080e7          	jalr	-934(ra) # 14ce <putc>
    187c:	a899                	j	18d2 <vprintf+0x23a>
    187e:	fdc42783          	lw	a5,-36(s0)
    1882:	0007871b          	sext.w	a4,a5
    1886:	02500793          	li	a5,37
    188a:	00f71f63          	bne	a4,a5,18a8 <vprintf+0x210>
    188e:	fdc42783          	lw	a5,-36(s0)
    1892:	0ff7f713          	zext.b	a4,a5
    1896:	fcc42783          	lw	a5,-52(s0)
    189a:	85ba                	mv	a1,a4
    189c:	853e                	mv	a0,a5
    189e:	00000097          	auipc	ra,0x0
    18a2:	c30080e7          	jalr	-976(ra) # 14ce <putc>
    18a6:	a035                	j	18d2 <vprintf+0x23a>
    18a8:	fcc42783          	lw	a5,-52(s0)
    18ac:	02500593          	li	a1,37
    18b0:	853e                	mv	a0,a5
    18b2:	00000097          	auipc	ra,0x0
    18b6:	c1c080e7          	jalr	-996(ra) # 14ce <putc>
    18ba:	fdc42783          	lw	a5,-36(s0)
    18be:	0ff7f713          	zext.b	a4,a5
    18c2:	fcc42783          	lw	a5,-52(s0)
    18c6:	85ba                	mv	a1,a4
    18c8:	853e                	mv	a0,a5
    18ca:	00000097          	auipc	ra,0x0
    18ce:	c04080e7          	jalr	-1020(ra) # 14ce <putc>
    18d2:	fe042023          	sw	zero,-32(s0)
    18d6:	fe442783          	lw	a5,-28(s0)
    18da:	2785                	addiw	a5,a5,1
    18dc:	fef42223          	sw	a5,-28(s0)
    18e0:	fe442783          	lw	a5,-28(s0)
    18e4:	fc043703          	ld	a4,-64(s0)
    18e8:	97ba                	add	a5,a5,a4
    18ea:	0007c783          	lbu	a5,0(a5)
    18ee:	dc0795e3          	bnez	a5,16b8 <vprintf+0x20>
    18f2:	0001                	nop
    18f4:	0001                	nop
    18f6:	60a6                	ld	ra,72(sp)
    18f8:	6406                	ld	s0,64(sp)
    18fa:	6161                	addi	sp,sp,80
    18fc:	8082                	ret

00000000000018fe <fprintf>:
    18fe:	7159                	addi	sp,sp,-112
    1900:	fc06                	sd	ra,56(sp)
    1902:	f822                	sd	s0,48(sp)
    1904:	0080                	addi	s0,sp,64
    1906:	fcb43823          	sd	a1,-48(s0)
    190a:	e010                	sd	a2,0(s0)
    190c:	e414                	sd	a3,8(s0)
    190e:	e818                	sd	a4,16(s0)
    1910:	ec1c                	sd	a5,24(s0)
    1912:	03043023          	sd	a6,32(s0)
    1916:	03143423          	sd	a7,40(s0)
    191a:	87aa                	mv	a5,a0
    191c:	fcf42e23          	sw	a5,-36(s0)
    1920:	03040793          	addi	a5,s0,48
    1924:	fcf43423          	sd	a5,-56(s0)
    1928:	fc843783          	ld	a5,-56(s0)
    192c:	fd078793          	addi	a5,a5,-48
    1930:	fef43423          	sd	a5,-24(s0)
    1934:	fe843703          	ld	a4,-24(s0)
    1938:	fdc42783          	lw	a5,-36(s0)
    193c:	863a                	mv	a2,a4
    193e:	fd043583          	ld	a1,-48(s0)
    1942:	853e                	mv	a0,a5
    1944:	00000097          	auipc	ra,0x0
    1948:	d54080e7          	jalr	-684(ra) # 1698 <vprintf>
    194c:	0001                	nop
    194e:	70e2                	ld	ra,56(sp)
    1950:	7442                	ld	s0,48(sp)
    1952:	6165                	addi	sp,sp,112
    1954:	8082                	ret

0000000000001956 <printf>:
    1956:	7159                	addi	sp,sp,-112
    1958:	f406                	sd	ra,40(sp)
    195a:	f022                	sd	s0,32(sp)
    195c:	1800                	addi	s0,sp,48
    195e:	fca43c23          	sd	a0,-40(s0)
    1962:	e40c                	sd	a1,8(s0)
    1964:	e810                	sd	a2,16(s0)
    1966:	ec14                	sd	a3,24(s0)
    1968:	f018                	sd	a4,32(s0)
    196a:	f41c                	sd	a5,40(s0)
    196c:	03043823          	sd	a6,48(s0)
    1970:	03143c23          	sd	a7,56(s0)
    1974:	04040793          	addi	a5,s0,64
    1978:	fcf43823          	sd	a5,-48(s0)
    197c:	fd043783          	ld	a5,-48(s0)
    1980:	fc878793          	addi	a5,a5,-56
    1984:	fef43423          	sd	a5,-24(s0)
    1988:	fe843783          	ld	a5,-24(s0)
    198c:	863e                	mv	a2,a5
    198e:	fd843583          	ld	a1,-40(s0)
    1992:	4505                	li	a0,1
    1994:	00000097          	auipc	ra,0x0
    1998:	d04080e7          	jalr	-764(ra) # 1698 <vprintf>
    199c:	0001                	nop
    199e:	70a2                	ld	ra,40(sp)
    19a0:	7402                	ld	s0,32(sp)
    19a2:	6165                	addi	sp,sp,112
    19a4:	8082                	ret

00000000000019a6 <free>:
    19a6:	7179                	addi	sp,sp,-48
    19a8:	f422                	sd	s0,40(sp)
    19aa:	1800                	addi	s0,sp,48
    19ac:	fca43c23          	sd	a0,-40(s0)
    19b0:	fd843783          	ld	a5,-40(s0)
    19b4:	17c1                	addi	a5,a5,-16
    19b6:	fef43023          	sd	a5,-32(s0)
    19ba:	00000797          	auipc	a5,0x0
    19be:	6ee78793          	addi	a5,a5,1774 # 20a8 <freep>
    19c2:	639c                	ld	a5,0(a5)
    19c4:	fef43423          	sd	a5,-24(s0)
    19c8:	a815                	j	19fc <free+0x56>
    19ca:	fe843783          	ld	a5,-24(s0)
    19ce:	639c                	ld	a5,0(a5)
    19d0:	fe843703          	ld	a4,-24(s0)
    19d4:	00f76f63          	bltu	a4,a5,19f2 <free+0x4c>
    19d8:	fe043703          	ld	a4,-32(s0)
    19dc:	fe843783          	ld	a5,-24(s0)
    19e0:	02e7eb63          	bltu	a5,a4,1a16 <free+0x70>
    19e4:	fe843783          	ld	a5,-24(s0)
    19e8:	639c                	ld	a5,0(a5)
    19ea:	fe043703          	ld	a4,-32(s0)
    19ee:	02f76463          	bltu	a4,a5,1a16 <free+0x70>
    19f2:	fe843783          	ld	a5,-24(s0)
    19f6:	639c                	ld	a5,0(a5)
    19f8:	fef43423          	sd	a5,-24(s0)
    19fc:	fe043703          	ld	a4,-32(s0)
    1a00:	fe843783          	ld	a5,-24(s0)
    1a04:	fce7f3e3          	bgeu	a5,a4,19ca <free+0x24>
    1a08:	fe843783          	ld	a5,-24(s0)
    1a0c:	639c                	ld	a5,0(a5)
    1a0e:	fe043703          	ld	a4,-32(s0)
    1a12:	faf77ce3          	bgeu	a4,a5,19ca <free+0x24>
    1a16:	fe043783          	ld	a5,-32(s0)
    1a1a:	479c                	lw	a5,8(a5)
    1a1c:	1782                	slli	a5,a5,0x20
    1a1e:	9381                	srli	a5,a5,0x20
    1a20:	0792                	slli	a5,a5,0x4
    1a22:	fe043703          	ld	a4,-32(s0)
    1a26:	973e                	add	a4,a4,a5
    1a28:	fe843783          	ld	a5,-24(s0)
    1a2c:	639c                	ld	a5,0(a5)
    1a2e:	02f71763          	bne	a4,a5,1a5c <free+0xb6>
    1a32:	fe043783          	ld	a5,-32(s0)
    1a36:	4798                	lw	a4,8(a5)
    1a38:	fe843783          	ld	a5,-24(s0)
    1a3c:	639c                	ld	a5,0(a5)
    1a3e:	479c                	lw	a5,8(a5)
    1a40:	9fb9                	addw	a5,a5,a4
    1a42:	0007871b          	sext.w	a4,a5
    1a46:	fe043783          	ld	a5,-32(s0)
    1a4a:	c798                	sw	a4,8(a5)
    1a4c:	fe843783          	ld	a5,-24(s0)
    1a50:	639c                	ld	a5,0(a5)
    1a52:	6398                	ld	a4,0(a5)
    1a54:	fe043783          	ld	a5,-32(s0)
    1a58:	e398                	sd	a4,0(a5)
    1a5a:	a039                	j	1a68 <free+0xc2>
    1a5c:	fe843783          	ld	a5,-24(s0)
    1a60:	6398                	ld	a4,0(a5)
    1a62:	fe043783          	ld	a5,-32(s0)
    1a66:	e398                	sd	a4,0(a5)
    1a68:	fe843783          	ld	a5,-24(s0)
    1a6c:	479c                	lw	a5,8(a5)
    1a6e:	1782                	slli	a5,a5,0x20
    1a70:	9381                	srli	a5,a5,0x20
    1a72:	0792                	slli	a5,a5,0x4
    1a74:	fe843703          	ld	a4,-24(s0)
    1a78:	97ba                	add	a5,a5,a4
    1a7a:	fe043703          	ld	a4,-32(s0)
    1a7e:	02f71563          	bne	a4,a5,1aa8 <free+0x102>
    1a82:	fe843783          	ld	a5,-24(s0)
    1a86:	4798                	lw	a4,8(a5)
    1a88:	fe043783          	ld	a5,-32(s0)
    1a8c:	479c                	lw	a5,8(a5)
    1a8e:	9fb9                	addw	a5,a5,a4
    1a90:	0007871b          	sext.w	a4,a5
    1a94:	fe843783          	ld	a5,-24(s0)
    1a98:	c798                	sw	a4,8(a5)
    1a9a:	fe043783          	ld	a5,-32(s0)
    1a9e:	6398                	ld	a4,0(a5)
    1aa0:	fe843783          	ld	a5,-24(s0)
    1aa4:	e398                	sd	a4,0(a5)
    1aa6:	a031                	j	1ab2 <free+0x10c>
    1aa8:	fe843783          	ld	a5,-24(s0)
    1aac:	fe043703          	ld	a4,-32(s0)
    1ab0:	e398                	sd	a4,0(a5)
    1ab2:	00000797          	auipc	a5,0x0
    1ab6:	5f678793          	addi	a5,a5,1526 # 20a8 <freep>
    1aba:	fe843703          	ld	a4,-24(s0)
    1abe:	e398                	sd	a4,0(a5)
    1ac0:	0001                	nop
    1ac2:	7422                	ld	s0,40(sp)
    1ac4:	6145                	addi	sp,sp,48
    1ac6:	8082                	ret

0000000000001ac8 <morecore>:
    1ac8:	7179                	addi	sp,sp,-48
    1aca:	f406                	sd	ra,40(sp)
    1acc:	f022                	sd	s0,32(sp)
    1ace:	1800                	addi	s0,sp,48
    1ad0:	87aa                	mv	a5,a0
    1ad2:	fcf42e23          	sw	a5,-36(s0)
    1ad6:	fdc42783          	lw	a5,-36(s0)
    1ada:	0007871b          	sext.w	a4,a5
    1ade:	6785                	lui	a5,0x1
    1ae0:	00f77563          	bgeu	a4,a5,1aea <morecore+0x22>
    1ae4:	6785                	lui	a5,0x1
    1ae6:	fcf42e23          	sw	a5,-36(s0)
    1aea:	fdc42783          	lw	a5,-36(s0)
    1aee:	0047979b          	slliw	a5,a5,0x4
    1af2:	2781                	sext.w	a5,a5
    1af4:	2781                	sext.w	a5,a5
    1af6:	853e                	mv	a0,a5
    1af8:	00000097          	auipc	ra,0x0
    1afc:	996080e7          	jalr	-1642(ra) # 148e <sbrk>
    1b00:	fea43423          	sd	a0,-24(s0)
    1b04:	fe843703          	ld	a4,-24(s0)
    1b08:	57fd                	li	a5,-1
    1b0a:	00f71463          	bne	a4,a5,1b12 <morecore+0x4a>
    1b0e:	4781                	li	a5,0
    1b10:	a03d                	j	1b3e <morecore+0x76>
    1b12:	fe843783          	ld	a5,-24(s0)
    1b16:	fef43023          	sd	a5,-32(s0)
    1b1a:	fe043783          	ld	a5,-32(s0)
    1b1e:	fdc42703          	lw	a4,-36(s0)
    1b22:	c798                	sw	a4,8(a5)
    1b24:	fe043783          	ld	a5,-32(s0)
    1b28:	07c1                	addi	a5,a5,16 # 1010 <strcmp+0x52>
    1b2a:	853e                	mv	a0,a5
    1b2c:	00000097          	auipc	ra,0x0
    1b30:	e7a080e7          	jalr	-390(ra) # 19a6 <free>
    1b34:	00000797          	auipc	a5,0x0
    1b38:	57478793          	addi	a5,a5,1396 # 20a8 <freep>
    1b3c:	639c                	ld	a5,0(a5)
    1b3e:	853e                	mv	a0,a5
    1b40:	70a2                	ld	ra,40(sp)
    1b42:	7402                	ld	s0,32(sp)
    1b44:	6145                	addi	sp,sp,48
    1b46:	8082                	ret

0000000000001b48 <malloc>:
    1b48:	7139                	addi	sp,sp,-64
    1b4a:	fc06                	sd	ra,56(sp)
    1b4c:	f822                	sd	s0,48(sp)
    1b4e:	0080                	addi	s0,sp,64
    1b50:	87aa                	mv	a5,a0
    1b52:	fcf42623          	sw	a5,-52(s0)
    1b56:	fcc46783          	lwu	a5,-52(s0)
    1b5a:	07bd                	addi	a5,a5,15
    1b5c:	8391                	srli	a5,a5,0x4
    1b5e:	2781                	sext.w	a5,a5
    1b60:	2785                	addiw	a5,a5,1
    1b62:	fcf42e23          	sw	a5,-36(s0)
    1b66:	00000797          	auipc	a5,0x0
    1b6a:	54278793          	addi	a5,a5,1346 # 20a8 <freep>
    1b6e:	639c                	ld	a5,0(a5)
    1b70:	fef43023          	sd	a5,-32(s0)
    1b74:	fe043783          	ld	a5,-32(s0)
    1b78:	ef95                	bnez	a5,1bb4 <malloc+0x6c>
    1b7a:	00000797          	auipc	a5,0x0
    1b7e:	51e78793          	addi	a5,a5,1310 # 2098 <base>
    1b82:	fef43023          	sd	a5,-32(s0)
    1b86:	00000797          	auipc	a5,0x0
    1b8a:	52278793          	addi	a5,a5,1314 # 20a8 <freep>
    1b8e:	fe043703          	ld	a4,-32(s0)
    1b92:	e398                	sd	a4,0(a5)
    1b94:	00000797          	auipc	a5,0x0
    1b98:	51478793          	addi	a5,a5,1300 # 20a8 <freep>
    1b9c:	6398                	ld	a4,0(a5)
    1b9e:	00000797          	auipc	a5,0x0
    1ba2:	4fa78793          	addi	a5,a5,1274 # 2098 <base>
    1ba6:	e398                	sd	a4,0(a5)
    1ba8:	00000797          	auipc	a5,0x0
    1bac:	4f078793          	addi	a5,a5,1264 # 2098 <base>
    1bb0:	0007a423          	sw	zero,8(a5)
    1bb4:	fe043783          	ld	a5,-32(s0)
    1bb8:	639c                	ld	a5,0(a5)
    1bba:	fef43423          	sd	a5,-24(s0)
    1bbe:	fe843783          	ld	a5,-24(s0)
    1bc2:	4798                	lw	a4,8(a5)
    1bc4:	fdc42783          	lw	a5,-36(s0)
    1bc8:	2781                	sext.w	a5,a5
    1bca:	06f76763          	bltu	a4,a5,1c38 <malloc+0xf0>
    1bce:	fe843783          	ld	a5,-24(s0)
    1bd2:	4798                	lw	a4,8(a5)
    1bd4:	fdc42783          	lw	a5,-36(s0)
    1bd8:	2781                	sext.w	a5,a5
    1bda:	00e79963          	bne	a5,a4,1bec <malloc+0xa4>
    1bde:	fe843783          	ld	a5,-24(s0)
    1be2:	6398                	ld	a4,0(a5)
    1be4:	fe043783          	ld	a5,-32(s0)
    1be8:	e398                	sd	a4,0(a5)
    1bea:	a825                	j	1c22 <malloc+0xda>
    1bec:	fe843783          	ld	a5,-24(s0)
    1bf0:	479c                	lw	a5,8(a5)
    1bf2:	fdc42703          	lw	a4,-36(s0)
    1bf6:	9f99                	subw	a5,a5,a4
    1bf8:	0007871b          	sext.w	a4,a5
    1bfc:	fe843783          	ld	a5,-24(s0)
    1c00:	c798                	sw	a4,8(a5)
    1c02:	fe843783          	ld	a5,-24(s0)
    1c06:	479c                	lw	a5,8(a5)
    1c08:	1782                	slli	a5,a5,0x20
    1c0a:	9381                	srli	a5,a5,0x20
    1c0c:	0792                	slli	a5,a5,0x4
    1c0e:	fe843703          	ld	a4,-24(s0)
    1c12:	97ba                	add	a5,a5,a4
    1c14:	fef43423          	sd	a5,-24(s0)
    1c18:	fe843783          	ld	a5,-24(s0)
    1c1c:	fdc42703          	lw	a4,-36(s0)
    1c20:	c798                	sw	a4,8(a5)
    1c22:	00000797          	auipc	a5,0x0
    1c26:	48678793          	addi	a5,a5,1158 # 20a8 <freep>
    1c2a:	fe043703          	ld	a4,-32(s0)
    1c2e:	e398                	sd	a4,0(a5)
    1c30:	fe843783          	ld	a5,-24(s0)
    1c34:	07c1                	addi	a5,a5,16
    1c36:	a091                	j	1c7a <malloc+0x132>
    1c38:	00000797          	auipc	a5,0x0
    1c3c:	47078793          	addi	a5,a5,1136 # 20a8 <freep>
    1c40:	639c                	ld	a5,0(a5)
    1c42:	fe843703          	ld	a4,-24(s0)
    1c46:	02f71063          	bne	a4,a5,1c66 <malloc+0x11e>
    1c4a:	fdc42783          	lw	a5,-36(s0)
    1c4e:	853e                	mv	a0,a5
    1c50:	00000097          	auipc	ra,0x0
    1c54:	e78080e7          	jalr	-392(ra) # 1ac8 <morecore>
    1c58:	fea43423          	sd	a0,-24(s0)
    1c5c:	fe843783          	ld	a5,-24(s0)
    1c60:	e399                	bnez	a5,1c66 <malloc+0x11e>
    1c62:	4781                	li	a5,0
    1c64:	a819                	j	1c7a <malloc+0x132>
    1c66:	fe843783          	ld	a5,-24(s0)
    1c6a:	fef43023          	sd	a5,-32(s0)
    1c6e:	fe843783          	ld	a5,-24(s0)
    1c72:	639c                	ld	a5,0(a5)
    1c74:	fef43423          	sd	a5,-24(s0)
    1c78:	b799                	j	1bbe <malloc+0x76>
    1c7a:	853e                	mv	a0,a5
    1c7c:	70e2                	ld	ra,56(sp)
    1c7e:	7442                	ld	s0,48(sp)
    1c80:	6121                	addi	sp,sp,64
    1c82:	8082                	ret
