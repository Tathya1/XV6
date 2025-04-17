
user/_usertests:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <r_sp>:
       0:	1101                	addi	sp,sp,-32
       2:	ec22                	sd	s0,24(sp)
       4:	1000                	addi	s0,sp,32
       6:	878a                	mv	a5,sp
       8:	fef43423          	sd	a5,-24(s0)
       c:	fe843783          	ld	a5,-24(s0)
      10:	853e                	mv	a0,a5
      12:	6462                	ld	s0,24(sp)
      14:	6105                	addi	sp,sp,32
      16:	8082                	ret

0000000000000018 <copyin>:
      18:	715d                	addi	sp,sp,-80
      1a:	e486                	sd	ra,72(sp)
      1c:	e0a2                	sd	s0,64(sp)
      1e:	0880                	addi	s0,sp,80
      20:	faa43c23          	sd	a0,-72(s0)
      24:	4785                	li	a5,1
      26:	07fe                	slli	a5,a5,0x1f
      28:	fcf43423          	sd	a5,-56(s0)
      2c:	57fd                	li	a5,-1
      2e:	fcf43823          	sd	a5,-48(s0)
      32:	fe042623          	sw	zero,-20(s0)
      36:	aa79                	j	1d4 <copyin+0x1bc>
      38:	fec42783          	lw	a5,-20(s0)
      3c:	078e                	slli	a5,a5,0x3
      3e:	17c1                	addi	a5,a5,-16
      40:	97a2                	add	a5,a5,s0
      42:	fd87b783          	ld	a5,-40(a5)
      46:	fef43023          	sd	a5,-32(s0)
      4a:	20100593          	li	a1,513
      4e:	00008517          	auipc	a0,0x8
      52:	0e250513          	addi	a0,a0,226 # 8130 <malloc+0x146>
      56:	00008097          	auipc	ra,0x8
      5a:	892080e7          	jalr	-1902(ra) # 78e8 <open>
      5e:	87aa                	mv	a5,a0
      60:	fcf42e23          	sw	a5,-36(s0)
      64:	fdc42783          	lw	a5,-36(s0)
      68:	2781                	sext.w	a5,a5
      6a:	0007df63          	bgez	a5,88 <copyin+0x70>
      6e:	00008517          	auipc	a0,0x8
      72:	0ca50513          	addi	a0,a0,202 # 8138 <malloc+0x14e>
      76:	00008097          	auipc	ra,0x8
      7a:	d82080e7          	jalr	-638(ra) # 7df8 <printf>
      7e:	4505                	li	a0,1
      80:	00008097          	auipc	ra,0x8
      84:	828080e7          	jalr	-2008(ra) # 78a8 <exit>
      88:	fe043703          	ld	a4,-32(s0)
      8c:	fdc42783          	lw	a5,-36(s0)
      90:	6609                	lui	a2,0x2
      92:	85ba                	mv	a1,a4
      94:	853e                	mv	a0,a5
      96:	00008097          	auipc	ra,0x8
      9a:	832080e7          	jalr	-1998(ra) # 78c8 <write>
      9e:	87aa                	mv	a5,a0
      a0:	fcf42c23          	sw	a5,-40(s0)
      a4:	fd842783          	lw	a5,-40(s0)
      a8:	2781                	sext.w	a5,a5
      aa:	0207c463          	bltz	a5,d2 <copyin+0xba>
      ae:	fd842783          	lw	a5,-40(s0)
      b2:	863e                	mv	a2,a5
      b4:	fe043583          	ld	a1,-32(s0)
      b8:	00008517          	auipc	a0,0x8
      bc:	09850513          	addi	a0,a0,152 # 8150 <malloc+0x166>
      c0:	00008097          	auipc	ra,0x8
      c4:	d38080e7          	jalr	-712(ra) # 7df8 <printf>
      c8:	4505                	li	a0,1
      ca:	00007097          	auipc	ra,0x7
      ce:	7de080e7          	jalr	2014(ra) # 78a8 <exit>
      d2:	fdc42783          	lw	a5,-36(s0)
      d6:	853e                	mv	a0,a5
      d8:	00007097          	auipc	ra,0x7
      dc:	7f8080e7          	jalr	2040(ra) # 78d0 <close>
      e0:	00008517          	auipc	a0,0x8
      e4:	05050513          	addi	a0,a0,80 # 8130 <malloc+0x146>
      e8:	00008097          	auipc	ra,0x8
      ec:	810080e7          	jalr	-2032(ra) # 78f8 <unlink>
      f0:	fe043783          	ld	a5,-32(s0)
      f4:	6609                	lui	a2,0x2
      f6:	85be                	mv	a1,a5
      f8:	4505                	li	a0,1
      fa:	00007097          	auipc	ra,0x7
      fe:	7ce080e7          	jalr	1998(ra) # 78c8 <write>
     102:	87aa                	mv	a5,a0
     104:	fcf42c23          	sw	a5,-40(s0)
     108:	fd842783          	lw	a5,-40(s0)
     10c:	2781                	sext.w	a5,a5
     10e:	02f05463          	blez	a5,136 <copyin+0x11e>
     112:	fd842783          	lw	a5,-40(s0)
     116:	863e                	mv	a2,a5
     118:	fe043583          	ld	a1,-32(s0)
     11c:	00008517          	auipc	a0,0x8
     120:	06450513          	addi	a0,a0,100 # 8180 <malloc+0x196>
     124:	00008097          	auipc	ra,0x8
     128:	cd4080e7          	jalr	-812(ra) # 7df8 <printf>
     12c:	4505                	li	a0,1
     12e:	00007097          	auipc	ra,0x7
     132:	77a080e7          	jalr	1914(ra) # 78a8 <exit>
     136:	fc040793          	addi	a5,s0,-64
     13a:	853e                	mv	a0,a5
     13c:	00007097          	auipc	ra,0x7
     140:	77c080e7          	jalr	1916(ra) # 78b8 <pipe>
     144:	87aa                	mv	a5,a0
     146:	0007df63          	bgez	a5,164 <copyin+0x14c>
     14a:	00008517          	auipc	a0,0x8
     14e:	06650513          	addi	a0,a0,102 # 81b0 <malloc+0x1c6>
     152:	00008097          	auipc	ra,0x8
     156:	ca6080e7          	jalr	-858(ra) # 7df8 <printf>
     15a:	4505                	li	a0,1
     15c:	00007097          	auipc	ra,0x7
     160:	74c080e7          	jalr	1868(ra) # 78a8 <exit>
     164:	fc442783          	lw	a5,-60(s0)
     168:	fe043703          	ld	a4,-32(s0)
     16c:	6609                	lui	a2,0x2
     16e:	85ba                	mv	a1,a4
     170:	853e                	mv	a0,a5
     172:	00007097          	auipc	ra,0x7
     176:	756080e7          	jalr	1878(ra) # 78c8 <write>
     17a:	87aa                	mv	a5,a0
     17c:	fcf42c23          	sw	a5,-40(s0)
     180:	fd842783          	lw	a5,-40(s0)
     184:	2781                	sext.w	a5,a5
     186:	02f05463          	blez	a5,1ae <copyin+0x196>
     18a:	fd842783          	lw	a5,-40(s0)
     18e:	863e                	mv	a2,a5
     190:	fe043583          	ld	a1,-32(s0)
     194:	00008517          	auipc	a0,0x8
     198:	02c50513          	addi	a0,a0,44 # 81c0 <malloc+0x1d6>
     19c:	00008097          	auipc	ra,0x8
     1a0:	c5c080e7          	jalr	-932(ra) # 7df8 <printf>
     1a4:	4505                	li	a0,1
     1a6:	00007097          	auipc	ra,0x7
     1aa:	702080e7          	jalr	1794(ra) # 78a8 <exit>
     1ae:	fc042783          	lw	a5,-64(s0)
     1b2:	853e                	mv	a0,a5
     1b4:	00007097          	auipc	ra,0x7
     1b8:	71c080e7          	jalr	1820(ra) # 78d0 <close>
     1bc:	fc442783          	lw	a5,-60(s0)
     1c0:	853e                	mv	a0,a5
     1c2:	00007097          	auipc	ra,0x7
     1c6:	70e080e7          	jalr	1806(ra) # 78d0 <close>
     1ca:	fec42783          	lw	a5,-20(s0)
     1ce:	2785                	addiw	a5,a5,1
     1d0:	fef42623          	sw	a5,-20(s0)
     1d4:	fec42783          	lw	a5,-20(s0)
     1d8:	0007871b          	sext.w	a4,a5
     1dc:	4785                	li	a5,1
     1de:	e4e7dde3          	bge	a5,a4,38 <copyin+0x20>
     1e2:	0001                	nop
     1e4:	0001                	nop
     1e6:	60a6                	ld	ra,72(sp)
     1e8:	6406                	ld	s0,64(sp)
     1ea:	6161                	addi	sp,sp,80
     1ec:	8082                	ret

00000000000001ee <copyout>:
     1ee:	715d                	addi	sp,sp,-80
     1f0:	e486                	sd	ra,72(sp)
     1f2:	e0a2                	sd	s0,64(sp)
     1f4:	0880                	addi	s0,sp,80
     1f6:	faa43c23          	sd	a0,-72(s0)
     1fa:	4785                	li	a5,1
     1fc:	07fe                	slli	a5,a5,0x1f
     1fe:	fcf43423          	sd	a5,-56(s0)
     202:	57fd                	li	a5,-1
     204:	fcf43823          	sd	a5,-48(s0)
     208:	fe042623          	sw	zero,-20(s0)
     20c:	a271                	j	398 <copyout+0x1aa>
     20e:	fec42783          	lw	a5,-20(s0)
     212:	078e                	slli	a5,a5,0x3
     214:	17c1                	addi	a5,a5,-16
     216:	97a2                	add	a5,a5,s0
     218:	fd87b783          	ld	a5,-40(a5)
     21c:	fef43023          	sd	a5,-32(s0)
     220:	4581                	li	a1,0
     222:	00008517          	auipc	a0,0x8
     226:	fce50513          	addi	a0,a0,-50 # 81f0 <malloc+0x206>
     22a:	00007097          	auipc	ra,0x7
     22e:	6be080e7          	jalr	1726(ra) # 78e8 <open>
     232:	87aa                	mv	a5,a0
     234:	fcf42e23          	sw	a5,-36(s0)
     238:	fdc42783          	lw	a5,-36(s0)
     23c:	2781                	sext.w	a5,a5
     23e:	0007df63          	bgez	a5,25c <copyout+0x6e>
     242:	00008517          	auipc	a0,0x8
     246:	fb650513          	addi	a0,a0,-74 # 81f8 <malloc+0x20e>
     24a:	00008097          	auipc	ra,0x8
     24e:	bae080e7          	jalr	-1106(ra) # 7df8 <printf>
     252:	4505                	li	a0,1
     254:	00007097          	auipc	ra,0x7
     258:	654080e7          	jalr	1620(ra) # 78a8 <exit>
     25c:	fe043703          	ld	a4,-32(s0)
     260:	fdc42783          	lw	a5,-36(s0)
     264:	6609                	lui	a2,0x2
     266:	85ba                	mv	a1,a4
     268:	853e                	mv	a0,a5
     26a:	00007097          	auipc	ra,0x7
     26e:	656080e7          	jalr	1622(ra) # 78c0 <read>
     272:	87aa                	mv	a5,a0
     274:	fcf42c23          	sw	a5,-40(s0)
     278:	fd842783          	lw	a5,-40(s0)
     27c:	2781                	sext.w	a5,a5
     27e:	02f05463          	blez	a5,2a6 <copyout+0xb8>
     282:	fd842783          	lw	a5,-40(s0)
     286:	863e                	mv	a2,a5
     288:	fe043583          	ld	a1,-32(s0)
     28c:	00008517          	auipc	a0,0x8
     290:	f8450513          	addi	a0,a0,-124 # 8210 <malloc+0x226>
     294:	00008097          	auipc	ra,0x8
     298:	b64080e7          	jalr	-1180(ra) # 7df8 <printf>
     29c:	4505                	li	a0,1
     29e:	00007097          	auipc	ra,0x7
     2a2:	60a080e7          	jalr	1546(ra) # 78a8 <exit>
     2a6:	fdc42783          	lw	a5,-36(s0)
     2aa:	853e                	mv	a0,a5
     2ac:	00007097          	auipc	ra,0x7
     2b0:	624080e7          	jalr	1572(ra) # 78d0 <close>
     2b4:	fc040793          	addi	a5,s0,-64
     2b8:	853e                	mv	a0,a5
     2ba:	00007097          	auipc	ra,0x7
     2be:	5fe080e7          	jalr	1534(ra) # 78b8 <pipe>
     2c2:	87aa                	mv	a5,a0
     2c4:	0007df63          	bgez	a5,2e2 <copyout+0xf4>
     2c8:	00008517          	auipc	a0,0x8
     2cc:	ee850513          	addi	a0,a0,-280 # 81b0 <malloc+0x1c6>
     2d0:	00008097          	auipc	ra,0x8
     2d4:	b28080e7          	jalr	-1240(ra) # 7df8 <printf>
     2d8:	4505                	li	a0,1
     2da:	00007097          	auipc	ra,0x7
     2de:	5ce080e7          	jalr	1486(ra) # 78a8 <exit>
     2e2:	fc442783          	lw	a5,-60(s0)
     2e6:	4605                	li	a2,1
     2e8:	00008597          	auipc	a1,0x8
     2ec:	f5858593          	addi	a1,a1,-168 # 8240 <malloc+0x256>
     2f0:	853e                	mv	a0,a5
     2f2:	00007097          	auipc	ra,0x7
     2f6:	5d6080e7          	jalr	1494(ra) # 78c8 <write>
     2fa:	87aa                	mv	a5,a0
     2fc:	fcf42c23          	sw	a5,-40(s0)
     300:	fd842783          	lw	a5,-40(s0)
     304:	0007871b          	sext.w	a4,a5
     308:	4785                	li	a5,1
     30a:	00f70f63          	beq	a4,a5,328 <copyout+0x13a>
     30e:	00008517          	auipc	a0,0x8
     312:	f3a50513          	addi	a0,a0,-198 # 8248 <malloc+0x25e>
     316:	00008097          	auipc	ra,0x8
     31a:	ae2080e7          	jalr	-1310(ra) # 7df8 <printf>
     31e:	4505                	li	a0,1
     320:	00007097          	auipc	ra,0x7
     324:	588080e7          	jalr	1416(ra) # 78a8 <exit>
     328:	fc042783          	lw	a5,-64(s0)
     32c:	fe043703          	ld	a4,-32(s0)
     330:	6609                	lui	a2,0x2
     332:	85ba                	mv	a1,a4
     334:	853e                	mv	a0,a5
     336:	00007097          	auipc	ra,0x7
     33a:	58a080e7          	jalr	1418(ra) # 78c0 <read>
     33e:	87aa                	mv	a5,a0
     340:	fcf42c23          	sw	a5,-40(s0)
     344:	fd842783          	lw	a5,-40(s0)
     348:	2781                	sext.w	a5,a5
     34a:	02f05463          	blez	a5,372 <copyout+0x184>
     34e:	fd842783          	lw	a5,-40(s0)
     352:	863e                	mv	a2,a5
     354:	fe043583          	ld	a1,-32(s0)
     358:	00008517          	auipc	a0,0x8
     35c:	f0850513          	addi	a0,a0,-248 # 8260 <malloc+0x276>
     360:	00008097          	auipc	ra,0x8
     364:	a98080e7          	jalr	-1384(ra) # 7df8 <printf>
     368:	4505                	li	a0,1
     36a:	00007097          	auipc	ra,0x7
     36e:	53e080e7          	jalr	1342(ra) # 78a8 <exit>
     372:	fc042783          	lw	a5,-64(s0)
     376:	853e                	mv	a0,a5
     378:	00007097          	auipc	ra,0x7
     37c:	558080e7          	jalr	1368(ra) # 78d0 <close>
     380:	fc442783          	lw	a5,-60(s0)
     384:	853e                	mv	a0,a5
     386:	00007097          	auipc	ra,0x7
     38a:	54a080e7          	jalr	1354(ra) # 78d0 <close>
     38e:	fec42783          	lw	a5,-20(s0)
     392:	2785                	addiw	a5,a5,1
     394:	fef42623          	sw	a5,-20(s0)
     398:	fec42783          	lw	a5,-20(s0)
     39c:	0007871b          	sext.w	a4,a5
     3a0:	4785                	li	a5,1
     3a2:	e6e7d6e3          	bge	a5,a4,20e <copyout+0x20>
     3a6:	0001                	nop
     3a8:	0001                	nop
     3aa:	60a6                	ld	ra,72(sp)
     3ac:	6406                	ld	s0,64(sp)
     3ae:	6161                	addi	sp,sp,80
     3b0:	8082                	ret

00000000000003b2 <copyinstr1>:
     3b2:	715d                	addi	sp,sp,-80
     3b4:	e486                	sd	ra,72(sp)
     3b6:	e0a2                	sd	s0,64(sp)
     3b8:	0880                	addi	s0,sp,80
     3ba:	faa43c23          	sd	a0,-72(s0)
     3be:	4785                	li	a5,1
     3c0:	07fe                	slli	a5,a5,0x1f
     3c2:	fcf43423          	sd	a5,-56(s0)
     3c6:	57fd                	li	a5,-1
     3c8:	fcf43823          	sd	a5,-48(s0)
     3cc:	fe042623          	sw	zero,-20(s0)
     3d0:	a095                	j	434 <copyinstr1+0x82>
     3d2:	fec42783          	lw	a5,-20(s0)
     3d6:	078e                	slli	a5,a5,0x3
     3d8:	17c1                	addi	a5,a5,-16
     3da:	97a2                	add	a5,a5,s0
     3dc:	fd87b783          	ld	a5,-40(a5)
     3e0:	fef43023          	sd	a5,-32(s0)
     3e4:	fe043783          	ld	a5,-32(s0)
     3e8:	20100593          	li	a1,513
     3ec:	853e                	mv	a0,a5
     3ee:	00007097          	auipc	ra,0x7
     3f2:	4fa080e7          	jalr	1274(ra) # 78e8 <open>
     3f6:	87aa                	mv	a5,a0
     3f8:	fcf42e23          	sw	a5,-36(s0)
     3fc:	fdc42783          	lw	a5,-36(s0)
     400:	2781                	sext.w	a5,a5
     402:	0207c463          	bltz	a5,42a <copyinstr1+0x78>
     406:	fdc42783          	lw	a5,-36(s0)
     40a:	863e                	mv	a2,a5
     40c:	fe043583          	ld	a1,-32(s0)
     410:	00008517          	auipc	a0,0x8
     414:	e8050513          	addi	a0,a0,-384 # 8290 <malloc+0x2a6>
     418:	00008097          	auipc	ra,0x8
     41c:	9e0080e7          	jalr	-1568(ra) # 7df8 <printf>
     420:	4505                	li	a0,1
     422:	00007097          	auipc	ra,0x7
     426:	486080e7          	jalr	1158(ra) # 78a8 <exit>
     42a:	fec42783          	lw	a5,-20(s0)
     42e:	2785                	addiw	a5,a5,1
     430:	fef42623          	sw	a5,-20(s0)
     434:	fec42783          	lw	a5,-20(s0)
     438:	0007871b          	sext.w	a4,a5
     43c:	4785                	li	a5,1
     43e:	f8e7dae3          	bge	a5,a4,3d2 <copyinstr1+0x20>
     442:	0001                	nop
     444:	0001                	nop
     446:	60a6                	ld	ra,72(sp)
     448:	6406                	ld	s0,64(sp)
     44a:	6161                	addi	sp,sp,80
     44c:	8082                	ret

000000000000044e <copyinstr2>:
     44e:	7151                	addi	sp,sp,-240
     450:	f586                	sd	ra,232(sp)
     452:	f1a2                	sd	s0,224(sp)
     454:	1980                	addi	s0,sp,240
     456:	f0a43c23          	sd	a0,-232(s0)
     45a:	fe042623          	sw	zero,-20(s0)
     45e:	a831                	j	47a <copyinstr2+0x2c>
     460:	fec42783          	lw	a5,-20(s0)
     464:	17c1                	addi	a5,a5,-16
     466:	97a2                	add	a5,a5,s0
     468:	07800713          	li	a4,120
     46c:	f6e78423          	sb	a4,-152(a5)
     470:	fec42783          	lw	a5,-20(s0)
     474:	2785                	addiw	a5,a5,1
     476:	fef42623          	sw	a5,-20(s0)
     47a:	fec42783          	lw	a5,-20(s0)
     47e:	0007871b          	sext.w	a4,a5
     482:	07f00793          	li	a5,127
     486:	fce7dde3          	bge	a5,a4,460 <copyinstr2+0x12>
     48a:	fc040c23          	sb	zero,-40(s0)
     48e:	f5840793          	addi	a5,s0,-168
     492:	853e                	mv	a0,a5
     494:	00007097          	auipc	ra,0x7
     498:	464080e7          	jalr	1124(ra) # 78f8 <unlink>
     49c:	87aa                	mv	a5,a0
     49e:	fef42223          	sw	a5,-28(s0)
     4a2:	fe442783          	lw	a5,-28(s0)
     4a6:	0007871b          	sext.w	a4,a5
     4aa:	57fd                	li	a5,-1
     4ac:	02f70563          	beq	a4,a5,4d6 <copyinstr2+0x88>
     4b0:	fe442703          	lw	a4,-28(s0)
     4b4:	f5840793          	addi	a5,s0,-168
     4b8:	863a                	mv	a2,a4
     4ba:	85be                	mv	a1,a5
     4bc:	00008517          	auipc	a0,0x8
     4c0:	df450513          	addi	a0,a0,-524 # 82b0 <malloc+0x2c6>
     4c4:	00008097          	auipc	ra,0x8
     4c8:	934080e7          	jalr	-1740(ra) # 7df8 <printf>
     4cc:	4505                	li	a0,1
     4ce:	00007097          	auipc	ra,0x7
     4d2:	3da080e7          	jalr	986(ra) # 78a8 <exit>
     4d6:	f5840793          	addi	a5,s0,-168
     4da:	20100593          	li	a1,513
     4de:	853e                	mv	a0,a5
     4e0:	00007097          	auipc	ra,0x7
     4e4:	408080e7          	jalr	1032(ra) # 78e8 <open>
     4e8:	87aa                	mv	a5,a0
     4ea:	fef42023          	sw	a5,-32(s0)
     4ee:	fe042783          	lw	a5,-32(s0)
     4f2:	0007871b          	sext.w	a4,a5
     4f6:	57fd                	li	a5,-1
     4f8:	02f70563          	beq	a4,a5,522 <copyinstr2+0xd4>
     4fc:	fe042703          	lw	a4,-32(s0)
     500:	f5840793          	addi	a5,s0,-168
     504:	863a                	mv	a2,a4
     506:	85be                	mv	a1,a5
     508:	00008517          	auipc	a0,0x8
     50c:	dc850513          	addi	a0,a0,-568 # 82d0 <malloc+0x2e6>
     510:	00008097          	auipc	ra,0x8
     514:	8e8080e7          	jalr	-1816(ra) # 7df8 <printf>
     518:	4505                	li	a0,1
     51a:	00007097          	auipc	ra,0x7
     51e:	38e080e7          	jalr	910(ra) # 78a8 <exit>
     522:	f5840713          	addi	a4,s0,-168
     526:	f5840793          	addi	a5,s0,-168
     52a:	85ba                	mv	a1,a4
     52c:	853e                	mv	a0,a5
     52e:	00007097          	auipc	ra,0x7
     532:	3da080e7          	jalr	986(ra) # 7908 <link>
     536:	87aa                	mv	a5,a0
     538:	fef42223          	sw	a5,-28(s0)
     53c:	fe442783          	lw	a5,-28(s0)
     540:	0007871b          	sext.w	a4,a5
     544:	57fd                	li	a5,-1
     546:	02f70763          	beq	a4,a5,574 <copyinstr2+0x126>
     54a:	fe442683          	lw	a3,-28(s0)
     54e:	f5840713          	addi	a4,s0,-168
     552:	f5840793          	addi	a5,s0,-168
     556:	863a                	mv	a2,a4
     558:	85be                	mv	a1,a5
     55a:	00008517          	auipc	a0,0x8
     55e:	d9650513          	addi	a0,a0,-618 # 82f0 <malloc+0x306>
     562:	00008097          	auipc	ra,0x8
     566:	896080e7          	jalr	-1898(ra) # 7df8 <printf>
     56a:	4505                	li	a0,1
     56c:	00007097          	auipc	ra,0x7
     570:	33c080e7          	jalr	828(ra) # 78a8 <exit>
     574:	00008797          	auipc	a5,0x8
     578:	da478793          	addi	a5,a5,-604 # 8318 <malloc+0x32e>
     57c:	f4f43423          	sd	a5,-184(s0)
     580:	f4043823          	sd	zero,-176(s0)
     584:	f4840713          	addi	a4,s0,-184
     588:	f5840793          	addi	a5,s0,-168
     58c:	85ba                	mv	a1,a4
     58e:	853e                	mv	a0,a5
     590:	00007097          	auipc	ra,0x7
     594:	350080e7          	jalr	848(ra) # 78e0 <exec>
     598:	87aa                	mv	a5,a0
     59a:	fef42223          	sw	a5,-28(s0)
     59e:	fe442783          	lw	a5,-28(s0)
     5a2:	0007871b          	sext.w	a4,a5
     5a6:	57fd                	li	a5,-1
     5a8:	02f70563          	beq	a4,a5,5d2 <copyinstr2+0x184>
     5ac:	fe042703          	lw	a4,-32(s0)
     5b0:	f5840793          	addi	a5,s0,-168
     5b4:	863a                	mv	a2,a4
     5b6:	85be                	mv	a1,a5
     5b8:	00008517          	auipc	a0,0x8
     5bc:	d6850513          	addi	a0,a0,-664 # 8320 <malloc+0x336>
     5c0:	00008097          	auipc	ra,0x8
     5c4:	838080e7          	jalr	-1992(ra) # 7df8 <printf>
     5c8:	4505                	li	a0,1
     5ca:	00007097          	auipc	ra,0x7
     5ce:	2de080e7          	jalr	734(ra) # 78a8 <exit>
     5d2:	00007097          	auipc	ra,0x7
     5d6:	2ce080e7          	jalr	718(ra) # 78a0 <fork>
     5da:	87aa                	mv	a5,a0
     5dc:	fcf42e23          	sw	a5,-36(s0)
     5e0:	fdc42783          	lw	a5,-36(s0)
     5e4:	2781                	sext.w	a5,a5
     5e6:	0007df63          	bgez	a5,604 <copyinstr2+0x1b6>
     5ea:	00008517          	auipc	a0,0x8
     5ee:	d5650513          	addi	a0,a0,-682 # 8340 <malloc+0x356>
     5f2:	00008097          	auipc	ra,0x8
     5f6:	806080e7          	jalr	-2042(ra) # 7df8 <printf>
     5fa:	4505                	li	a0,1
     5fc:	00007097          	auipc	ra,0x7
     600:	2ac080e7          	jalr	684(ra) # 78a8 <exit>
     604:	fdc42783          	lw	a5,-36(s0)
     608:	2781                	sext.w	a5,a5
     60a:	efd5                	bnez	a5,6c6 <copyinstr2+0x278>
     60c:	fe042423          	sw	zero,-24(s0)
     610:	a00d                	j	632 <copyinstr2+0x1e4>
     612:	00010717          	auipc	a4,0x10
     616:	56e70713          	addi	a4,a4,1390 # 10b80 <big.0>
     61a:	fe842783          	lw	a5,-24(s0)
     61e:	97ba                	add	a5,a5,a4
     620:	07800713          	li	a4,120
     624:	00e78023          	sb	a4,0(a5)
     628:	fe842783          	lw	a5,-24(s0)
     62c:	2785                	addiw	a5,a5,1
     62e:	fef42423          	sw	a5,-24(s0)
     632:	fe842783          	lw	a5,-24(s0)
     636:	0007871b          	sext.w	a4,a5
     63a:	6785                	lui	a5,0x1
     63c:	fcf74be3          	blt	a4,a5,612 <copyinstr2+0x1c4>
     640:	00010717          	auipc	a4,0x10
     644:	54070713          	addi	a4,a4,1344 # 10b80 <big.0>
     648:	6785                	lui	a5,0x1
     64a:	97ba                	add	a5,a5,a4
     64c:	00078023          	sb	zero,0(a5) # 1000 <truncate3+0x1b2>
     650:	00008797          	auipc	a5,0x8
     654:	d6078793          	addi	a5,a5,-672 # 83b0 <malloc+0x3c6>
     658:	6390                	ld	a2,0(a5)
     65a:	6794                	ld	a3,8(a5)
     65c:	6b98                	ld	a4,16(a5)
     65e:	6f9c                	ld	a5,24(a5)
     660:	f2c43023          	sd	a2,-224(s0)
     664:	f2d43423          	sd	a3,-216(s0)
     668:	f2e43823          	sd	a4,-208(s0)
     66c:	f2f43c23          	sd	a5,-200(s0)
     670:	f2040793          	addi	a5,s0,-224
     674:	85be                	mv	a1,a5
     676:	00008517          	auipc	a0,0x8
     67a:	cda50513          	addi	a0,a0,-806 # 8350 <malloc+0x366>
     67e:	00007097          	auipc	ra,0x7
     682:	262080e7          	jalr	610(ra) # 78e0 <exec>
     686:	87aa                	mv	a5,a0
     688:	fef42223          	sw	a5,-28(s0)
     68c:	fe442783          	lw	a5,-28(s0)
     690:	0007871b          	sext.w	a4,a5
     694:	57fd                	li	a5,-1
     696:	02f70263          	beq	a4,a5,6ba <copyinstr2+0x26c>
     69a:	fe042783          	lw	a5,-32(s0)
     69e:	85be                	mv	a1,a5
     6a0:	00008517          	auipc	a0,0x8
     6a4:	cb850513          	addi	a0,a0,-840 # 8358 <malloc+0x36e>
     6a8:	00007097          	auipc	ra,0x7
     6ac:	750080e7          	jalr	1872(ra) # 7df8 <printf>
     6b0:	4505                	li	a0,1
     6b2:	00007097          	auipc	ra,0x7
     6b6:	1f6080e7          	jalr	502(ra) # 78a8 <exit>
     6ba:	2eb00513          	li	a0,747
     6be:	00007097          	auipc	ra,0x7
     6c2:	1ea080e7          	jalr	490(ra) # 78a8 <exit>
     6c6:	f4042223          	sw	zero,-188(s0)
     6ca:	f4440793          	addi	a5,s0,-188
     6ce:	853e                	mv	a0,a5
     6d0:	00007097          	auipc	ra,0x7
     6d4:	1e0080e7          	jalr	480(ra) # 78b0 <wait>
     6d8:	f4442783          	lw	a5,-188(s0)
     6dc:	873e                	mv	a4,a5
     6de:	2eb00793          	li	a5,747
     6e2:	00f70f63          	beq	a4,a5,700 <copyinstr2+0x2b2>
     6e6:	00008517          	auipc	a0,0x8
     6ea:	c9a50513          	addi	a0,a0,-870 # 8380 <malloc+0x396>
     6ee:	00007097          	auipc	ra,0x7
     6f2:	70a080e7          	jalr	1802(ra) # 7df8 <printf>
     6f6:	4505                	li	a0,1
     6f8:	00007097          	auipc	ra,0x7
     6fc:	1b0080e7          	jalr	432(ra) # 78a8 <exit>
     700:	0001                	nop
     702:	70ae                	ld	ra,232(sp)
     704:	740e                	ld	s0,224(sp)
     706:	616d                	addi	sp,sp,240
     708:	8082                	ret

000000000000070a <copyinstr3>:
     70a:	715d                	addi	sp,sp,-80
     70c:	e486                	sd	ra,72(sp)
     70e:	e0a2                	sd	s0,64(sp)
     710:	0880                	addi	s0,sp,80
     712:	faa43c23          	sd	a0,-72(s0)
     716:	6509                	lui	a0,0x2
     718:	00007097          	auipc	ra,0x7
     71c:	218080e7          	jalr	536(ra) # 7930 <sbrk>
     720:	4501                	li	a0,0
     722:	00007097          	auipc	ra,0x7
     726:	20e080e7          	jalr	526(ra) # 7930 <sbrk>
     72a:	87aa                	mv	a5,a0
     72c:	fef43423          	sd	a5,-24(s0)
     730:	fe843703          	ld	a4,-24(s0)
     734:	6785                	lui	a5,0x1
     736:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
     738:	8ff9                	and	a5,a5,a4
     73a:	c39d                	beqz	a5,760 <copyinstr3+0x56>
     73c:	fe843783          	ld	a5,-24(s0)
     740:	2781                	sext.w	a5,a5
     742:	873e                	mv	a4,a5
     744:	6785                	lui	a5,0x1
     746:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
     748:	8ff9                	and	a5,a5,a4
     74a:	2781                	sext.w	a5,a5
     74c:	6705                	lui	a4,0x1
     74e:	40f707bb          	subw	a5,a4,a5
     752:	2781                	sext.w	a5,a5
     754:	2781                	sext.w	a5,a5
     756:	853e                	mv	a0,a5
     758:	00007097          	auipc	ra,0x7
     75c:	1d8080e7          	jalr	472(ra) # 7930 <sbrk>
     760:	4501                	li	a0,0
     762:	00007097          	auipc	ra,0x7
     766:	1ce080e7          	jalr	462(ra) # 7930 <sbrk>
     76a:	87aa                	mv	a5,a0
     76c:	fef43423          	sd	a5,-24(s0)
     770:	fe843703          	ld	a4,-24(s0)
     774:	6785                	lui	a5,0x1
     776:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
     778:	8ff9                	and	a5,a5,a4
     77a:	cf91                	beqz	a5,796 <copyinstr3+0x8c>
     77c:	00008517          	auipc	a0,0x8
     780:	c5450513          	addi	a0,a0,-940 # 83d0 <malloc+0x3e6>
     784:	00007097          	auipc	ra,0x7
     788:	674080e7          	jalr	1652(ra) # 7df8 <printf>
     78c:	4505                	li	a0,1
     78e:	00007097          	auipc	ra,0x7
     792:	11a080e7          	jalr	282(ra) # 78a8 <exit>
     796:	fe843783          	ld	a5,-24(s0)
     79a:	17fd                	addi	a5,a5,-1
     79c:	fef43023          	sd	a5,-32(s0)
     7a0:	fe043783          	ld	a5,-32(s0)
     7a4:	07800713          	li	a4,120
     7a8:	00e78023          	sb	a4,0(a5)
     7ac:	fe043503          	ld	a0,-32(s0)
     7b0:	00007097          	auipc	ra,0x7
     7b4:	148080e7          	jalr	328(ra) # 78f8 <unlink>
     7b8:	87aa                	mv	a5,a0
     7ba:	fcf42e23          	sw	a5,-36(s0)
     7be:	fdc42783          	lw	a5,-36(s0)
     7c2:	0007871b          	sext.w	a4,a5
     7c6:	57fd                	li	a5,-1
     7c8:	02f70463          	beq	a4,a5,7f0 <copyinstr3+0xe6>
     7cc:	fdc42783          	lw	a5,-36(s0)
     7d0:	863e                	mv	a2,a5
     7d2:	fe043583          	ld	a1,-32(s0)
     7d6:	00008517          	auipc	a0,0x8
     7da:	ada50513          	addi	a0,a0,-1318 # 82b0 <malloc+0x2c6>
     7de:	00007097          	auipc	ra,0x7
     7e2:	61a080e7          	jalr	1562(ra) # 7df8 <printf>
     7e6:	4505                	li	a0,1
     7e8:	00007097          	auipc	ra,0x7
     7ec:	0c0080e7          	jalr	192(ra) # 78a8 <exit>
     7f0:	20100593          	li	a1,513
     7f4:	fe043503          	ld	a0,-32(s0)
     7f8:	00007097          	auipc	ra,0x7
     7fc:	0f0080e7          	jalr	240(ra) # 78e8 <open>
     800:	87aa                	mv	a5,a0
     802:	fcf42c23          	sw	a5,-40(s0)
     806:	fd842783          	lw	a5,-40(s0)
     80a:	0007871b          	sext.w	a4,a5
     80e:	57fd                	li	a5,-1
     810:	02f70463          	beq	a4,a5,838 <copyinstr3+0x12e>
     814:	fd842783          	lw	a5,-40(s0)
     818:	863e                	mv	a2,a5
     81a:	fe043583          	ld	a1,-32(s0)
     81e:	00008517          	auipc	a0,0x8
     822:	ab250513          	addi	a0,a0,-1358 # 82d0 <malloc+0x2e6>
     826:	00007097          	auipc	ra,0x7
     82a:	5d2080e7          	jalr	1490(ra) # 7df8 <printf>
     82e:	4505                	li	a0,1
     830:	00007097          	auipc	ra,0x7
     834:	078080e7          	jalr	120(ra) # 78a8 <exit>
     838:	fe043583          	ld	a1,-32(s0)
     83c:	fe043503          	ld	a0,-32(s0)
     840:	00007097          	auipc	ra,0x7
     844:	0c8080e7          	jalr	200(ra) # 7908 <link>
     848:	87aa                	mv	a5,a0
     84a:	fcf42e23          	sw	a5,-36(s0)
     84e:	fdc42783          	lw	a5,-36(s0)
     852:	0007871b          	sext.w	a4,a5
     856:	57fd                	li	a5,-1
     858:	02f70663          	beq	a4,a5,884 <copyinstr3+0x17a>
     85c:	fdc42783          	lw	a5,-36(s0)
     860:	86be                	mv	a3,a5
     862:	fe043603          	ld	a2,-32(s0)
     866:	fe043583          	ld	a1,-32(s0)
     86a:	00008517          	auipc	a0,0x8
     86e:	a8650513          	addi	a0,a0,-1402 # 82f0 <malloc+0x306>
     872:	00007097          	auipc	ra,0x7
     876:	586080e7          	jalr	1414(ra) # 7df8 <printf>
     87a:	4505                	li	a0,1
     87c:	00007097          	auipc	ra,0x7
     880:	02c080e7          	jalr	44(ra) # 78a8 <exit>
     884:	00008797          	auipc	a5,0x8
     888:	a9478793          	addi	a5,a5,-1388 # 8318 <malloc+0x32e>
     88c:	fcf43423          	sd	a5,-56(s0)
     890:	fc043823          	sd	zero,-48(s0)
     894:	fc840793          	addi	a5,s0,-56
     898:	85be                	mv	a1,a5
     89a:	fe043503          	ld	a0,-32(s0)
     89e:	00007097          	auipc	ra,0x7
     8a2:	042080e7          	jalr	66(ra) # 78e0 <exec>
     8a6:	87aa                	mv	a5,a0
     8a8:	fcf42e23          	sw	a5,-36(s0)
     8ac:	fdc42783          	lw	a5,-36(s0)
     8b0:	0007871b          	sext.w	a4,a5
     8b4:	57fd                	li	a5,-1
     8b6:	02f70463          	beq	a4,a5,8de <copyinstr3+0x1d4>
     8ba:	fd842783          	lw	a5,-40(s0)
     8be:	863e                	mv	a2,a5
     8c0:	fe043583          	ld	a1,-32(s0)
     8c4:	00008517          	auipc	a0,0x8
     8c8:	a5c50513          	addi	a0,a0,-1444 # 8320 <malloc+0x336>
     8cc:	00007097          	auipc	ra,0x7
     8d0:	52c080e7          	jalr	1324(ra) # 7df8 <printf>
     8d4:	4505                	li	a0,1
     8d6:	00007097          	auipc	ra,0x7
     8da:	fd2080e7          	jalr	-46(ra) # 78a8 <exit>
     8de:	0001                	nop
     8e0:	60a6                	ld	ra,72(sp)
     8e2:	6406                	ld	s0,64(sp)
     8e4:	6161                	addi	sp,sp,80
     8e6:	8082                	ret

00000000000008e8 <rwsbrk>:
     8e8:	1101                	addi	sp,sp,-32
     8ea:	ec06                	sd	ra,24(sp)
     8ec:	e822                	sd	s0,16(sp)
     8ee:	1000                	addi	s0,sp,32
     8f0:	6509                	lui	a0,0x2
     8f2:	00007097          	auipc	ra,0x7
     8f6:	03e080e7          	jalr	62(ra) # 7930 <sbrk>
     8fa:	87aa                	mv	a5,a0
     8fc:	fef43423          	sd	a5,-24(s0)
     900:	fe843703          	ld	a4,-24(s0)
     904:	57fd                	li	a5,-1
     906:	00f71f63          	bne	a4,a5,924 <rwsbrk+0x3c>
     90a:	00008517          	auipc	a0,0x8
     90e:	ace50513          	addi	a0,a0,-1330 # 83d8 <malloc+0x3ee>
     912:	00007097          	auipc	ra,0x7
     916:	4e6080e7          	jalr	1254(ra) # 7df8 <printf>
     91a:	4505                	li	a0,1
     91c:	00007097          	auipc	ra,0x7
     920:	f8c080e7          	jalr	-116(ra) # 78a8 <exit>
     924:	7579                	lui	a0,0xffffe
     926:	00007097          	auipc	ra,0x7
     92a:	00a080e7          	jalr	10(ra) # 7930 <sbrk>
     92e:	872a                	mv	a4,a0
     930:	57fd                	li	a5,-1
     932:	00f71f63          	bne	a4,a5,950 <rwsbrk+0x68>
     936:	00008517          	auipc	a0,0x8
     93a:	aba50513          	addi	a0,a0,-1350 # 83f0 <malloc+0x406>
     93e:	00007097          	auipc	ra,0x7
     942:	4ba080e7          	jalr	1210(ra) # 7df8 <printf>
     946:	4505                	li	a0,1
     948:	00007097          	auipc	ra,0x7
     94c:	f60080e7          	jalr	-160(ra) # 78a8 <exit>
     950:	20100593          	li	a1,513
     954:	00008517          	auipc	a0,0x8
     958:	abc50513          	addi	a0,a0,-1348 # 8410 <malloc+0x426>
     95c:	00007097          	auipc	ra,0x7
     960:	f8c080e7          	jalr	-116(ra) # 78e8 <open>
     964:	87aa                	mv	a5,a0
     966:	fef42223          	sw	a5,-28(s0)
     96a:	fe442783          	lw	a5,-28(s0)
     96e:	2781                	sext.w	a5,a5
     970:	0007df63          	bgez	a5,98e <rwsbrk+0xa6>
     974:	00008517          	auipc	a0,0x8
     978:	aa450513          	addi	a0,a0,-1372 # 8418 <malloc+0x42e>
     97c:	00007097          	auipc	ra,0x7
     980:	47c080e7          	jalr	1148(ra) # 7df8 <printf>
     984:	4505                	li	a0,1
     986:	00007097          	auipc	ra,0x7
     98a:	f22080e7          	jalr	-222(ra) # 78a8 <exit>
     98e:	fe843703          	ld	a4,-24(s0)
     992:	6785                	lui	a5,0x1
     994:	97ba                	add	a5,a5,a4
     996:	873e                	mv	a4,a5
     998:	fe442783          	lw	a5,-28(s0)
     99c:	40000613          	li	a2,1024
     9a0:	85ba                	mv	a1,a4
     9a2:	853e                	mv	a0,a5
     9a4:	00007097          	auipc	ra,0x7
     9a8:	f24080e7          	jalr	-220(ra) # 78c8 <write>
     9ac:	87aa                	mv	a5,a0
     9ae:	fef42023          	sw	a5,-32(s0)
     9b2:	fe042783          	lw	a5,-32(s0)
     9b6:	2781                	sext.w	a5,a5
     9b8:	0207c763          	bltz	a5,9e6 <rwsbrk+0xfe>
     9bc:	fe843703          	ld	a4,-24(s0)
     9c0:	6785                	lui	a5,0x1
     9c2:	97ba                	add	a5,a5,a4
     9c4:	fe042703          	lw	a4,-32(s0)
     9c8:	863a                	mv	a2,a4
     9ca:	85be                	mv	a1,a5
     9cc:	00008517          	auipc	a0,0x8
     9d0:	a6450513          	addi	a0,a0,-1436 # 8430 <malloc+0x446>
     9d4:	00007097          	auipc	ra,0x7
     9d8:	424080e7          	jalr	1060(ra) # 7df8 <printf>
     9dc:	4505                	li	a0,1
     9de:	00007097          	auipc	ra,0x7
     9e2:	eca080e7          	jalr	-310(ra) # 78a8 <exit>
     9e6:	fe442783          	lw	a5,-28(s0)
     9ea:	853e                	mv	a0,a5
     9ec:	00007097          	auipc	ra,0x7
     9f0:	ee4080e7          	jalr	-284(ra) # 78d0 <close>
     9f4:	00008517          	auipc	a0,0x8
     9f8:	a1c50513          	addi	a0,a0,-1508 # 8410 <malloc+0x426>
     9fc:	00007097          	auipc	ra,0x7
     a00:	efc080e7          	jalr	-260(ra) # 78f8 <unlink>
     a04:	4581                	li	a1,0
     a06:	00007517          	auipc	a0,0x7
     a0a:	7ea50513          	addi	a0,a0,2026 # 81f0 <malloc+0x206>
     a0e:	00007097          	auipc	ra,0x7
     a12:	eda080e7          	jalr	-294(ra) # 78e8 <open>
     a16:	87aa                	mv	a5,a0
     a18:	fef42223          	sw	a5,-28(s0)
     a1c:	fe442783          	lw	a5,-28(s0)
     a20:	2781                	sext.w	a5,a5
     a22:	0007df63          	bgez	a5,a40 <rwsbrk+0x158>
     a26:	00008517          	auipc	a0,0x8
     a2a:	9f250513          	addi	a0,a0,-1550 # 8418 <malloc+0x42e>
     a2e:	00007097          	auipc	ra,0x7
     a32:	3ca080e7          	jalr	970(ra) # 7df8 <printf>
     a36:	4505                	li	a0,1
     a38:	00007097          	auipc	ra,0x7
     a3c:	e70080e7          	jalr	-400(ra) # 78a8 <exit>
     a40:	fe843703          	ld	a4,-24(s0)
     a44:	6785                	lui	a5,0x1
     a46:	97ba                	add	a5,a5,a4
     a48:	873e                	mv	a4,a5
     a4a:	fe442783          	lw	a5,-28(s0)
     a4e:	4629                	li	a2,10
     a50:	85ba                	mv	a1,a4
     a52:	853e                	mv	a0,a5
     a54:	00007097          	auipc	ra,0x7
     a58:	e6c080e7          	jalr	-404(ra) # 78c0 <read>
     a5c:	87aa                	mv	a5,a0
     a5e:	fef42023          	sw	a5,-32(s0)
     a62:	fe042783          	lw	a5,-32(s0)
     a66:	2781                	sext.w	a5,a5
     a68:	0207c763          	bltz	a5,a96 <rwsbrk+0x1ae>
     a6c:	fe843703          	ld	a4,-24(s0)
     a70:	6785                	lui	a5,0x1
     a72:	97ba                	add	a5,a5,a4
     a74:	fe042703          	lw	a4,-32(s0)
     a78:	863a                	mv	a2,a4
     a7a:	85be                	mv	a1,a5
     a7c:	00008517          	auipc	a0,0x8
     a80:	9e450513          	addi	a0,a0,-1564 # 8460 <malloc+0x476>
     a84:	00007097          	auipc	ra,0x7
     a88:	374080e7          	jalr	884(ra) # 7df8 <printf>
     a8c:	4505                	li	a0,1
     a8e:	00007097          	auipc	ra,0x7
     a92:	e1a080e7          	jalr	-486(ra) # 78a8 <exit>
     a96:	fe442783          	lw	a5,-28(s0)
     a9a:	853e                	mv	a0,a5
     a9c:	00007097          	auipc	ra,0x7
     aa0:	e34080e7          	jalr	-460(ra) # 78d0 <close>
     aa4:	4501                	li	a0,0
     aa6:	00007097          	auipc	ra,0x7
     aaa:	e02080e7          	jalr	-510(ra) # 78a8 <exit>

0000000000000aae <truncate1>:
     aae:	715d                	addi	sp,sp,-80
     ab0:	e486                	sd	ra,72(sp)
     ab2:	e0a2                	sd	s0,64(sp)
     ab4:	0880                	addi	s0,sp,80
     ab6:	faa43c23          	sd	a0,-72(s0)
     aba:	00008517          	auipc	a0,0x8
     abe:	9ce50513          	addi	a0,a0,-1586 # 8488 <malloc+0x49e>
     ac2:	00007097          	auipc	ra,0x7
     ac6:	e36080e7          	jalr	-458(ra) # 78f8 <unlink>
     aca:	60100593          	li	a1,1537
     ace:	00008517          	auipc	a0,0x8
     ad2:	9ba50513          	addi	a0,a0,-1606 # 8488 <malloc+0x49e>
     ad6:	00007097          	auipc	ra,0x7
     ada:	e12080e7          	jalr	-494(ra) # 78e8 <open>
     ade:	87aa                	mv	a5,a0
     ae0:	fef42623          	sw	a5,-20(s0)
     ae4:	fec42783          	lw	a5,-20(s0)
     ae8:	4611                	li	a2,4
     aea:	00008597          	auipc	a1,0x8
     aee:	9ae58593          	addi	a1,a1,-1618 # 8498 <malloc+0x4ae>
     af2:	853e                	mv	a0,a5
     af4:	00007097          	auipc	ra,0x7
     af8:	dd4080e7          	jalr	-556(ra) # 78c8 <write>
     afc:	fec42783          	lw	a5,-20(s0)
     b00:	853e                	mv	a0,a5
     b02:	00007097          	auipc	ra,0x7
     b06:	dce080e7          	jalr	-562(ra) # 78d0 <close>
     b0a:	4581                	li	a1,0
     b0c:	00008517          	auipc	a0,0x8
     b10:	97c50513          	addi	a0,a0,-1668 # 8488 <malloc+0x49e>
     b14:	00007097          	auipc	ra,0x7
     b18:	dd4080e7          	jalr	-556(ra) # 78e8 <open>
     b1c:	87aa                	mv	a5,a0
     b1e:	fef42423          	sw	a5,-24(s0)
     b22:	fc040713          	addi	a4,s0,-64
     b26:	fe842783          	lw	a5,-24(s0)
     b2a:	02000613          	li	a2,32
     b2e:	85ba                	mv	a1,a4
     b30:	853e                	mv	a0,a5
     b32:	00007097          	auipc	ra,0x7
     b36:	d8e080e7          	jalr	-626(ra) # 78c0 <read>
     b3a:	87aa                	mv	a5,a0
     b3c:	fef42223          	sw	a5,-28(s0)
     b40:	fe442783          	lw	a5,-28(s0)
     b44:	0007871b          	sext.w	a4,a5
     b48:	4791                	li	a5,4
     b4a:	02f70463          	beq	a4,a5,b72 <truncate1+0xc4>
     b4e:	fe442783          	lw	a5,-28(s0)
     b52:	863e                	mv	a2,a5
     b54:	fb843583          	ld	a1,-72(s0)
     b58:	00008517          	auipc	a0,0x8
     b5c:	94850513          	addi	a0,a0,-1720 # 84a0 <malloc+0x4b6>
     b60:	00007097          	auipc	ra,0x7
     b64:	298080e7          	jalr	664(ra) # 7df8 <printf>
     b68:	4505                	li	a0,1
     b6a:	00007097          	auipc	ra,0x7
     b6e:	d3e080e7          	jalr	-706(ra) # 78a8 <exit>
     b72:	40100593          	li	a1,1025
     b76:	00008517          	auipc	a0,0x8
     b7a:	91250513          	addi	a0,a0,-1774 # 8488 <malloc+0x49e>
     b7e:	00007097          	auipc	ra,0x7
     b82:	d6a080e7          	jalr	-662(ra) # 78e8 <open>
     b86:	87aa                	mv	a5,a0
     b88:	fef42623          	sw	a5,-20(s0)
     b8c:	4581                	li	a1,0
     b8e:	00008517          	auipc	a0,0x8
     b92:	8fa50513          	addi	a0,a0,-1798 # 8488 <malloc+0x49e>
     b96:	00007097          	auipc	ra,0x7
     b9a:	d52080e7          	jalr	-686(ra) # 78e8 <open>
     b9e:	87aa                	mv	a5,a0
     ba0:	fef42023          	sw	a5,-32(s0)
     ba4:	fc040713          	addi	a4,s0,-64
     ba8:	fe042783          	lw	a5,-32(s0)
     bac:	02000613          	li	a2,32
     bb0:	85ba                	mv	a1,a4
     bb2:	853e                	mv	a0,a5
     bb4:	00007097          	auipc	ra,0x7
     bb8:	d0c080e7          	jalr	-756(ra) # 78c0 <read>
     bbc:	87aa                	mv	a5,a0
     bbe:	fef42223          	sw	a5,-28(s0)
     bc2:	fe442783          	lw	a5,-28(s0)
     bc6:	2781                	sext.w	a5,a5
     bc8:	cf95                	beqz	a5,c04 <truncate1+0x156>
     bca:	fe042783          	lw	a5,-32(s0)
     bce:	85be                	mv	a1,a5
     bd0:	00008517          	auipc	a0,0x8
     bd4:	8f050513          	addi	a0,a0,-1808 # 84c0 <malloc+0x4d6>
     bd8:	00007097          	auipc	ra,0x7
     bdc:	220080e7          	jalr	544(ra) # 7df8 <printf>
     be0:	fe442783          	lw	a5,-28(s0)
     be4:	863e                	mv	a2,a5
     be6:	fb843583          	ld	a1,-72(s0)
     bea:	00008517          	auipc	a0,0x8
     bee:	8e650513          	addi	a0,a0,-1818 # 84d0 <malloc+0x4e6>
     bf2:	00007097          	auipc	ra,0x7
     bf6:	206080e7          	jalr	518(ra) # 7df8 <printf>
     bfa:	4505                	li	a0,1
     bfc:	00007097          	auipc	ra,0x7
     c00:	cac080e7          	jalr	-852(ra) # 78a8 <exit>
     c04:	fc040713          	addi	a4,s0,-64
     c08:	fe842783          	lw	a5,-24(s0)
     c0c:	02000613          	li	a2,32
     c10:	85ba                	mv	a1,a4
     c12:	853e                	mv	a0,a5
     c14:	00007097          	auipc	ra,0x7
     c18:	cac080e7          	jalr	-852(ra) # 78c0 <read>
     c1c:	87aa                	mv	a5,a0
     c1e:	fef42223          	sw	a5,-28(s0)
     c22:	fe442783          	lw	a5,-28(s0)
     c26:	2781                	sext.w	a5,a5
     c28:	cf95                	beqz	a5,c64 <truncate1+0x1b6>
     c2a:	fe842783          	lw	a5,-24(s0)
     c2e:	85be                	mv	a1,a5
     c30:	00008517          	auipc	a0,0x8
     c34:	8c050513          	addi	a0,a0,-1856 # 84f0 <malloc+0x506>
     c38:	00007097          	auipc	ra,0x7
     c3c:	1c0080e7          	jalr	448(ra) # 7df8 <printf>
     c40:	fe442783          	lw	a5,-28(s0)
     c44:	863e                	mv	a2,a5
     c46:	fb843583          	ld	a1,-72(s0)
     c4a:	00008517          	auipc	a0,0x8
     c4e:	88650513          	addi	a0,a0,-1914 # 84d0 <malloc+0x4e6>
     c52:	00007097          	auipc	ra,0x7
     c56:	1a6080e7          	jalr	422(ra) # 7df8 <printf>
     c5a:	4505                	li	a0,1
     c5c:	00007097          	auipc	ra,0x7
     c60:	c4c080e7          	jalr	-948(ra) # 78a8 <exit>
     c64:	fec42783          	lw	a5,-20(s0)
     c68:	4619                	li	a2,6
     c6a:	00008597          	auipc	a1,0x8
     c6e:	89658593          	addi	a1,a1,-1898 # 8500 <malloc+0x516>
     c72:	853e                	mv	a0,a5
     c74:	00007097          	auipc	ra,0x7
     c78:	c54080e7          	jalr	-940(ra) # 78c8 <write>
     c7c:	fc040713          	addi	a4,s0,-64
     c80:	fe042783          	lw	a5,-32(s0)
     c84:	02000613          	li	a2,32
     c88:	85ba                	mv	a1,a4
     c8a:	853e                	mv	a0,a5
     c8c:	00007097          	auipc	ra,0x7
     c90:	c34080e7          	jalr	-972(ra) # 78c0 <read>
     c94:	87aa                	mv	a5,a0
     c96:	fef42223          	sw	a5,-28(s0)
     c9a:	fe442783          	lw	a5,-28(s0)
     c9e:	0007871b          	sext.w	a4,a5
     ca2:	4799                	li	a5,6
     ca4:	02f70463          	beq	a4,a5,ccc <truncate1+0x21e>
     ca8:	fe442783          	lw	a5,-28(s0)
     cac:	863e                	mv	a2,a5
     cae:	fb843583          	ld	a1,-72(s0)
     cb2:	00008517          	auipc	a0,0x8
     cb6:	85650513          	addi	a0,a0,-1962 # 8508 <malloc+0x51e>
     cba:	00007097          	auipc	ra,0x7
     cbe:	13e080e7          	jalr	318(ra) # 7df8 <printf>
     cc2:	4505                	li	a0,1
     cc4:	00007097          	auipc	ra,0x7
     cc8:	be4080e7          	jalr	-1052(ra) # 78a8 <exit>
     ccc:	fc040713          	addi	a4,s0,-64
     cd0:	fe842783          	lw	a5,-24(s0)
     cd4:	02000613          	li	a2,32
     cd8:	85ba                	mv	a1,a4
     cda:	853e                	mv	a0,a5
     cdc:	00007097          	auipc	ra,0x7
     ce0:	be4080e7          	jalr	-1052(ra) # 78c0 <read>
     ce4:	87aa                	mv	a5,a0
     ce6:	fef42223          	sw	a5,-28(s0)
     cea:	fe442783          	lw	a5,-28(s0)
     cee:	0007871b          	sext.w	a4,a5
     cf2:	4789                	li	a5,2
     cf4:	02f70463          	beq	a4,a5,d1c <truncate1+0x26e>
     cf8:	fe442783          	lw	a5,-28(s0)
     cfc:	863e                	mv	a2,a5
     cfe:	fb843583          	ld	a1,-72(s0)
     d02:	00008517          	auipc	a0,0x8
     d06:	82650513          	addi	a0,a0,-2010 # 8528 <malloc+0x53e>
     d0a:	00007097          	auipc	ra,0x7
     d0e:	0ee080e7          	jalr	238(ra) # 7df8 <printf>
     d12:	4505                	li	a0,1
     d14:	00007097          	auipc	ra,0x7
     d18:	b94080e7          	jalr	-1132(ra) # 78a8 <exit>
     d1c:	00007517          	auipc	a0,0x7
     d20:	76c50513          	addi	a0,a0,1900 # 8488 <malloc+0x49e>
     d24:	00007097          	auipc	ra,0x7
     d28:	bd4080e7          	jalr	-1068(ra) # 78f8 <unlink>
     d2c:	fec42783          	lw	a5,-20(s0)
     d30:	853e                	mv	a0,a5
     d32:	00007097          	auipc	ra,0x7
     d36:	b9e080e7          	jalr	-1122(ra) # 78d0 <close>
     d3a:	fe842783          	lw	a5,-24(s0)
     d3e:	853e                	mv	a0,a5
     d40:	00007097          	auipc	ra,0x7
     d44:	b90080e7          	jalr	-1136(ra) # 78d0 <close>
     d48:	fe042783          	lw	a5,-32(s0)
     d4c:	853e                	mv	a0,a5
     d4e:	00007097          	auipc	ra,0x7
     d52:	b82080e7          	jalr	-1150(ra) # 78d0 <close>
     d56:	0001                	nop
     d58:	60a6                	ld	ra,72(sp)
     d5a:	6406                	ld	s0,64(sp)
     d5c:	6161                	addi	sp,sp,80
     d5e:	8082                	ret

0000000000000d60 <truncate2>:
     d60:	7179                	addi	sp,sp,-48
     d62:	f406                	sd	ra,40(sp)
     d64:	f022                	sd	s0,32(sp)
     d66:	1800                	addi	s0,sp,48
     d68:	fca43c23          	sd	a0,-40(s0)
     d6c:	00007517          	auipc	a0,0x7
     d70:	71c50513          	addi	a0,a0,1820 # 8488 <malloc+0x49e>
     d74:	00007097          	auipc	ra,0x7
     d78:	b84080e7          	jalr	-1148(ra) # 78f8 <unlink>
     d7c:	60100593          	li	a1,1537
     d80:	00007517          	auipc	a0,0x7
     d84:	70850513          	addi	a0,a0,1800 # 8488 <malloc+0x49e>
     d88:	00007097          	auipc	ra,0x7
     d8c:	b60080e7          	jalr	-1184(ra) # 78e8 <open>
     d90:	87aa                	mv	a5,a0
     d92:	fef42623          	sw	a5,-20(s0)
     d96:	fec42783          	lw	a5,-20(s0)
     d9a:	4611                	li	a2,4
     d9c:	00007597          	auipc	a1,0x7
     da0:	6fc58593          	addi	a1,a1,1788 # 8498 <malloc+0x4ae>
     da4:	853e                	mv	a0,a5
     da6:	00007097          	auipc	ra,0x7
     daa:	b22080e7          	jalr	-1246(ra) # 78c8 <write>
     dae:	40100593          	li	a1,1025
     db2:	00007517          	auipc	a0,0x7
     db6:	6d650513          	addi	a0,a0,1750 # 8488 <malloc+0x49e>
     dba:	00007097          	auipc	ra,0x7
     dbe:	b2e080e7          	jalr	-1234(ra) # 78e8 <open>
     dc2:	87aa                	mv	a5,a0
     dc4:	fef42423          	sw	a5,-24(s0)
     dc8:	fec42783          	lw	a5,-20(s0)
     dcc:	4605                	li	a2,1
     dce:	00007597          	auipc	a1,0x7
     dd2:	47258593          	addi	a1,a1,1138 # 8240 <malloc+0x256>
     dd6:	853e                	mv	a0,a5
     dd8:	00007097          	auipc	ra,0x7
     ddc:	af0080e7          	jalr	-1296(ra) # 78c8 <write>
     de0:	87aa                	mv	a5,a0
     de2:	fef42223          	sw	a5,-28(s0)
     de6:	fe442783          	lw	a5,-28(s0)
     dea:	0007871b          	sext.w	a4,a5
     dee:	57fd                	li	a5,-1
     df0:	02f70463          	beq	a4,a5,e18 <truncate2+0xb8>
     df4:	fe442783          	lw	a5,-28(s0)
     df8:	863e                	mv	a2,a5
     dfa:	fd843583          	ld	a1,-40(s0)
     dfe:	00007517          	auipc	a0,0x7
     e02:	74a50513          	addi	a0,a0,1866 # 8548 <malloc+0x55e>
     e06:	00007097          	auipc	ra,0x7
     e0a:	ff2080e7          	jalr	-14(ra) # 7df8 <printf>
     e0e:	4505                	li	a0,1
     e10:	00007097          	auipc	ra,0x7
     e14:	a98080e7          	jalr	-1384(ra) # 78a8 <exit>
     e18:	00007517          	auipc	a0,0x7
     e1c:	67050513          	addi	a0,a0,1648 # 8488 <malloc+0x49e>
     e20:	00007097          	auipc	ra,0x7
     e24:	ad8080e7          	jalr	-1320(ra) # 78f8 <unlink>
     e28:	fec42783          	lw	a5,-20(s0)
     e2c:	853e                	mv	a0,a5
     e2e:	00007097          	auipc	ra,0x7
     e32:	aa2080e7          	jalr	-1374(ra) # 78d0 <close>
     e36:	fe842783          	lw	a5,-24(s0)
     e3a:	853e                	mv	a0,a5
     e3c:	00007097          	auipc	ra,0x7
     e40:	a94080e7          	jalr	-1388(ra) # 78d0 <close>
     e44:	0001                	nop
     e46:	70a2                	ld	ra,40(sp)
     e48:	7402                	ld	s0,32(sp)
     e4a:	6145                	addi	sp,sp,48
     e4c:	8082                	ret

0000000000000e4e <truncate3>:
     e4e:	711d                	addi	sp,sp,-96
     e50:	ec86                	sd	ra,88(sp)
     e52:	e8a2                	sd	s0,80(sp)
     e54:	1080                	addi	s0,sp,96
     e56:	faa43423          	sd	a0,-88(s0)
     e5a:	60100593          	li	a1,1537
     e5e:	00007517          	auipc	a0,0x7
     e62:	62a50513          	addi	a0,a0,1578 # 8488 <malloc+0x49e>
     e66:	00007097          	auipc	ra,0x7
     e6a:	a82080e7          	jalr	-1406(ra) # 78e8 <open>
     e6e:	87aa                	mv	a5,a0
     e70:	853e                	mv	a0,a5
     e72:	00007097          	auipc	ra,0x7
     e76:	a5e080e7          	jalr	-1442(ra) # 78d0 <close>
     e7a:	00007097          	auipc	ra,0x7
     e7e:	a26080e7          	jalr	-1498(ra) # 78a0 <fork>
     e82:	87aa                	mv	a5,a0
     e84:	fef42223          	sw	a5,-28(s0)
     e88:	fe442783          	lw	a5,-28(s0)
     e8c:	2781                	sext.w	a5,a5
     e8e:	0207d163          	bgez	a5,eb0 <truncate3+0x62>
     e92:	fa843583          	ld	a1,-88(s0)
     e96:	00007517          	auipc	a0,0x7
     e9a:	6da50513          	addi	a0,a0,1754 # 8570 <malloc+0x586>
     e9e:	00007097          	auipc	ra,0x7
     ea2:	f5a080e7          	jalr	-166(ra) # 7df8 <printf>
     ea6:	4505                	li	a0,1
     ea8:	00007097          	auipc	ra,0x7
     eac:	a00080e7          	jalr	-1536(ra) # 78a8 <exit>
     eb0:	fe442783          	lw	a5,-28(s0)
     eb4:	2781                	sext.w	a5,a5
     eb6:	10079563          	bnez	a5,fc0 <truncate3+0x172>
     eba:	fe042623          	sw	zero,-20(s0)
     ebe:	a0e5                	j	fa6 <truncate3+0x158>
     ec0:	4585                	li	a1,1
     ec2:	00007517          	auipc	a0,0x7
     ec6:	5c650513          	addi	a0,a0,1478 # 8488 <malloc+0x49e>
     eca:	00007097          	auipc	ra,0x7
     ece:	a1e080e7          	jalr	-1506(ra) # 78e8 <open>
     ed2:	87aa                	mv	a5,a0
     ed4:	fcf42c23          	sw	a5,-40(s0)
     ed8:	fd842783          	lw	a5,-40(s0)
     edc:	2781                	sext.w	a5,a5
     ede:	0207d163          	bgez	a5,f00 <truncate3+0xb2>
     ee2:	fa843583          	ld	a1,-88(s0)
     ee6:	00007517          	auipc	a0,0x7
     eea:	6a250513          	addi	a0,a0,1698 # 8588 <malloc+0x59e>
     eee:	00007097          	auipc	ra,0x7
     ef2:	f0a080e7          	jalr	-246(ra) # 7df8 <printf>
     ef6:	4505                	li	a0,1
     ef8:	00007097          	auipc	ra,0x7
     efc:	9b0080e7          	jalr	-1616(ra) # 78a8 <exit>
     f00:	fd842783          	lw	a5,-40(s0)
     f04:	4629                	li	a2,10
     f06:	00007597          	auipc	a1,0x7
     f0a:	69a58593          	addi	a1,a1,1690 # 85a0 <malloc+0x5b6>
     f0e:	853e                	mv	a0,a5
     f10:	00007097          	auipc	ra,0x7
     f14:	9b8080e7          	jalr	-1608(ra) # 78c8 <write>
     f18:	87aa                	mv	a5,a0
     f1a:	fcf42a23          	sw	a5,-44(s0)
     f1e:	fd442783          	lw	a5,-44(s0)
     f22:	0007871b          	sext.w	a4,a5
     f26:	47a9                	li	a5,10
     f28:	02f70463          	beq	a4,a5,f50 <truncate3+0x102>
     f2c:	fd442783          	lw	a5,-44(s0)
     f30:	863e                	mv	a2,a5
     f32:	fa843583          	ld	a1,-88(s0)
     f36:	00007517          	auipc	a0,0x7
     f3a:	67a50513          	addi	a0,a0,1658 # 85b0 <malloc+0x5c6>
     f3e:	00007097          	auipc	ra,0x7
     f42:	eba080e7          	jalr	-326(ra) # 7df8 <printf>
     f46:	4505                	li	a0,1
     f48:	00007097          	auipc	ra,0x7
     f4c:	960080e7          	jalr	-1696(ra) # 78a8 <exit>
     f50:	fd842783          	lw	a5,-40(s0)
     f54:	853e                	mv	a0,a5
     f56:	00007097          	auipc	ra,0x7
     f5a:	97a080e7          	jalr	-1670(ra) # 78d0 <close>
     f5e:	4581                	li	a1,0
     f60:	00007517          	auipc	a0,0x7
     f64:	52850513          	addi	a0,a0,1320 # 8488 <malloc+0x49e>
     f68:	00007097          	auipc	ra,0x7
     f6c:	980080e7          	jalr	-1664(ra) # 78e8 <open>
     f70:	87aa                	mv	a5,a0
     f72:	fcf42c23          	sw	a5,-40(s0)
     f76:	fb040713          	addi	a4,s0,-80
     f7a:	fd842783          	lw	a5,-40(s0)
     f7e:	02000613          	li	a2,32
     f82:	85ba                	mv	a1,a4
     f84:	853e                	mv	a0,a5
     f86:	00007097          	auipc	ra,0x7
     f8a:	93a080e7          	jalr	-1734(ra) # 78c0 <read>
     f8e:	fd842783          	lw	a5,-40(s0)
     f92:	853e                	mv	a0,a5
     f94:	00007097          	auipc	ra,0x7
     f98:	93c080e7          	jalr	-1732(ra) # 78d0 <close>
     f9c:	fec42783          	lw	a5,-20(s0)
     fa0:	2785                	addiw	a5,a5,1 # 1001 <truncate3+0x1b3>
     fa2:	fef42623          	sw	a5,-20(s0)
     fa6:	fec42783          	lw	a5,-20(s0)
     faa:	0007871b          	sext.w	a4,a5
     fae:	06300793          	li	a5,99
     fb2:	f0e7d7e3          	bge	a5,a4,ec0 <truncate3+0x72>
     fb6:	4501                	li	a0,0
     fb8:	00007097          	auipc	ra,0x7
     fbc:	8f0080e7          	jalr	-1808(ra) # 78a8 <exit>
     fc0:	fe042423          	sw	zero,-24(s0)
     fc4:	a075                	j	1070 <truncate3+0x222>
     fc6:	60100593          	li	a1,1537
     fca:	00007517          	auipc	a0,0x7
     fce:	4be50513          	addi	a0,a0,1214 # 8488 <malloc+0x49e>
     fd2:	00007097          	auipc	ra,0x7
     fd6:	916080e7          	jalr	-1770(ra) # 78e8 <open>
     fda:	87aa                	mv	a5,a0
     fdc:	fef42023          	sw	a5,-32(s0)
     fe0:	fe042783          	lw	a5,-32(s0)
     fe4:	2781                	sext.w	a5,a5
     fe6:	0207d163          	bgez	a5,1008 <truncate3+0x1ba>
     fea:	fa843583          	ld	a1,-88(s0)
     fee:	00007517          	auipc	a0,0x7
     ff2:	59a50513          	addi	a0,a0,1434 # 8588 <malloc+0x59e>
     ff6:	00007097          	auipc	ra,0x7
     ffa:	e02080e7          	jalr	-510(ra) # 7df8 <printf>
     ffe:	4505                	li	a0,1
    1000:	00007097          	auipc	ra,0x7
    1004:	8a8080e7          	jalr	-1880(ra) # 78a8 <exit>
    1008:	fe042783          	lw	a5,-32(s0)
    100c:	460d                	li	a2,3
    100e:	00007597          	auipc	a1,0x7
    1012:	5c258593          	addi	a1,a1,1474 # 85d0 <malloc+0x5e6>
    1016:	853e                	mv	a0,a5
    1018:	00007097          	auipc	ra,0x7
    101c:	8b0080e7          	jalr	-1872(ra) # 78c8 <write>
    1020:	87aa                	mv	a5,a0
    1022:	fcf42e23          	sw	a5,-36(s0)
    1026:	fdc42783          	lw	a5,-36(s0)
    102a:	0007871b          	sext.w	a4,a5
    102e:	478d                	li	a5,3
    1030:	02f70463          	beq	a4,a5,1058 <truncate3+0x20a>
    1034:	fdc42783          	lw	a5,-36(s0)
    1038:	863e                	mv	a2,a5
    103a:	fa843583          	ld	a1,-88(s0)
    103e:	00007517          	auipc	a0,0x7
    1042:	59a50513          	addi	a0,a0,1434 # 85d8 <malloc+0x5ee>
    1046:	00007097          	auipc	ra,0x7
    104a:	db2080e7          	jalr	-590(ra) # 7df8 <printf>
    104e:	4505                	li	a0,1
    1050:	00007097          	auipc	ra,0x7
    1054:	858080e7          	jalr	-1960(ra) # 78a8 <exit>
    1058:	fe042783          	lw	a5,-32(s0)
    105c:	853e                	mv	a0,a5
    105e:	00007097          	auipc	ra,0x7
    1062:	872080e7          	jalr	-1934(ra) # 78d0 <close>
    1066:	fe842783          	lw	a5,-24(s0)
    106a:	2785                	addiw	a5,a5,1
    106c:	fef42423          	sw	a5,-24(s0)
    1070:	fe842783          	lw	a5,-24(s0)
    1074:	0007871b          	sext.w	a4,a5
    1078:	09500793          	li	a5,149
    107c:	f4e7d5e3          	bge	a5,a4,fc6 <truncate3+0x178>
    1080:	fd040793          	addi	a5,s0,-48
    1084:	853e                	mv	a0,a5
    1086:	00007097          	auipc	ra,0x7
    108a:	82a080e7          	jalr	-2006(ra) # 78b0 <wait>
    108e:	00007517          	auipc	a0,0x7
    1092:	3fa50513          	addi	a0,a0,1018 # 8488 <malloc+0x49e>
    1096:	00007097          	auipc	ra,0x7
    109a:	862080e7          	jalr	-1950(ra) # 78f8 <unlink>
    109e:	fd042783          	lw	a5,-48(s0)
    10a2:	853e                	mv	a0,a5
    10a4:	00007097          	auipc	ra,0x7
    10a8:	804080e7          	jalr	-2044(ra) # 78a8 <exit>

00000000000010ac <iputtest>:
    10ac:	1101                	addi	sp,sp,-32
    10ae:	ec06                	sd	ra,24(sp)
    10b0:	e822                	sd	s0,16(sp)
    10b2:	1000                	addi	s0,sp,32
    10b4:	fea43423          	sd	a0,-24(s0)
    10b8:	00007517          	auipc	a0,0x7
    10bc:	54050513          	addi	a0,a0,1344 # 85f8 <malloc+0x60e>
    10c0:	00007097          	auipc	ra,0x7
    10c4:	850080e7          	jalr	-1968(ra) # 7910 <mkdir>
    10c8:	87aa                	mv	a5,a0
    10ca:	0207d163          	bgez	a5,10ec <iputtest+0x40>
    10ce:	fe843583          	ld	a1,-24(s0)
    10d2:	00007517          	auipc	a0,0x7
    10d6:	52e50513          	addi	a0,a0,1326 # 8600 <malloc+0x616>
    10da:	00007097          	auipc	ra,0x7
    10de:	d1e080e7          	jalr	-738(ra) # 7df8 <printf>
    10e2:	4505                	li	a0,1
    10e4:	00006097          	auipc	ra,0x6
    10e8:	7c4080e7          	jalr	1988(ra) # 78a8 <exit>
    10ec:	00007517          	auipc	a0,0x7
    10f0:	50c50513          	addi	a0,a0,1292 # 85f8 <malloc+0x60e>
    10f4:	00007097          	auipc	ra,0x7
    10f8:	824080e7          	jalr	-2012(ra) # 7918 <chdir>
    10fc:	87aa                	mv	a5,a0
    10fe:	0207d163          	bgez	a5,1120 <iputtest+0x74>
    1102:	fe843583          	ld	a1,-24(s0)
    1106:	00007517          	auipc	a0,0x7
    110a:	51250513          	addi	a0,a0,1298 # 8618 <malloc+0x62e>
    110e:	00007097          	auipc	ra,0x7
    1112:	cea080e7          	jalr	-790(ra) # 7df8 <printf>
    1116:	4505                	li	a0,1
    1118:	00006097          	auipc	ra,0x6
    111c:	790080e7          	jalr	1936(ra) # 78a8 <exit>
    1120:	00007517          	auipc	a0,0x7
    1124:	51850513          	addi	a0,a0,1304 # 8638 <malloc+0x64e>
    1128:	00006097          	auipc	ra,0x6
    112c:	7d0080e7          	jalr	2000(ra) # 78f8 <unlink>
    1130:	87aa                	mv	a5,a0
    1132:	0207d163          	bgez	a5,1154 <iputtest+0xa8>
    1136:	fe843583          	ld	a1,-24(s0)
    113a:	00007517          	auipc	a0,0x7
    113e:	50e50513          	addi	a0,a0,1294 # 8648 <malloc+0x65e>
    1142:	00007097          	auipc	ra,0x7
    1146:	cb6080e7          	jalr	-842(ra) # 7df8 <printf>
    114a:	4505                	li	a0,1
    114c:	00006097          	auipc	ra,0x6
    1150:	75c080e7          	jalr	1884(ra) # 78a8 <exit>
    1154:	00007517          	auipc	a0,0x7
    1158:	51450513          	addi	a0,a0,1300 # 8668 <malloc+0x67e>
    115c:	00006097          	auipc	ra,0x6
    1160:	7bc080e7          	jalr	1980(ra) # 7918 <chdir>
    1164:	87aa                	mv	a5,a0
    1166:	0207d163          	bgez	a5,1188 <iputtest+0xdc>
    116a:	fe843583          	ld	a1,-24(s0)
    116e:	00007517          	auipc	a0,0x7
    1172:	50250513          	addi	a0,a0,1282 # 8670 <malloc+0x686>
    1176:	00007097          	auipc	ra,0x7
    117a:	c82080e7          	jalr	-894(ra) # 7df8 <printf>
    117e:	4505                	li	a0,1
    1180:	00006097          	auipc	ra,0x6
    1184:	728080e7          	jalr	1832(ra) # 78a8 <exit>
    1188:	0001                	nop
    118a:	60e2                	ld	ra,24(sp)
    118c:	6442                	ld	s0,16(sp)
    118e:	6105                	addi	sp,sp,32
    1190:	8082                	ret

0000000000001192 <exitiputtest>:
    1192:	7179                	addi	sp,sp,-48
    1194:	f406                	sd	ra,40(sp)
    1196:	f022                	sd	s0,32(sp)
    1198:	1800                	addi	s0,sp,48
    119a:	fca43c23          	sd	a0,-40(s0)
    119e:	00006097          	auipc	ra,0x6
    11a2:	702080e7          	jalr	1794(ra) # 78a0 <fork>
    11a6:	87aa                	mv	a5,a0
    11a8:	fef42623          	sw	a5,-20(s0)
    11ac:	fec42783          	lw	a5,-20(s0)
    11b0:	2781                	sext.w	a5,a5
    11b2:	0207d163          	bgez	a5,11d4 <exitiputtest+0x42>
    11b6:	fd843583          	ld	a1,-40(s0)
    11ba:	00007517          	auipc	a0,0x7
    11be:	3b650513          	addi	a0,a0,950 # 8570 <malloc+0x586>
    11c2:	00007097          	auipc	ra,0x7
    11c6:	c36080e7          	jalr	-970(ra) # 7df8 <printf>
    11ca:	4505                	li	a0,1
    11cc:	00006097          	auipc	ra,0x6
    11d0:	6dc080e7          	jalr	1756(ra) # 78a8 <exit>
    11d4:	fec42783          	lw	a5,-20(s0)
    11d8:	2781                	sext.w	a5,a5
    11da:	e7c5                	bnez	a5,1282 <exitiputtest+0xf0>
    11dc:	00007517          	auipc	a0,0x7
    11e0:	41c50513          	addi	a0,a0,1052 # 85f8 <malloc+0x60e>
    11e4:	00006097          	auipc	ra,0x6
    11e8:	72c080e7          	jalr	1836(ra) # 7910 <mkdir>
    11ec:	87aa                	mv	a5,a0
    11ee:	0207d163          	bgez	a5,1210 <exitiputtest+0x7e>
    11f2:	fd843583          	ld	a1,-40(s0)
    11f6:	00007517          	auipc	a0,0x7
    11fa:	40a50513          	addi	a0,a0,1034 # 8600 <malloc+0x616>
    11fe:	00007097          	auipc	ra,0x7
    1202:	bfa080e7          	jalr	-1030(ra) # 7df8 <printf>
    1206:	4505                	li	a0,1
    1208:	00006097          	auipc	ra,0x6
    120c:	6a0080e7          	jalr	1696(ra) # 78a8 <exit>
    1210:	00007517          	auipc	a0,0x7
    1214:	3e850513          	addi	a0,a0,1000 # 85f8 <malloc+0x60e>
    1218:	00006097          	auipc	ra,0x6
    121c:	700080e7          	jalr	1792(ra) # 7918 <chdir>
    1220:	87aa                	mv	a5,a0
    1222:	0207d163          	bgez	a5,1244 <exitiputtest+0xb2>
    1226:	fd843583          	ld	a1,-40(s0)
    122a:	00007517          	auipc	a0,0x7
    122e:	45e50513          	addi	a0,a0,1118 # 8688 <malloc+0x69e>
    1232:	00007097          	auipc	ra,0x7
    1236:	bc6080e7          	jalr	-1082(ra) # 7df8 <printf>
    123a:	4505                	li	a0,1
    123c:	00006097          	auipc	ra,0x6
    1240:	66c080e7          	jalr	1644(ra) # 78a8 <exit>
    1244:	00007517          	auipc	a0,0x7
    1248:	3f450513          	addi	a0,a0,1012 # 8638 <malloc+0x64e>
    124c:	00006097          	auipc	ra,0x6
    1250:	6ac080e7          	jalr	1708(ra) # 78f8 <unlink>
    1254:	87aa                	mv	a5,a0
    1256:	0207d163          	bgez	a5,1278 <exitiputtest+0xe6>
    125a:	fd843583          	ld	a1,-40(s0)
    125e:	00007517          	auipc	a0,0x7
    1262:	3ea50513          	addi	a0,a0,1002 # 8648 <malloc+0x65e>
    1266:	00007097          	auipc	ra,0x7
    126a:	b92080e7          	jalr	-1134(ra) # 7df8 <printf>
    126e:	4505                	li	a0,1
    1270:	00006097          	auipc	ra,0x6
    1274:	638080e7          	jalr	1592(ra) # 78a8 <exit>
    1278:	4501                	li	a0,0
    127a:	00006097          	auipc	ra,0x6
    127e:	62e080e7          	jalr	1582(ra) # 78a8 <exit>
    1282:	fe840793          	addi	a5,s0,-24
    1286:	853e                	mv	a0,a5
    1288:	00006097          	auipc	ra,0x6
    128c:	628080e7          	jalr	1576(ra) # 78b0 <wait>
    1290:	fe842783          	lw	a5,-24(s0)
    1294:	853e                	mv	a0,a5
    1296:	00006097          	auipc	ra,0x6
    129a:	612080e7          	jalr	1554(ra) # 78a8 <exit>

000000000000129e <openiputtest>:
    129e:	7179                	addi	sp,sp,-48
    12a0:	f406                	sd	ra,40(sp)
    12a2:	f022                	sd	s0,32(sp)
    12a4:	1800                	addi	s0,sp,48
    12a6:	fca43c23          	sd	a0,-40(s0)
    12aa:	00007517          	auipc	a0,0x7
    12ae:	3f650513          	addi	a0,a0,1014 # 86a0 <malloc+0x6b6>
    12b2:	00006097          	auipc	ra,0x6
    12b6:	65e080e7          	jalr	1630(ra) # 7910 <mkdir>
    12ba:	87aa                	mv	a5,a0
    12bc:	0207d163          	bgez	a5,12de <openiputtest+0x40>
    12c0:	fd843583          	ld	a1,-40(s0)
    12c4:	00007517          	auipc	a0,0x7
    12c8:	3e450513          	addi	a0,a0,996 # 86a8 <malloc+0x6be>
    12cc:	00007097          	auipc	ra,0x7
    12d0:	b2c080e7          	jalr	-1236(ra) # 7df8 <printf>
    12d4:	4505                	li	a0,1
    12d6:	00006097          	auipc	ra,0x6
    12da:	5d2080e7          	jalr	1490(ra) # 78a8 <exit>
    12de:	00006097          	auipc	ra,0x6
    12e2:	5c2080e7          	jalr	1474(ra) # 78a0 <fork>
    12e6:	87aa                	mv	a5,a0
    12e8:	fef42623          	sw	a5,-20(s0)
    12ec:	fec42783          	lw	a5,-20(s0)
    12f0:	2781                	sext.w	a5,a5
    12f2:	0207d163          	bgez	a5,1314 <openiputtest+0x76>
    12f6:	fd843583          	ld	a1,-40(s0)
    12fa:	00007517          	auipc	a0,0x7
    12fe:	27650513          	addi	a0,a0,630 # 8570 <malloc+0x586>
    1302:	00007097          	auipc	ra,0x7
    1306:	af6080e7          	jalr	-1290(ra) # 7df8 <printf>
    130a:	4505                	li	a0,1
    130c:	00006097          	auipc	ra,0x6
    1310:	59c080e7          	jalr	1436(ra) # 78a8 <exit>
    1314:	fec42783          	lw	a5,-20(s0)
    1318:	2781                	sext.w	a5,a5
    131a:	e7b1                	bnez	a5,1366 <openiputtest+0xc8>
    131c:	4589                	li	a1,2
    131e:	00007517          	auipc	a0,0x7
    1322:	38250513          	addi	a0,a0,898 # 86a0 <malloc+0x6b6>
    1326:	00006097          	auipc	ra,0x6
    132a:	5c2080e7          	jalr	1474(ra) # 78e8 <open>
    132e:	87aa                	mv	a5,a0
    1330:	fef42423          	sw	a5,-24(s0)
    1334:	fe842783          	lw	a5,-24(s0)
    1338:	2781                	sext.w	a5,a5
    133a:	0207c163          	bltz	a5,135c <openiputtest+0xbe>
    133e:	fd843583          	ld	a1,-40(s0)
    1342:	00007517          	auipc	a0,0x7
    1346:	37e50513          	addi	a0,a0,894 # 86c0 <malloc+0x6d6>
    134a:	00007097          	auipc	ra,0x7
    134e:	aae080e7          	jalr	-1362(ra) # 7df8 <printf>
    1352:	4505                	li	a0,1
    1354:	00006097          	auipc	ra,0x6
    1358:	554080e7          	jalr	1364(ra) # 78a8 <exit>
    135c:	4501                	li	a0,0
    135e:	00006097          	auipc	ra,0x6
    1362:	54a080e7          	jalr	1354(ra) # 78a8 <exit>
    1366:	4505                	li	a0,1
    1368:	00006097          	auipc	ra,0x6
    136c:	5d0080e7          	jalr	1488(ra) # 7938 <sleep>
    1370:	00007517          	auipc	a0,0x7
    1374:	33050513          	addi	a0,a0,816 # 86a0 <malloc+0x6b6>
    1378:	00006097          	auipc	ra,0x6
    137c:	580080e7          	jalr	1408(ra) # 78f8 <unlink>
    1380:	87aa                	mv	a5,a0
    1382:	c385                	beqz	a5,13a2 <openiputtest+0x104>
    1384:	fd843583          	ld	a1,-40(s0)
    1388:	00007517          	auipc	a0,0x7
    138c:	36050513          	addi	a0,a0,864 # 86e8 <malloc+0x6fe>
    1390:	00007097          	auipc	ra,0x7
    1394:	a68080e7          	jalr	-1432(ra) # 7df8 <printf>
    1398:	4505                	li	a0,1
    139a:	00006097          	auipc	ra,0x6
    139e:	50e080e7          	jalr	1294(ra) # 78a8 <exit>
    13a2:	fe440793          	addi	a5,s0,-28
    13a6:	853e                	mv	a0,a5
    13a8:	00006097          	auipc	ra,0x6
    13ac:	508080e7          	jalr	1288(ra) # 78b0 <wait>
    13b0:	fe442783          	lw	a5,-28(s0)
    13b4:	853e                	mv	a0,a5
    13b6:	00006097          	auipc	ra,0x6
    13ba:	4f2080e7          	jalr	1266(ra) # 78a8 <exit>

00000000000013be <opentest>:
    13be:	7179                	addi	sp,sp,-48
    13c0:	f406                	sd	ra,40(sp)
    13c2:	f022                	sd	s0,32(sp)
    13c4:	1800                	addi	s0,sp,48
    13c6:	fca43c23          	sd	a0,-40(s0)
    13ca:	4581                	li	a1,0
    13cc:	00007517          	auipc	a0,0x7
    13d0:	f8450513          	addi	a0,a0,-124 # 8350 <malloc+0x366>
    13d4:	00006097          	auipc	ra,0x6
    13d8:	514080e7          	jalr	1300(ra) # 78e8 <open>
    13dc:	87aa                	mv	a5,a0
    13de:	fef42623          	sw	a5,-20(s0)
    13e2:	fec42783          	lw	a5,-20(s0)
    13e6:	2781                	sext.w	a5,a5
    13e8:	0207d163          	bgez	a5,140a <opentest+0x4c>
    13ec:	fd843583          	ld	a1,-40(s0)
    13f0:	00007517          	auipc	a0,0x7
    13f4:	31050513          	addi	a0,a0,784 # 8700 <malloc+0x716>
    13f8:	00007097          	auipc	ra,0x7
    13fc:	a00080e7          	jalr	-1536(ra) # 7df8 <printf>
    1400:	4505                	li	a0,1
    1402:	00006097          	auipc	ra,0x6
    1406:	4a6080e7          	jalr	1190(ra) # 78a8 <exit>
    140a:	fec42783          	lw	a5,-20(s0)
    140e:	853e                	mv	a0,a5
    1410:	00006097          	auipc	ra,0x6
    1414:	4c0080e7          	jalr	1216(ra) # 78d0 <close>
    1418:	4581                	li	a1,0
    141a:	00007517          	auipc	a0,0x7
    141e:	2fe50513          	addi	a0,a0,766 # 8718 <malloc+0x72e>
    1422:	00006097          	auipc	ra,0x6
    1426:	4c6080e7          	jalr	1222(ra) # 78e8 <open>
    142a:	87aa                	mv	a5,a0
    142c:	fef42623          	sw	a5,-20(s0)
    1430:	fec42783          	lw	a5,-20(s0)
    1434:	2781                	sext.w	a5,a5
    1436:	0207c163          	bltz	a5,1458 <opentest+0x9a>
    143a:	fd843583          	ld	a1,-40(s0)
    143e:	00007517          	auipc	a0,0x7
    1442:	2ea50513          	addi	a0,a0,746 # 8728 <malloc+0x73e>
    1446:	00007097          	auipc	ra,0x7
    144a:	9b2080e7          	jalr	-1614(ra) # 7df8 <printf>
    144e:	4505                	li	a0,1
    1450:	00006097          	auipc	ra,0x6
    1454:	458080e7          	jalr	1112(ra) # 78a8 <exit>
    1458:	0001                	nop
    145a:	70a2                	ld	ra,40(sp)
    145c:	7402                	ld	s0,32(sp)
    145e:	6145                	addi	sp,sp,48
    1460:	8082                	ret

0000000000001462 <writetest>:
    1462:	7179                	addi	sp,sp,-48
    1464:	f406                	sd	ra,40(sp)
    1466:	f022                	sd	s0,32(sp)
    1468:	1800                	addi	s0,sp,48
    146a:	fca43c23          	sd	a0,-40(s0)
    146e:	20200593          	li	a1,514
    1472:	00007517          	auipc	a0,0x7
    1476:	2de50513          	addi	a0,a0,734 # 8750 <malloc+0x766>
    147a:	00006097          	auipc	ra,0x6
    147e:	46e080e7          	jalr	1134(ra) # 78e8 <open>
    1482:	87aa                	mv	a5,a0
    1484:	fef42423          	sw	a5,-24(s0)
    1488:	fe842783          	lw	a5,-24(s0)
    148c:	2781                	sext.w	a5,a5
    148e:	0207d163          	bgez	a5,14b0 <writetest+0x4e>
    1492:	fd843583          	ld	a1,-40(s0)
    1496:	00007517          	auipc	a0,0x7
    149a:	2c250513          	addi	a0,a0,706 # 8758 <malloc+0x76e>
    149e:	00007097          	auipc	ra,0x7
    14a2:	95a080e7          	jalr	-1702(ra) # 7df8 <printf>
    14a6:	4505                	li	a0,1
    14a8:	00006097          	auipc	ra,0x6
    14ac:	400080e7          	jalr	1024(ra) # 78a8 <exit>
    14b0:	fe042623          	sw	zero,-20(s0)
    14b4:	a861                	j	154c <writetest+0xea>
    14b6:	fe842783          	lw	a5,-24(s0)
    14ba:	4629                	li	a2,10
    14bc:	00007597          	auipc	a1,0x7
    14c0:	2bc58593          	addi	a1,a1,700 # 8778 <malloc+0x78e>
    14c4:	853e                	mv	a0,a5
    14c6:	00006097          	auipc	ra,0x6
    14ca:	402080e7          	jalr	1026(ra) # 78c8 <write>
    14ce:	87aa                	mv	a5,a0
    14d0:	873e                	mv	a4,a5
    14d2:	47a9                	li	a5,10
    14d4:	02f70463          	beq	a4,a5,14fc <writetest+0x9a>
    14d8:	fec42783          	lw	a5,-20(s0)
    14dc:	863e                	mv	a2,a5
    14de:	fd843583          	ld	a1,-40(s0)
    14e2:	00007517          	auipc	a0,0x7
    14e6:	2a650513          	addi	a0,a0,678 # 8788 <malloc+0x79e>
    14ea:	00007097          	auipc	ra,0x7
    14ee:	90e080e7          	jalr	-1778(ra) # 7df8 <printf>
    14f2:	4505                	li	a0,1
    14f4:	00006097          	auipc	ra,0x6
    14f8:	3b4080e7          	jalr	948(ra) # 78a8 <exit>
    14fc:	fe842783          	lw	a5,-24(s0)
    1500:	4629                	li	a2,10
    1502:	00007597          	auipc	a1,0x7
    1506:	2ae58593          	addi	a1,a1,686 # 87b0 <malloc+0x7c6>
    150a:	853e                	mv	a0,a5
    150c:	00006097          	auipc	ra,0x6
    1510:	3bc080e7          	jalr	956(ra) # 78c8 <write>
    1514:	87aa                	mv	a5,a0
    1516:	873e                	mv	a4,a5
    1518:	47a9                	li	a5,10
    151a:	02f70463          	beq	a4,a5,1542 <writetest+0xe0>
    151e:	fec42783          	lw	a5,-20(s0)
    1522:	863e                	mv	a2,a5
    1524:	fd843583          	ld	a1,-40(s0)
    1528:	00007517          	auipc	a0,0x7
    152c:	29850513          	addi	a0,a0,664 # 87c0 <malloc+0x7d6>
    1530:	00007097          	auipc	ra,0x7
    1534:	8c8080e7          	jalr	-1848(ra) # 7df8 <printf>
    1538:	4505                	li	a0,1
    153a:	00006097          	auipc	ra,0x6
    153e:	36e080e7          	jalr	878(ra) # 78a8 <exit>
    1542:	fec42783          	lw	a5,-20(s0)
    1546:	2785                	addiw	a5,a5,1
    1548:	fef42623          	sw	a5,-20(s0)
    154c:	fec42783          	lw	a5,-20(s0)
    1550:	0007871b          	sext.w	a4,a5
    1554:	06300793          	li	a5,99
    1558:	f4e7dfe3          	bge	a5,a4,14b6 <writetest+0x54>
    155c:	fe842783          	lw	a5,-24(s0)
    1560:	853e                	mv	a0,a5
    1562:	00006097          	auipc	ra,0x6
    1566:	36e080e7          	jalr	878(ra) # 78d0 <close>
    156a:	4581                	li	a1,0
    156c:	00007517          	auipc	a0,0x7
    1570:	1e450513          	addi	a0,a0,484 # 8750 <malloc+0x766>
    1574:	00006097          	auipc	ra,0x6
    1578:	374080e7          	jalr	884(ra) # 78e8 <open>
    157c:	87aa                	mv	a5,a0
    157e:	fef42423          	sw	a5,-24(s0)
    1582:	fe842783          	lw	a5,-24(s0)
    1586:	2781                	sext.w	a5,a5
    1588:	0207d163          	bgez	a5,15aa <writetest+0x148>
    158c:	fd843583          	ld	a1,-40(s0)
    1590:	00007517          	auipc	a0,0x7
    1594:	25850513          	addi	a0,a0,600 # 87e8 <malloc+0x7fe>
    1598:	00007097          	auipc	ra,0x7
    159c:	860080e7          	jalr	-1952(ra) # 7df8 <printf>
    15a0:	4505                	li	a0,1
    15a2:	00006097          	auipc	ra,0x6
    15a6:	306080e7          	jalr	774(ra) # 78a8 <exit>
    15aa:	fe842783          	lw	a5,-24(s0)
    15ae:	7d000613          	li	a2,2000
    15b2:	0000a597          	auipc	a1,0xa
    15b6:	ebe58593          	addi	a1,a1,-322 # b470 <buf>
    15ba:	853e                	mv	a0,a5
    15bc:	00006097          	auipc	ra,0x6
    15c0:	304080e7          	jalr	772(ra) # 78c0 <read>
    15c4:	87aa                	mv	a5,a0
    15c6:	fef42623          	sw	a5,-20(s0)
    15ca:	fec42783          	lw	a5,-20(s0)
    15ce:	0007871b          	sext.w	a4,a5
    15d2:	7d000793          	li	a5,2000
    15d6:	02f70163          	beq	a4,a5,15f8 <writetest+0x196>
    15da:	fd843583          	ld	a1,-40(s0)
    15de:	00007517          	auipc	a0,0x7
    15e2:	22a50513          	addi	a0,a0,554 # 8808 <malloc+0x81e>
    15e6:	00007097          	auipc	ra,0x7
    15ea:	812080e7          	jalr	-2030(ra) # 7df8 <printf>
    15ee:	4505                	li	a0,1
    15f0:	00006097          	auipc	ra,0x6
    15f4:	2b8080e7          	jalr	696(ra) # 78a8 <exit>
    15f8:	fe842783          	lw	a5,-24(s0)
    15fc:	853e                	mv	a0,a5
    15fe:	00006097          	auipc	ra,0x6
    1602:	2d2080e7          	jalr	722(ra) # 78d0 <close>
    1606:	00007517          	auipc	a0,0x7
    160a:	14a50513          	addi	a0,a0,330 # 8750 <malloc+0x766>
    160e:	00006097          	auipc	ra,0x6
    1612:	2ea080e7          	jalr	746(ra) # 78f8 <unlink>
    1616:	87aa                	mv	a5,a0
    1618:	0207d163          	bgez	a5,163a <writetest+0x1d8>
    161c:	fd843583          	ld	a1,-40(s0)
    1620:	00007517          	auipc	a0,0x7
    1624:	20050513          	addi	a0,a0,512 # 8820 <malloc+0x836>
    1628:	00006097          	auipc	ra,0x6
    162c:	7d0080e7          	jalr	2000(ra) # 7df8 <printf>
    1630:	4505                	li	a0,1
    1632:	00006097          	auipc	ra,0x6
    1636:	276080e7          	jalr	630(ra) # 78a8 <exit>
    163a:	0001                	nop
    163c:	70a2                	ld	ra,40(sp)
    163e:	7402                	ld	s0,32(sp)
    1640:	6145                	addi	sp,sp,48
    1642:	8082                	ret

0000000000001644 <writebig>:
    1644:	7179                	addi	sp,sp,-48
    1646:	f406                	sd	ra,40(sp)
    1648:	f022                	sd	s0,32(sp)
    164a:	1800                	addi	s0,sp,48
    164c:	fca43c23          	sd	a0,-40(s0)
    1650:	20200593          	li	a1,514
    1654:	00007517          	auipc	a0,0x7
    1658:	1ec50513          	addi	a0,a0,492 # 8840 <malloc+0x856>
    165c:	00006097          	auipc	ra,0x6
    1660:	28c080e7          	jalr	652(ra) # 78e8 <open>
    1664:	87aa                	mv	a5,a0
    1666:	fef42223          	sw	a5,-28(s0)
    166a:	fe442783          	lw	a5,-28(s0)
    166e:	2781                	sext.w	a5,a5
    1670:	0207d163          	bgez	a5,1692 <writebig+0x4e>
    1674:	fd843583          	ld	a1,-40(s0)
    1678:	00007517          	auipc	a0,0x7
    167c:	1d050513          	addi	a0,a0,464 # 8848 <malloc+0x85e>
    1680:	00006097          	auipc	ra,0x6
    1684:	778080e7          	jalr	1912(ra) # 7df8 <printf>
    1688:	4505                	li	a0,1
    168a:	00006097          	auipc	ra,0x6
    168e:	21e080e7          	jalr	542(ra) # 78a8 <exit>
    1692:	fe042623          	sw	zero,-20(s0)
    1696:	a095                	j	16fa <writebig+0xb6>
    1698:	0000a797          	auipc	a5,0xa
    169c:	dd878793          	addi	a5,a5,-552 # b470 <buf>
    16a0:	fec42703          	lw	a4,-20(s0)
    16a4:	c398                	sw	a4,0(a5)
    16a6:	fe442783          	lw	a5,-28(s0)
    16aa:	40000613          	li	a2,1024
    16ae:	0000a597          	auipc	a1,0xa
    16b2:	dc258593          	addi	a1,a1,-574 # b470 <buf>
    16b6:	853e                	mv	a0,a5
    16b8:	00006097          	auipc	ra,0x6
    16bc:	210080e7          	jalr	528(ra) # 78c8 <write>
    16c0:	87aa                	mv	a5,a0
    16c2:	873e                	mv	a4,a5
    16c4:	40000793          	li	a5,1024
    16c8:	02f70463          	beq	a4,a5,16f0 <writebig+0xac>
    16cc:	fec42783          	lw	a5,-20(s0)
    16d0:	863e                	mv	a2,a5
    16d2:	fd843583          	ld	a1,-40(s0)
    16d6:	00007517          	auipc	a0,0x7
    16da:	19250513          	addi	a0,a0,402 # 8868 <malloc+0x87e>
    16de:	00006097          	auipc	ra,0x6
    16e2:	71a080e7          	jalr	1818(ra) # 7df8 <printf>
    16e6:	4505                	li	a0,1
    16e8:	00006097          	auipc	ra,0x6
    16ec:	1c0080e7          	jalr	448(ra) # 78a8 <exit>
    16f0:	fec42783          	lw	a5,-20(s0)
    16f4:	2785                	addiw	a5,a5,1
    16f6:	fef42623          	sw	a5,-20(s0)
    16fa:	fec42783          	lw	a5,-20(s0)
    16fe:	873e                	mv	a4,a5
    1700:	10b00793          	li	a5,267
    1704:	f8e7fae3          	bgeu	a5,a4,1698 <writebig+0x54>
    1708:	fe442783          	lw	a5,-28(s0)
    170c:	853e                	mv	a0,a5
    170e:	00006097          	auipc	ra,0x6
    1712:	1c2080e7          	jalr	450(ra) # 78d0 <close>
    1716:	4581                	li	a1,0
    1718:	00007517          	auipc	a0,0x7
    171c:	12850513          	addi	a0,a0,296 # 8840 <malloc+0x856>
    1720:	00006097          	auipc	ra,0x6
    1724:	1c8080e7          	jalr	456(ra) # 78e8 <open>
    1728:	87aa                	mv	a5,a0
    172a:	fef42223          	sw	a5,-28(s0)
    172e:	fe442783          	lw	a5,-28(s0)
    1732:	2781                	sext.w	a5,a5
    1734:	0207d163          	bgez	a5,1756 <writebig+0x112>
    1738:	fd843583          	ld	a1,-40(s0)
    173c:	00007517          	auipc	a0,0x7
    1740:	15450513          	addi	a0,a0,340 # 8890 <malloc+0x8a6>
    1744:	00006097          	auipc	ra,0x6
    1748:	6b4080e7          	jalr	1716(ra) # 7df8 <printf>
    174c:	4505                	li	a0,1
    174e:	00006097          	auipc	ra,0x6
    1752:	15a080e7          	jalr	346(ra) # 78a8 <exit>
    1756:	fe042423          	sw	zero,-24(s0)
    175a:	fe442783          	lw	a5,-28(s0)
    175e:	40000613          	li	a2,1024
    1762:	0000a597          	auipc	a1,0xa
    1766:	d0e58593          	addi	a1,a1,-754 # b470 <buf>
    176a:	853e                	mv	a0,a5
    176c:	00006097          	auipc	ra,0x6
    1770:	154080e7          	jalr	340(ra) # 78c0 <read>
    1774:	87aa                	mv	a5,a0
    1776:	fef42623          	sw	a5,-20(s0)
    177a:	fec42783          	lw	a5,-20(s0)
    177e:	2781                	sext.w	a5,a5
    1780:	eb9d                	bnez	a5,17b6 <writebig+0x172>
    1782:	fe842783          	lw	a5,-24(s0)
    1786:	0007871b          	sext.w	a4,a5
    178a:	10b00793          	li	a5,267
    178e:	0af71663          	bne	a4,a5,183a <writebig+0x1f6>
    1792:	fe842783          	lw	a5,-24(s0)
    1796:	863e                	mv	a2,a5
    1798:	fd843583          	ld	a1,-40(s0)
    179c:	00007517          	auipc	a0,0x7
    17a0:	11450513          	addi	a0,a0,276 # 88b0 <malloc+0x8c6>
    17a4:	00006097          	auipc	ra,0x6
    17a8:	654080e7          	jalr	1620(ra) # 7df8 <printf>
    17ac:	4505                	li	a0,1
    17ae:	00006097          	auipc	ra,0x6
    17b2:	0fa080e7          	jalr	250(ra) # 78a8 <exit>
    17b6:	fec42783          	lw	a5,-20(s0)
    17ba:	0007871b          	sext.w	a4,a5
    17be:	40000793          	li	a5,1024
    17c2:	02f70463          	beq	a4,a5,17ea <writebig+0x1a6>
    17c6:	fec42783          	lw	a5,-20(s0)
    17ca:	863e                	mv	a2,a5
    17cc:	fd843583          	ld	a1,-40(s0)
    17d0:	00007517          	auipc	a0,0x7
    17d4:	10850513          	addi	a0,a0,264 # 88d8 <malloc+0x8ee>
    17d8:	00006097          	auipc	ra,0x6
    17dc:	620080e7          	jalr	1568(ra) # 7df8 <printf>
    17e0:	4505                	li	a0,1
    17e2:	00006097          	auipc	ra,0x6
    17e6:	0c6080e7          	jalr	198(ra) # 78a8 <exit>
    17ea:	0000a797          	auipc	a5,0xa
    17ee:	c8678793          	addi	a5,a5,-890 # b470 <buf>
    17f2:	4398                	lw	a4,0(a5)
    17f4:	fe842783          	lw	a5,-24(s0)
    17f8:	2781                	sext.w	a5,a5
    17fa:	02e78a63          	beq	a5,a4,182e <writebig+0x1ea>
    17fe:	0000a797          	auipc	a5,0xa
    1802:	c7278793          	addi	a5,a5,-910 # b470 <buf>
    1806:	4398                	lw	a4,0(a5)
    1808:	fe842783          	lw	a5,-24(s0)
    180c:	86ba                	mv	a3,a4
    180e:	863e                	mv	a2,a5
    1810:	fd843583          	ld	a1,-40(s0)
    1814:	00007517          	auipc	a0,0x7
    1818:	0dc50513          	addi	a0,a0,220 # 88f0 <malloc+0x906>
    181c:	00006097          	auipc	ra,0x6
    1820:	5dc080e7          	jalr	1500(ra) # 7df8 <printf>
    1824:	4505                	li	a0,1
    1826:	00006097          	auipc	ra,0x6
    182a:	082080e7          	jalr	130(ra) # 78a8 <exit>
    182e:	fe842783          	lw	a5,-24(s0)
    1832:	2785                	addiw	a5,a5,1
    1834:	fef42423          	sw	a5,-24(s0)
    1838:	b70d                	j	175a <writebig+0x116>
    183a:	0001                	nop
    183c:	fe442783          	lw	a5,-28(s0)
    1840:	853e                	mv	a0,a5
    1842:	00006097          	auipc	ra,0x6
    1846:	08e080e7          	jalr	142(ra) # 78d0 <close>
    184a:	00007517          	auipc	a0,0x7
    184e:	ff650513          	addi	a0,a0,-10 # 8840 <malloc+0x856>
    1852:	00006097          	auipc	ra,0x6
    1856:	0a6080e7          	jalr	166(ra) # 78f8 <unlink>
    185a:	87aa                	mv	a5,a0
    185c:	0207d163          	bgez	a5,187e <writebig+0x23a>
    1860:	fd843583          	ld	a1,-40(s0)
    1864:	00007517          	auipc	a0,0x7
    1868:	0b450513          	addi	a0,a0,180 # 8918 <malloc+0x92e>
    186c:	00006097          	auipc	ra,0x6
    1870:	58c080e7          	jalr	1420(ra) # 7df8 <printf>
    1874:	4505                	li	a0,1
    1876:	00006097          	auipc	ra,0x6
    187a:	032080e7          	jalr	50(ra) # 78a8 <exit>
    187e:	0001                	nop
    1880:	70a2                	ld	ra,40(sp)
    1882:	7402                	ld	s0,32(sp)
    1884:	6145                	addi	sp,sp,48
    1886:	8082                	ret

0000000000001888 <createtest>:
    1888:	7179                	addi	sp,sp,-48
    188a:	f406                	sd	ra,40(sp)
    188c:	f022                	sd	s0,32(sp)
    188e:	1800                	addi	s0,sp,48
    1890:	fca43c23          	sd	a0,-40(s0)
    1894:	06100793          	li	a5,97
    1898:	fef40023          	sb	a5,-32(s0)
    189c:	fe040123          	sb	zero,-30(s0)
    18a0:	fe042623          	sw	zero,-20(s0)
    18a4:	a099                	j	18ea <createtest+0x62>
    18a6:	fec42783          	lw	a5,-20(s0)
    18aa:	0ff7f793          	zext.b	a5,a5
    18ae:	0307879b          	addiw	a5,a5,48
    18b2:	0ff7f793          	zext.b	a5,a5
    18b6:	fef400a3          	sb	a5,-31(s0)
    18ba:	fe040793          	addi	a5,s0,-32
    18be:	20200593          	li	a1,514
    18c2:	853e                	mv	a0,a5
    18c4:	00006097          	auipc	ra,0x6
    18c8:	024080e7          	jalr	36(ra) # 78e8 <open>
    18cc:	87aa                	mv	a5,a0
    18ce:	fef42423          	sw	a5,-24(s0)
    18d2:	fe842783          	lw	a5,-24(s0)
    18d6:	853e                	mv	a0,a5
    18d8:	00006097          	auipc	ra,0x6
    18dc:	ff8080e7          	jalr	-8(ra) # 78d0 <close>
    18e0:	fec42783          	lw	a5,-20(s0)
    18e4:	2785                	addiw	a5,a5,1
    18e6:	fef42623          	sw	a5,-20(s0)
    18ea:	fec42783          	lw	a5,-20(s0)
    18ee:	0007871b          	sext.w	a4,a5
    18f2:	03300793          	li	a5,51
    18f6:	fae7d8e3          	bge	a5,a4,18a6 <createtest+0x1e>
    18fa:	06100793          	li	a5,97
    18fe:	fef40023          	sb	a5,-32(s0)
    1902:	fe040123          	sb	zero,-30(s0)
    1906:	fe042623          	sw	zero,-20(s0)
    190a:	a03d                	j	1938 <createtest+0xb0>
    190c:	fec42783          	lw	a5,-20(s0)
    1910:	0ff7f793          	zext.b	a5,a5
    1914:	0307879b          	addiw	a5,a5,48
    1918:	0ff7f793          	zext.b	a5,a5
    191c:	fef400a3          	sb	a5,-31(s0)
    1920:	fe040793          	addi	a5,s0,-32
    1924:	853e                	mv	a0,a5
    1926:	00006097          	auipc	ra,0x6
    192a:	fd2080e7          	jalr	-46(ra) # 78f8 <unlink>
    192e:	fec42783          	lw	a5,-20(s0)
    1932:	2785                	addiw	a5,a5,1
    1934:	fef42623          	sw	a5,-20(s0)
    1938:	fec42783          	lw	a5,-20(s0)
    193c:	0007871b          	sext.w	a4,a5
    1940:	03300793          	li	a5,51
    1944:	fce7d4e3          	bge	a5,a4,190c <createtest+0x84>
    1948:	0001                	nop
    194a:	0001                	nop
    194c:	70a2                	ld	ra,40(sp)
    194e:	7402                	ld	s0,32(sp)
    1950:	6145                	addi	sp,sp,48
    1952:	8082                	ret

0000000000001954 <dirtest>:
    1954:	1101                	addi	sp,sp,-32
    1956:	ec06                	sd	ra,24(sp)
    1958:	e822                	sd	s0,16(sp)
    195a:	1000                	addi	s0,sp,32
    195c:	fea43423          	sd	a0,-24(s0)
    1960:	00007517          	auipc	a0,0x7
    1964:	fd050513          	addi	a0,a0,-48 # 8930 <malloc+0x946>
    1968:	00006097          	auipc	ra,0x6
    196c:	fa8080e7          	jalr	-88(ra) # 7910 <mkdir>
    1970:	87aa                	mv	a5,a0
    1972:	0207d163          	bgez	a5,1994 <dirtest+0x40>
    1976:	fe843583          	ld	a1,-24(s0)
    197a:	00007517          	auipc	a0,0x7
    197e:	c8650513          	addi	a0,a0,-890 # 8600 <malloc+0x616>
    1982:	00006097          	auipc	ra,0x6
    1986:	476080e7          	jalr	1142(ra) # 7df8 <printf>
    198a:	4505                	li	a0,1
    198c:	00006097          	auipc	ra,0x6
    1990:	f1c080e7          	jalr	-228(ra) # 78a8 <exit>
    1994:	00007517          	auipc	a0,0x7
    1998:	f9c50513          	addi	a0,a0,-100 # 8930 <malloc+0x946>
    199c:	00006097          	auipc	ra,0x6
    19a0:	f7c080e7          	jalr	-132(ra) # 7918 <chdir>
    19a4:	87aa                	mv	a5,a0
    19a6:	0207d163          	bgez	a5,19c8 <dirtest+0x74>
    19aa:	fe843583          	ld	a1,-24(s0)
    19ae:	00007517          	auipc	a0,0x7
    19b2:	f8a50513          	addi	a0,a0,-118 # 8938 <malloc+0x94e>
    19b6:	00006097          	auipc	ra,0x6
    19ba:	442080e7          	jalr	1090(ra) # 7df8 <printf>
    19be:	4505                	li	a0,1
    19c0:	00006097          	auipc	ra,0x6
    19c4:	ee8080e7          	jalr	-280(ra) # 78a8 <exit>
    19c8:	00007517          	auipc	a0,0x7
    19cc:	f8850513          	addi	a0,a0,-120 # 8950 <malloc+0x966>
    19d0:	00006097          	auipc	ra,0x6
    19d4:	f48080e7          	jalr	-184(ra) # 7918 <chdir>
    19d8:	87aa                	mv	a5,a0
    19da:	0207d163          	bgez	a5,19fc <dirtest+0xa8>
    19de:	fe843583          	ld	a1,-24(s0)
    19e2:	00007517          	auipc	a0,0x7
    19e6:	f7650513          	addi	a0,a0,-138 # 8958 <malloc+0x96e>
    19ea:	00006097          	auipc	ra,0x6
    19ee:	40e080e7          	jalr	1038(ra) # 7df8 <printf>
    19f2:	4505                	li	a0,1
    19f4:	00006097          	auipc	ra,0x6
    19f8:	eb4080e7          	jalr	-332(ra) # 78a8 <exit>
    19fc:	00007517          	auipc	a0,0x7
    1a00:	f3450513          	addi	a0,a0,-204 # 8930 <malloc+0x946>
    1a04:	00006097          	auipc	ra,0x6
    1a08:	ef4080e7          	jalr	-268(ra) # 78f8 <unlink>
    1a0c:	87aa                	mv	a5,a0
    1a0e:	0207d163          	bgez	a5,1a30 <dirtest+0xdc>
    1a12:	fe843583          	ld	a1,-24(s0)
    1a16:	00007517          	auipc	a0,0x7
    1a1a:	f5a50513          	addi	a0,a0,-166 # 8970 <malloc+0x986>
    1a1e:	00006097          	auipc	ra,0x6
    1a22:	3da080e7          	jalr	986(ra) # 7df8 <printf>
    1a26:	4505                	li	a0,1
    1a28:	00006097          	auipc	ra,0x6
    1a2c:	e80080e7          	jalr	-384(ra) # 78a8 <exit>
    1a30:	0001                	nop
    1a32:	60e2                	ld	ra,24(sp)
    1a34:	6442                	ld	s0,16(sp)
    1a36:	6105                	addi	sp,sp,32
    1a38:	8082                	ret

0000000000001a3a <exectest>:
    1a3a:	715d                	addi	sp,sp,-80
    1a3c:	e486                	sd	ra,72(sp)
    1a3e:	e0a2                	sd	s0,64(sp)
    1a40:	0880                	addi	s0,sp,80
    1a42:	faa43c23          	sd	a0,-72(s0)
    1a46:	00007797          	auipc	a5,0x7
    1a4a:	90a78793          	addi	a5,a5,-1782 # 8350 <malloc+0x366>
    1a4e:	fcf43423          	sd	a5,-56(s0)
    1a52:	00007797          	auipc	a5,0x7
    1a56:	f3678793          	addi	a5,a5,-202 # 8988 <malloc+0x99e>
    1a5a:	fcf43823          	sd	a5,-48(s0)
    1a5e:	fc043c23          	sd	zero,-40(s0)
    1a62:	00007517          	auipc	a0,0x7
    1a66:	f2e50513          	addi	a0,a0,-210 # 8990 <malloc+0x9a6>
    1a6a:	00006097          	auipc	ra,0x6
    1a6e:	e8e080e7          	jalr	-370(ra) # 78f8 <unlink>
    1a72:	00006097          	auipc	ra,0x6
    1a76:	e2e080e7          	jalr	-466(ra) # 78a0 <fork>
    1a7a:	87aa                	mv	a5,a0
    1a7c:	fef42623          	sw	a5,-20(s0)
    1a80:	fec42783          	lw	a5,-20(s0)
    1a84:	2781                	sext.w	a5,a5
    1a86:	0207d163          	bgez	a5,1aa8 <exectest+0x6e>
    1a8a:	fb843583          	ld	a1,-72(s0)
    1a8e:	00007517          	auipc	a0,0x7
    1a92:	ae250513          	addi	a0,a0,-1310 # 8570 <malloc+0x586>
    1a96:	00006097          	auipc	ra,0x6
    1a9a:	362080e7          	jalr	866(ra) # 7df8 <printf>
    1a9e:	4505                	li	a0,1
    1aa0:	00006097          	auipc	ra,0x6
    1aa4:	e08080e7          	jalr	-504(ra) # 78a8 <exit>
    1aa8:	fec42783          	lw	a5,-20(s0)
    1aac:	2781                	sext.w	a5,a5
    1aae:	ebd5                	bnez	a5,1b62 <exectest+0x128>
    1ab0:	4505                	li	a0,1
    1ab2:	00006097          	auipc	ra,0x6
    1ab6:	e1e080e7          	jalr	-482(ra) # 78d0 <close>
    1aba:	20100593          	li	a1,513
    1abe:	00007517          	auipc	a0,0x7
    1ac2:	ed250513          	addi	a0,a0,-302 # 8990 <malloc+0x9a6>
    1ac6:	00006097          	auipc	ra,0x6
    1aca:	e22080e7          	jalr	-478(ra) # 78e8 <open>
    1ace:	87aa                	mv	a5,a0
    1ad0:	fef42423          	sw	a5,-24(s0)
    1ad4:	fe842783          	lw	a5,-24(s0)
    1ad8:	2781                	sext.w	a5,a5
    1ada:	0207d163          	bgez	a5,1afc <exectest+0xc2>
    1ade:	fb843583          	ld	a1,-72(s0)
    1ae2:	00007517          	auipc	a0,0x7
    1ae6:	eb650513          	addi	a0,a0,-330 # 8998 <malloc+0x9ae>
    1aea:	00006097          	auipc	ra,0x6
    1aee:	30e080e7          	jalr	782(ra) # 7df8 <printf>
    1af2:	4505                	li	a0,1
    1af4:	00006097          	auipc	ra,0x6
    1af8:	db4080e7          	jalr	-588(ra) # 78a8 <exit>
    1afc:	fe842783          	lw	a5,-24(s0)
    1b00:	0007871b          	sext.w	a4,a5
    1b04:	4785                	li	a5,1
    1b06:	02f70163          	beq	a4,a5,1b28 <exectest+0xee>
    1b0a:	fb843583          	ld	a1,-72(s0)
    1b0e:	00007517          	auipc	a0,0x7
    1b12:	ea250513          	addi	a0,a0,-350 # 89b0 <malloc+0x9c6>
    1b16:	00006097          	auipc	ra,0x6
    1b1a:	2e2080e7          	jalr	738(ra) # 7df8 <printf>
    1b1e:	4505                	li	a0,1
    1b20:	00006097          	auipc	ra,0x6
    1b24:	d88080e7          	jalr	-632(ra) # 78a8 <exit>
    1b28:	fc840793          	addi	a5,s0,-56
    1b2c:	85be                	mv	a1,a5
    1b2e:	00007517          	auipc	a0,0x7
    1b32:	82250513          	addi	a0,a0,-2014 # 8350 <malloc+0x366>
    1b36:	00006097          	auipc	ra,0x6
    1b3a:	daa080e7          	jalr	-598(ra) # 78e0 <exec>
    1b3e:	87aa                	mv	a5,a0
    1b40:	0207d163          	bgez	a5,1b62 <exectest+0x128>
    1b44:	fb843583          	ld	a1,-72(s0)
    1b48:	00007517          	auipc	a0,0x7
    1b4c:	e7850513          	addi	a0,a0,-392 # 89c0 <malloc+0x9d6>
    1b50:	00006097          	auipc	ra,0x6
    1b54:	2a8080e7          	jalr	680(ra) # 7df8 <printf>
    1b58:	4505                	li	a0,1
    1b5a:	00006097          	auipc	ra,0x6
    1b5e:	d4e080e7          	jalr	-690(ra) # 78a8 <exit>
    1b62:	fe440793          	addi	a5,s0,-28
    1b66:	853e                	mv	a0,a5
    1b68:	00006097          	auipc	ra,0x6
    1b6c:	d48080e7          	jalr	-696(ra) # 78b0 <wait>
    1b70:	87aa                	mv	a5,a0
    1b72:	873e                	mv	a4,a5
    1b74:	fec42783          	lw	a5,-20(s0)
    1b78:	2781                	sext.w	a5,a5
    1b7a:	00e78c63          	beq	a5,a4,1b92 <exectest+0x158>
    1b7e:	fb843583          	ld	a1,-72(s0)
    1b82:	00007517          	auipc	a0,0x7
    1b86:	e5650513          	addi	a0,a0,-426 # 89d8 <malloc+0x9ee>
    1b8a:	00006097          	auipc	ra,0x6
    1b8e:	26e080e7          	jalr	622(ra) # 7df8 <printf>
    1b92:	fe442783          	lw	a5,-28(s0)
    1b96:	cb81                	beqz	a5,1ba6 <exectest+0x16c>
    1b98:	fe442783          	lw	a5,-28(s0)
    1b9c:	853e                	mv	a0,a5
    1b9e:	00006097          	auipc	ra,0x6
    1ba2:	d0a080e7          	jalr	-758(ra) # 78a8 <exit>
    1ba6:	4581                	li	a1,0
    1ba8:	00007517          	auipc	a0,0x7
    1bac:	de850513          	addi	a0,a0,-536 # 8990 <malloc+0x9a6>
    1bb0:	00006097          	auipc	ra,0x6
    1bb4:	d38080e7          	jalr	-712(ra) # 78e8 <open>
    1bb8:	87aa                	mv	a5,a0
    1bba:	fef42423          	sw	a5,-24(s0)
    1bbe:	fe842783          	lw	a5,-24(s0)
    1bc2:	2781                	sext.w	a5,a5
    1bc4:	0207d163          	bgez	a5,1be6 <exectest+0x1ac>
    1bc8:	fb843583          	ld	a1,-72(s0)
    1bcc:	00007517          	auipc	a0,0x7
    1bd0:	9bc50513          	addi	a0,a0,-1604 # 8588 <malloc+0x59e>
    1bd4:	00006097          	auipc	ra,0x6
    1bd8:	224080e7          	jalr	548(ra) # 7df8 <printf>
    1bdc:	4505                	li	a0,1
    1bde:	00006097          	auipc	ra,0x6
    1be2:	cca080e7          	jalr	-822(ra) # 78a8 <exit>
    1be6:	fc040713          	addi	a4,s0,-64
    1bea:	fe842783          	lw	a5,-24(s0)
    1bee:	4609                	li	a2,2
    1bf0:	85ba                	mv	a1,a4
    1bf2:	853e                	mv	a0,a5
    1bf4:	00006097          	auipc	ra,0x6
    1bf8:	ccc080e7          	jalr	-820(ra) # 78c0 <read>
    1bfc:	87aa                	mv	a5,a0
    1bfe:	873e                	mv	a4,a5
    1c00:	4789                	li	a5,2
    1c02:	02f70163          	beq	a4,a5,1c24 <exectest+0x1ea>
    1c06:	fb843583          	ld	a1,-72(s0)
    1c0a:	00007517          	auipc	a0,0x7
    1c0e:	bfe50513          	addi	a0,a0,-1026 # 8808 <malloc+0x81e>
    1c12:	00006097          	auipc	ra,0x6
    1c16:	1e6080e7          	jalr	486(ra) # 7df8 <printf>
    1c1a:	4505                	li	a0,1
    1c1c:	00006097          	auipc	ra,0x6
    1c20:	c8c080e7          	jalr	-884(ra) # 78a8 <exit>
    1c24:	00007517          	auipc	a0,0x7
    1c28:	d6c50513          	addi	a0,a0,-660 # 8990 <malloc+0x9a6>
    1c2c:	00006097          	auipc	ra,0x6
    1c30:	ccc080e7          	jalr	-820(ra) # 78f8 <unlink>
    1c34:	fc044783          	lbu	a5,-64(s0)
    1c38:	873e                	mv	a4,a5
    1c3a:	04f00793          	li	a5,79
    1c3e:	00f71e63          	bne	a4,a5,1c5a <exectest+0x220>
    1c42:	fc144783          	lbu	a5,-63(s0)
    1c46:	873e                	mv	a4,a5
    1c48:	04b00793          	li	a5,75
    1c4c:	00f71763          	bne	a4,a5,1c5a <exectest+0x220>
    1c50:	4501                	li	a0,0
    1c52:	00006097          	auipc	ra,0x6
    1c56:	c56080e7          	jalr	-938(ra) # 78a8 <exit>
    1c5a:	fb843583          	ld	a1,-72(s0)
    1c5e:	00007517          	auipc	a0,0x7
    1c62:	d9250513          	addi	a0,a0,-622 # 89f0 <malloc+0xa06>
    1c66:	00006097          	auipc	ra,0x6
    1c6a:	192080e7          	jalr	402(ra) # 7df8 <printf>
    1c6e:	4505                	li	a0,1
    1c70:	00006097          	auipc	ra,0x6
    1c74:	c38080e7          	jalr	-968(ra) # 78a8 <exit>

0000000000001c78 <pipe1>:
    1c78:	715d                	addi	sp,sp,-80
    1c7a:	e486                	sd	ra,72(sp)
    1c7c:	e0a2                	sd	s0,64(sp)
    1c7e:	0880                	addi	s0,sp,80
    1c80:	faa43c23          	sd	a0,-72(s0)
    1c84:	fd040793          	addi	a5,s0,-48
    1c88:	853e                	mv	a0,a5
    1c8a:	00006097          	auipc	ra,0x6
    1c8e:	c2e080e7          	jalr	-978(ra) # 78b8 <pipe>
    1c92:	87aa                	mv	a5,a0
    1c94:	c385                	beqz	a5,1cb4 <pipe1+0x3c>
    1c96:	fb843583          	ld	a1,-72(s0)
    1c9a:	00007517          	auipc	a0,0x7
    1c9e:	d6e50513          	addi	a0,a0,-658 # 8a08 <malloc+0xa1e>
    1ca2:	00006097          	auipc	ra,0x6
    1ca6:	156080e7          	jalr	342(ra) # 7df8 <printf>
    1caa:	4505                	li	a0,1
    1cac:	00006097          	auipc	ra,0x6
    1cb0:	bfc080e7          	jalr	-1028(ra) # 78a8 <exit>
    1cb4:	00006097          	auipc	ra,0x6
    1cb8:	bec080e7          	jalr	-1044(ra) # 78a0 <fork>
    1cbc:	87aa                	mv	a5,a0
    1cbe:	fcf42c23          	sw	a5,-40(s0)
    1cc2:	fe042623          	sw	zero,-20(s0)
    1cc6:	fd842783          	lw	a5,-40(s0)
    1cca:	2781                	sext.w	a5,a5
    1ccc:	efdd                	bnez	a5,1d8a <pipe1+0x112>
    1cce:	fd042783          	lw	a5,-48(s0)
    1cd2:	853e                	mv	a0,a5
    1cd4:	00006097          	auipc	ra,0x6
    1cd8:	bfc080e7          	jalr	-1028(ra) # 78d0 <close>
    1cdc:	fe042223          	sw	zero,-28(s0)
    1ce0:	a849                	j	1d72 <pipe1+0xfa>
    1ce2:	fe042423          	sw	zero,-24(s0)
    1ce6:	a03d                	j	1d14 <pipe1+0x9c>
    1ce8:	fec42783          	lw	a5,-20(s0)
    1cec:	0017871b          	addiw	a4,a5,1
    1cf0:	fee42623          	sw	a4,-20(s0)
    1cf4:	0ff7f713          	zext.b	a4,a5
    1cf8:	00009697          	auipc	a3,0x9
    1cfc:	77868693          	addi	a3,a3,1912 # b470 <buf>
    1d00:	fe842783          	lw	a5,-24(s0)
    1d04:	97b6                	add	a5,a5,a3
    1d06:	00e78023          	sb	a4,0(a5)
    1d0a:	fe842783          	lw	a5,-24(s0)
    1d0e:	2785                	addiw	a5,a5,1
    1d10:	fef42423          	sw	a5,-24(s0)
    1d14:	fe842783          	lw	a5,-24(s0)
    1d18:	0007871b          	sext.w	a4,a5
    1d1c:	40800793          	li	a5,1032
    1d20:	fce7d4e3          	bge	a5,a4,1ce8 <pipe1+0x70>
    1d24:	fd442783          	lw	a5,-44(s0)
    1d28:	40900613          	li	a2,1033
    1d2c:	00009597          	auipc	a1,0x9
    1d30:	74458593          	addi	a1,a1,1860 # b470 <buf>
    1d34:	853e                	mv	a0,a5
    1d36:	00006097          	auipc	ra,0x6
    1d3a:	b92080e7          	jalr	-1134(ra) # 78c8 <write>
    1d3e:	87aa                	mv	a5,a0
    1d40:	873e                	mv	a4,a5
    1d42:	40900793          	li	a5,1033
    1d46:	02f70163          	beq	a4,a5,1d68 <pipe1+0xf0>
    1d4a:	fb843583          	ld	a1,-72(s0)
    1d4e:	00007517          	auipc	a0,0x7
    1d52:	cd250513          	addi	a0,a0,-814 # 8a20 <malloc+0xa36>
    1d56:	00006097          	auipc	ra,0x6
    1d5a:	0a2080e7          	jalr	162(ra) # 7df8 <printf>
    1d5e:	4505                	li	a0,1
    1d60:	00006097          	auipc	ra,0x6
    1d64:	b48080e7          	jalr	-1208(ra) # 78a8 <exit>
    1d68:	fe442783          	lw	a5,-28(s0)
    1d6c:	2785                	addiw	a5,a5,1
    1d6e:	fef42223          	sw	a5,-28(s0)
    1d72:	fe442783          	lw	a5,-28(s0)
    1d76:	0007871b          	sext.w	a4,a5
    1d7a:	4791                	li	a5,4
    1d7c:	f6e7d3e3          	bge	a5,a4,1ce2 <pipe1+0x6a>
    1d80:	4501                	li	a0,0
    1d82:	00006097          	auipc	ra,0x6
    1d86:	b26080e7          	jalr	-1242(ra) # 78a8 <exit>
    1d8a:	fd842783          	lw	a5,-40(s0)
    1d8e:	2781                	sext.w	a5,a5
    1d90:	12f05d63          	blez	a5,1eca <pipe1+0x252>
    1d94:	fd442783          	lw	a5,-44(s0)
    1d98:	853e                	mv	a0,a5
    1d9a:	00006097          	auipc	ra,0x6
    1d9e:	b36080e7          	jalr	-1226(ra) # 78d0 <close>
    1da2:	fc042e23          	sw	zero,-36(s0)
    1da6:	4785                	li	a5,1
    1da8:	fef42023          	sw	a5,-32(s0)
    1dac:	a859                	j	1e42 <pipe1+0x1ca>
    1dae:	fe042423          	sw	zero,-24(s0)
    1db2:	a881                	j	1e02 <pipe1+0x18a>
    1db4:	00009717          	auipc	a4,0x9
    1db8:	6bc70713          	addi	a4,a4,1724 # b470 <buf>
    1dbc:	fe842783          	lw	a5,-24(s0)
    1dc0:	97ba                	add	a5,a5,a4
    1dc2:	0007c783          	lbu	a5,0(a5)
    1dc6:	0007869b          	sext.w	a3,a5
    1dca:	fec42783          	lw	a5,-20(s0)
    1dce:	0017871b          	addiw	a4,a5,1
    1dd2:	fee42623          	sw	a4,-20(s0)
    1dd6:	0ff7f793          	zext.b	a5,a5
    1dda:	2781                	sext.w	a5,a5
    1ddc:	8736                	mv	a4,a3
    1dde:	00f70d63          	beq	a4,a5,1df8 <pipe1+0x180>
    1de2:	fb843583          	ld	a1,-72(s0)
    1de6:	00007517          	auipc	a0,0x7
    1dea:	c5250513          	addi	a0,a0,-942 # 8a38 <malloc+0xa4e>
    1dee:	00006097          	auipc	ra,0x6
    1df2:	00a080e7          	jalr	10(ra) # 7df8 <printf>
    1df6:	a8cd                	j	1ee8 <pipe1+0x270>
    1df8:	fe842783          	lw	a5,-24(s0)
    1dfc:	2785                	addiw	a5,a5,1
    1dfe:	fef42423          	sw	a5,-24(s0)
    1e02:	fe842783          	lw	a5,-24(s0)
    1e06:	873e                	mv	a4,a5
    1e08:	fe442783          	lw	a5,-28(s0)
    1e0c:	2701                	sext.w	a4,a4
    1e0e:	2781                	sext.w	a5,a5
    1e10:	faf742e3          	blt	a4,a5,1db4 <pipe1+0x13c>
    1e14:	fdc42783          	lw	a5,-36(s0)
    1e18:	873e                	mv	a4,a5
    1e1a:	fe442783          	lw	a5,-28(s0)
    1e1e:	9fb9                	addw	a5,a5,a4
    1e20:	fcf42e23          	sw	a5,-36(s0)
    1e24:	fe042783          	lw	a5,-32(s0)
    1e28:	0017979b          	slliw	a5,a5,0x1
    1e2c:	fef42023          	sw	a5,-32(s0)
    1e30:	fe042783          	lw	a5,-32(s0)
    1e34:	873e                	mv	a4,a5
    1e36:	678d                	lui	a5,0x3
    1e38:	00e7f563          	bgeu	a5,a4,1e42 <pipe1+0x1ca>
    1e3c:	678d                	lui	a5,0x3
    1e3e:	fef42023          	sw	a5,-32(s0)
    1e42:	fd042783          	lw	a5,-48(s0)
    1e46:	fe042703          	lw	a4,-32(s0)
    1e4a:	863a                	mv	a2,a4
    1e4c:	00009597          	auipc	a1,0x9
    1e50:	62458593          	addi	a1,a1,1572 # b470 <buf>
    1e54:	853e                	mv	a0,a5
    1e56:	00006097          	auipc	ra,0x6
    1e5a:	a6a080e7          	jalr	-1430(ra) # 78c0 <read>
    1e5e:	87aa                	mv	a5,a0
    1e60:	fef42223          	sw	a5,-28(s0)
    1e64:	fe442783          	lw	a5,-28(s0)
    1e68:	2781                	sext.w	a5,a5
    1e6a:	f4f042e3          	bgtz	a5,1dae <pipe1+0x136>
    1e6e:	fdc42783          	lw	a5,-36(s0)
    1e72:	0007871b          	sext.w	a4,a5
    1e76:	6785                	lui	a5,0x1
    1e78:	42d78793          	addi	a5,a5,1069 # 142d <opentest+0x6f>
    1e7c:	02f70263          	beq	a4,a5,1ea0 <pipe1+0x228>
    1e80:	fdc42783          	lw	a5,-36(s0)
    1e84:	85be                	mv	a1,a5
    1e86:	00007517          	auipc	a0,0x7
    1e8a:	bca50513          	addi	a0,a0,-1078 # 8a50 <malloc+0xa66>
    1e8e:	00006097          	auipc	ra,0x6
    1e92:	f6a080e7          	jalr	-150(ra) # 7df8 <printf>
    1e96:	4505                	li	a0,1
    1e98:	00006097          	auipc	ra,0x6
    1e9c:	a10080e7          	jalr	-1520(ra) # 78a8 <exit>
    1ea0:	fd042783          	lw	a5,-48(s0)
    1ea4:	853e                	mv	a0,a5
    1ea6:	00006097          	auipc	ra,0x6
    1eaa:	a2a080e7          	jalr	-1494(ra) # 78d0 <close>
    1eae:	fcc40793          	addi	a5,s0,-52
    1eb2:	853e                	mv	a0,a5
    1eb4:	00006097          	auipc	ra,0x6
    1eb8:	9fc080e7          	jalr	-1540(ra) # 78b0 <wait>
    1ebc:	fcc42783          	lw	a5,-52(s0)
    1ec0:	853e                	mv	a0,a5
    1ec2:	00006097          	auipc	ra,0x6
    1ec6:	9e6080e7          	jalr	-1562(ra) # 78a8 <exit>
    1eca:	fb843583          	ld	a1,-72(s0)
    1ece:	00007517          	auipc	a0,0x7
    1ed2:	ba250513          	addi	a0,a0,-1118 # 8a70 <malloc+0xa86>
    1ed6:	00006097          	auipc	ra,0x6
    1eda:	f22080e7          	jalr	-222(ra) # 7df8 <printf>
    1ede:	4505                	li	a0,1
    1ee0:	00006097          	auipc	ra,0x6
    1ee4:	9c8080e7          	jalr	-1592(ra) # 78a8 <exit>
    1ee8:	60a6                	ld	ra,72(sp)
    1eea:	6406                	ld	s0,64(sp)
    1eec:	6161                	addi	sp,sp,80
    1eee:	8082                	ret

0000000000001ef0 <killstatus>:
    1ef0:	7179                	addi	sp,sp,-48
    1ef2:	f406                	sd	ra,40(sp)
    1ef4:	f022                	sd	s0,32(sp)
    1ef6:	1800                	addi	s0,sp,48
    1ef8:	fca43c23          	sd	a0,-40(s0)
    1efc:	fe042623          	sw	zero,-20(s0)
    1f00:	a055                	j	1fa4 <killstatus+0xb4>
    1f02:	00006097          	auipc	ra,0x6
    1f06:	99e080e7          	jalr	-1634(ra) # 78a0 <fork>
    1f0a:	87aa                	mv	a5,a0
    1f0c:	fef42423          	sw	a5,-24(s0)
    1f10:	fe842783          	lw	a5,-24(s0)
    1f14:	2781                	sext.w	a5,a5
    1f16:	0207d163          	bgez	a5,1f38 <killstatus+0x48>
    1f1a:	fd843583          	ld	a1,-40(s0)
    1f1e:	00006517          	auipc	a0,0x6
    1f22:	65250513          	addi	a0,a0,1618 # 8570 <malloc+0x586>
    1f26:	00006097          	auipc	ra,0x6
    1f2a:	ed2080e7          	jalr	-302(ra) # 7df8 <printf>
    1f2e:	4505                	li	a0,1
    1f30:	00006097          	auipc	ra,0x6
    1f34:	978080e7          	jalr	-1672(ra) # 78a8 <exit>
    1f38:	fe842783          	lw	a5,-24(s0)
    1f3c:	2781                	sext.w	a5,a5
    1f3e:	e791                	bnez	a5,1f4a <killstatus+0x5a>
    1f40:	00006097          	auipc	ra,0x6
    1f44:	9e8080e7          	jalr	-1560(ra) # 7928 <getpid>
    1f48:	bfe5                	j	1f40 <killstatus+0x50>
    1f4a:	4505                	li	a0,1
    1f4c:	00006097          	auipc	ra,0x6
    1f50:	9ec080e7          	jalr	-1556(ra) # 7938 <sleep>
    1f54:	fe842783          	lw	a5,-24(s0)
    1f58:	853e                	mv	a0,a5
    1f5a:	00006097          	auipc	ra,0x6
    1f5e:	97e080e7          	jalr	-1666(ra) # 78d8 <kill>
    1f62:	fe440793          	addi	a5,s0,-28
    1f66:	853e                	mv	a0,a5
    1f68:	00006097          	auipc	ra,0x6
    1f6c:	948080e7          	jalr	-1720(ra) # 78b0 <wait>
    1f70:	fe442783          	lw	a5,-28(s0)
    1f74:	873e                	mv	a4,a5
    1f76:	57fd                	li	a5,-1
    1f78:	02f70163          	beq	a4,a5,1f9a <killstatus+0xaa>
    1f7c:	fd843583          	ld	a1,-40(s0)
    1f80:	00007517          	auipc	a0,0x7
    1f84:	b0850513          	addi	a0,a0,-1272 # 8a88 <malloc+0xa9e>
    1f88:	00006097          	auipc	ra,0x6
    1f8c:	e70080e7          	jalr	-400(ra) # 7df8 <printf>
    1f90:	4505                	li	a0,1
    1f92:	00006097          	auipc	ra,0x6
    1f96:	916080e7          	jalr	-1770(ra) # 78a8 <exit>
    1f9a:	fec42783          	lw	a5,-20(s0)
    1f9e:	2785                	addiw	a5,a5,1
    1fa0:	fef42623          	sw	a5,-20(s0)
    1fa4:	fec42783          	lw	a5,-20(s0)
    1fa8:	0007871b          	sext.w	a4,a5
    1fac:	06300793          	li	a5,99
    1fb0:	f4e7d9e3          	bge	a5,a4,1f02 <killstatus+0x12>
    1fb4:	4501                	li	a0,0
    1fb6:	00006097          	auipc	ra,0x6
    1fba:	8f2080e7          	jalr	-1806(ra) # 78a8 <exit>

0000000000001fbe <preempt>:
    1fbe:	7139                	addi	sp,sp,-64
    1fc0:	fc06                	sd	ra,56(sp)
    1fc2:	f822                	sd	s0,48(sp)
    1fc4:	0080                	addi	s0,sp,64
    1fc6:	fca43423          	sd	a0,-56(s0)
    1fca:	00006097          	auipc	ra,0x6
    1fce:	8d6080e7          	jalr	-1834(ra) # 78a0 <fork>
    1fd2:	87aa                	mv	a5,a0
    1fd4:	fef42623          	sw	a5,-20(s0)
    1fd8:	fec42783          	lw	a5,-20(s0)
    1fdc:	2781                	sext.w	a5,a5
    1fde:	0207d163          	bgez	a5,2000 <preempt+0x42>
    1fe2:	fc843583          	ld	a1,-56(s0)
    1fe6:	00007517          	auipc	a0,0x7
    1fea:	ac250513          	addi	a0,a0,-1342 # 8aa8 <malloc+0xabe>
    1fee:	00006097          	auipc	ra,0x6
    1ff2:	e0a080e7          	jalr	-502(ra) # 7df8 <printf>
    1ff6:	4505                	li	a0,1
    1ff8:	00006097          	auipc	ra,0x6
    1ffc:	8b0080e7          	jalr	-1872(ra) # 78a8 <exit>
    2000:	fec42783          	lw	a5,-20(s0)
    2004:	2781                	sext.w	a5,a5
    2006:	e391                	bnez	a5,200a <preempt+0x4c>
    2008:	a001                	j	2008 <preempt+0x4a>
    200a:	00006097          	auipc	ra,0x6
    200e:	896080e7          	jalr	-1898(ra) # 78a0 <fork>
    2012:	87aa                	mv	a5,a0
    2014:	fef42423          	sw	a5,-24(s0)
    2018:	fe842783          	lw	a5,-24(s0)
    201c:	2781                	sext.w	a5,a5
    201e:	0207d163          	bgez	a5,2040 <preempt+0x82>
    2022:	fc843583          	ld	a1,-56(s0)
    2026:	00006517          	auipc	a0,0x6
    202a:	54a50513          	addi	a0,a0,1354 # 8570 <malloc+0x586>
    202e:	00006097          	auipc	ra,0x6
    2032:	dca080e7          	jalr	-566(ra) # 7df8 <printf>
    2036:	4505                	li	a0,1
    2038:	00006097          	auipc	ra,0x6
    203c:	870080e7          	jalr	-1936(ra) # 78a8 <exit>
    2040:	fe842783          	lw	a5,-24(s0)
    2044:	2781                	sext.w	a5,a5
    2046:	e391                	bnez	a5,204a <preempt+0x8c>
    2048:	a001                	j	2048 <preempt+0x8a>
    204a:	fd840793          	addi	a5,s0,-40
    204e:	853e                	mv	a0,a5
    2050:	00006097          	auipc	ra,0x6
    2054:	868080e7          	jalr	-1944(ra) # 78b8 <pipe>
    2058:	00006097          	auipc	ra,0x6
    205c:	848080e7          	jalr	-1976(ra) # 78a0 <fork>
    2060:	87aa                	mv	a5,a0
    2062:	fef42223          	sw	a5,-28(s0)
    2066:	fe442783          	lw	a5,-28(s0)
    206a:	2781                	sext.w	a5,a5
    206c:	0207d163          	bgez	a5,208e <preempt+0xd0>
    2070:	fc843583          	ld	a1,-56(s0)
    2074:	00006517          	auipc	a0,0x6
    2078:	4fc50513          	addi	a0,a0,1276 # 8570 <malloc+0x586>
    207c:	00006097          	auipc	ra,0x6
    2080:	d7c080e7          	jalr	-644(ra) # 7df8 <printf>
    2084:	4505                	li	a0,1
    2086:	00006097          	auipc	ra,0x6
    208a:	822080e7          	jalr	-2014(ra) # 78a8 <exit>
    208e:	fe442783          	lw	a5,-28(s0)
    2092:	2781                	sext.w	a5,a5
    2094:	ebb9                	bnez	a5,20ea <preempt+0x12c>
    2096:	fd842783          	lw	a5,-40(s0)
    209a:	853e                	mv	a0,a5
    209c:	00006097          	auipc	ra,0x6
    20a0:	834080e7          	jalr	-1996(ra) # 78d0 <close>
    20a4:	fdc42783          	lw	a5,-36(s0)
    20a8:	4605                	li	a2,1
    20aa:	00006597          	auipc	a1,0x6
    20ae:	19658593          	addi	a1,a1,406 # 8240 <malloc+0x256>
    20b2:	853e                	mv	a0,a5
    20b4:	00006097          	auipc	ra,0x6
    20b8:	814080e7          	jalr	-2028(ra) # 78c8 <write>
    20bc:	87aa                	mv	a5,a0
    20be:	873e                	mv	a4,a5
    20c0:	4785                	li	a5,1
    20c2:	00f70c63          	beq	a4,a5,20da <preempt+0x11c>
    20c6:	fc843583          	ld	a1,-56(s0)
    20ca:	00007517          	auipc	a0,0x7
    20ce:	9ee50513          	addi	a0,a0,-1554 # 8ab8 <malloc+0xace>
    20d2:	00006097          	auipc	ra,0x6
    20d6:	d26080e7          	jalr	-730(ra) # 7df8 <printf>
    20da:	fdc42783          	lw	a5,-36(s0)
    20de:	853e                	mv	a0,a5
    20e0:	00005097          	auipc	ra,0x5
    20e4:	7f0080e7          	jalr	2032(ra) # 78d0 <close>
    20e8:	a001                	j	20e8 <preempt+0x12a>
    20ea:	fdc42783          	lw	a5,-36(s0)
    20ee:	853e                	mv	a0,a5
    20f0:	00005097          	auipc	ra,0x5
    20f4:	7e0080e7          	jalr	2016(ra) # 78d0 <close>
    20f8:	fd842783          	lw	a5,-40(s0)
    20fc:	660d                	lui	a2,0x3
    20fe:	00009597          	auipc	a1,0x9
    2102:	37258593          	addi	a1,a1,882 # b470 <buf>
    2106:	853e                	mv	a0,a5
    2108:	00005097          	auipc	ra,0x5
    210c:	7b8080e7          	jalr	1976(ra) # 78c0 <read>
    2110:	87aa                	mv	a5,a0
    2112:	873e                	mv	a4,a5
    2114:	4785                	li	a5,1
    2116:	00f70d63          	beq	a4,a5,2130 <preempt+0x172>
    211a:	fc843583          	ld	a1,-56(s0)
    211e:	00007517          	auipc	a0,0x7
    2122:	9b250513          	addi	a0,a0,-1614 # 8ad0 <malloc+0xae6>
    2126:	00006097          	auipc	ra,0x6
    212a:	cd2080e7          	jalr	-814(ra) # 7df8 <printf>
    212e:	a8a5                	j	21a6 <preempt+0x1e8>
    2130:	fd842783          	lw	a5,-40(s0)
    2134:	853e                	mv	a0,a5
    2136:	00005097          	auipc	ra,0x5
    213a:	79a080e7          	jalr	1946(ra) # 78d0 <close>
    213e:	00007517          	auipc	a0,0x7
    2142:	9aa50513          	addi	a0,a0,-1622 # 8ae8 <malloc+0xafe>
    2146:	00006097          	auipc	ra,0x6
    214a:	cb2080e7          	jalr	-846(ra) # 7df8 <printf>
    214e:	fec42783          	lw	a5,-20(s0)
    2152:	853e                	mv	a0,a5
    2154:	00005097          	auipc	ra,0x5
    2158:	784080e7          	jalr	1924(ra) # 78d8 <kill>
    215c:	fe842783          	lw	a5,-24(s0)
    2160:	853e                	mv	a0,a5
    2162:	00005097          	auipc	ra,0x5
    2166:	776080e7          	jalr	1910(ra) # 78d8 <kill>
    216a:	fe442783          	lw	a5,-28(s0)
    216e:	853e                	mv	a0,a5
    2170:	00005097          	auipc	ra,0x5
    2174:	768080e7          	jalr	1896(ra) # 78d8 <kill>
    2178:	00007517          	auipc	a0,0x7
    217c:	98050513          	addi	a0,a0,-1664 # 8af8 <malloc+0xb0e>
    2180:	00006097          	auipc	ra,0x6
    2184:	c78080e7          	jalr	-904(ra) # 7df8 <printf>
    2188:	4501                	li	a0,0
    218a:	00005097          	auipc	ra,0x5
    218e:	726080e7          	jalr	1830(ra) # 78b0 <wait>
    2192:	4501                	li	a0,0
    2194:	00005097          	auipc	ra,0x5
    2198:	71c080e7          	jalr	1820(ra) # 78b0 <wait>
    219c:	4501                	li	a0,0
    219e:	00005097          	auipc	ra,0x5
    21a2:	712080e7          	jalr	1810(ra) # 78b0 <wait>
    21a6:	70e2                	ld	ra,56(sp)
    21a8:	7442                	ld	s0,48(sp)
    21aa:	6121                	addi	sp,sp,64
    21ac:	8082                	ret

00000000000021ae <exitwait>:
    21ae:	7179                	addi	sp,sp,-48
    21b0:	f406                	sd	ra,40(sp)
    21b2:	f022                	sd	s0,32(sp)
    21b4:	1800                	addi	s0,sp,48
    21b6:	fca43c23          	sd	a0,-40(s0)
    21ba:	fe042623          	sw	zero,-20(s0)
    21be:	a87d                	j	227c <exitwait+0xce>
    21c0:	00005097          	auipc	ra,0x5
    21c4:	6e0080e7          	jalr	1760(ra) # 78a0 <fork>
    21c8:	87aa                	mv	a5,a0
    21ca:	fef42423          	sw	a5,-24(s0)
    21ce:	fe842783          	lw	a5,-24(s0)
    21d2:	2781                	sext.w	a5,a5
    21d4:	0207d163          	bgez	a5,21f6 <exitwait+0x48>
    21d8:	fd843583          	ld	a1,-40(s0)
    21dc:	00006517          	auipc	a0,0x6
    21e0:	39450513          	addi	a0,a0,916 # 8570 <malloc+0x586>
    21e4:	00006097          	auipc	ra,0x6
    21e8:	c14080e7          	jalr	-1004(ra) # 7df8 <printf>
    21ec:	4505                	li	a0,1
    21ee:	00005097          	auipc	ra,0x5
    21f2:	6ba080e7          	jalr	1722(ra) # 78a8 <exit>
    21f6:	fe842783          	lw	a5,-24(s0)
    21fa:	2781                	sext.w	a5,a5
    21fc:	c7a5                	beqz	a5,2264 <exitwait+0xb6>
    21fe:	fe440793          	addi	a5,s0,-28
    2202:	853e                	mv	a0,a5
    2204:	00005097          	auipc	ra,0x5
    2208:	6ac080e7          	jalr	1708(ra) # 78b0 <wait>
    220c:	87aa                	mv	a5,a0
    220e:	873e                	mv	a4,a5
    2210:	fe842783          	lw	a5,-24(s0)
    2214:	2781                	sext.w	a5,a5
    2216:	02e78163          	beq	a5,a4,2238 <exitwait+0x8a>
    221a:	fd843583          	ld	a1,-40(s0)
    221e:	00007517          	auipc	a0,0x7
    2222:	8ea50513          	addi	a0,a0,-1814 # 8b08 <malloc+0xb1e>
    2226:	00006097          	auipc	ra,0x6
    222a:	bd2080e7          	jalr	-1070(ra) # 7df8 <printf>
    222e:	4505                	li	a0,1
    2230:	00005097          	auipc	ra,0x5
    2234:	678080e7          	jalr	1656(ra) # 78a8 <exit>
    2238:	fe442703          	lw	a4,-28(s0)
    223c:	fec42783          	lw	a5,-20(s0)
    2240:	2781                	sext.w	a5,a5
    2242:	02e78863          	beq	a5,a4,2272 <exitwait+0xc4>
    2246:	fd843583          	ld	a1,-40(s0)
    224a:	00007517          	auipc	a0,0x7
    224e:	8d650513          	addi	a0,a0,-1834 # 8b20 <malloc+0xb36>
    2252:	00006097          	auipc	ra,0x6
    2256:	ba6080e7          	jalr	-1114(ra) # 7df8 <printf>
    225a:	4505                	li	a0,1
    225c:	00005097          	auipc	ra,0x5
    2260:	64c080e7          	jalr	1612(ra) # 78a8 <exit>
    2264:	fec42783          	lw	a5,-20(s0)
    2268:	853e                	mv	a0,a5
    226a:	00005097          	auipc	ra,0x5
    226e:	63e080e7          	jalr	1598(ra) # 78a8 <exit>
    2272:	fec42783          	lw	a5,-20(s0)
    2276:	2785                	addiw	a5,a5,1
    2278:	fef42623          	sw	a5,-20(s0)
    227c:	fec42783          	lw	a5,-20(s0)
    2280:	0007871b          	sext.w	a4,a5
    2284:	06300793          	li	a5,99
    2288:	f2e7dce3          	bge	a5,a4,21c0 <exitwait+0x12>
    228c:	0001                	nop
    228e:	0001                	nop
    2290:	70a2                	ld	ra,40(sp)
    2292:	7402                	ld	s0,32(sp)
    2294:	6145                	addi	sp,sp,48
    2296:	8082                	ret

0000000000002298 <reparent>:
    2298:	7179                	addi	sp,sp,-48
    229a:	f406                	sd	ra,40(sp)
    229c:	f022                	sd	s0,32(sp)
    229e:	1800                	addi	s0,sp,48
    22a0:	fca43c23          	sd	a0,-40(s0)
    22a4:	00005097          	auipc	ra,0x5
    22a8:	684080e7          	jalr	1668(ra) # 7928 <getpid>
    22ac:	87aa                	mv	a5,a0
    22ae:	fef42423          	sw	a5,-24(s0)
    22b2:	fe042623          	sw	zero,-20(s0)
    22b6:	a86d                	j	2370 <reparent+0xd8>
    22b8:	00005097          	auipc	ra,0x5
    22bc:	5e8080e7          	jalr	1512(ra) # 78a0 <fork>
    22c0:	87aa                	mv	a5,a0
    22c2:	fef42223          	sw	a5,-28(s0)
    22c6:	fe442783          	lw	a5,-28(s0)
    22ca:	2781                	sext.w	a5,a5
    22cc:	0207d163          	bgez	a5,22ee <reparent+0x56>
    22d0:	fd843583          	ld	a1,-40(s0)
    22d4:	00006517          	auipc	a0,0x6
    22d8:	29c50513          	addi	a0,a0,668 # 8570 <malloc+0x586>
    22dc:	00006097          	auipc	ra,0x6
    22e0:	b1c080e7          	jalr	-1252(ra) # 7df8 <printf>
    22e4:	4505                	li	a0,1
    22e6:	00005097          	auipc	ra,0x5
    22ea:	5c2080e7          	jalr	1474(ra) # 78a8 <exit>
    22ee:	fe442783          	lw	a5,-28(s0)
    22f2:	2781                	sext.w	a5,a5
    22f4:	cf85                	beqz	a5,232c <reparent+0x94>
    22f6:	4501                	li	a0,0
    22f8:	00005097          	auipc	ra,0x5
    22fc:	5b8080e7          	jalr	1464(ra) # 78b0 <wait>
    2300:	87aa                	mv	a5,a0
    2302:	873e                	mv	a4,a5
    2304:	fe442783          	lw	a5,-28(s0)
    2308:	2781                	sext.w	a5,a5
    230a:	04e78e63          	beq	a5,a4,2366 <reparent+0xce>
    230e:	fd843583          	ld	a1,-40(s0)
    2312:	00006517          	auipc	a0,0x6
    2316:	7f650513          	addi	a0,a0,2038 # 8b08 <malloc+0xb1e>
    231a:	00006097          	auipc	ra,0x6
    231e:	ade080e7          	jalr	-1314(ra) # 7df8 <printf>
    2322:	4505                	li	a0,1
    2324:	00005097          	auipc	ra,0x5
    2328:	584080e7          	jalr	1412(ra) # 78a8 <exit>
    232c:	00005097          	auipc	ra,0x5
    2330:	574080e7          	jalr	1396(ra) # 78a0 <fork>
    2334:	87aa                	mv	a5,a0
    2336:	fef42023          	sw	a5,-32(s0)
    233a:	fe042783          	lw	a5,-32(s0)
    233e:	2781                	sext.w	a5,a5
    2340:	0007de63          	bgez	a5,235c <reparent+0xc4>
    2344:	fe842783          	lw	a5,-24(s0)
    2348:	853e                	mv	a0,a5
    234a:	00005097          	auipc	ra,0x5
    234e:	58e080e7          	jalr	1422(ra) # 78d8 <kill>
    2352:	4505                	li	a0,1
    2354:	00005097          	auipc	ra,0x5
    2358:	554080e7          	jalr	1364(ra) # 78a8 <exit>
    235c:	4501                	li	a0,0
    235e:	00005097          	auipc	ra,0x5
    2362:	54a080e7          	jalr	1354(ra) # 78a8 <exit>
    2366:	fec42783          	lw	a5,-20(s0)
    236a:	2785                	addiw	a5,a5,1
    236c:	fef42623          	sw	a5,-20(s0)
    2370:	fec42783          	lw	a5,-20(s0)
    2374:	0007871b          	sext.w	a4,a5
    2378:	0c700793          	li	a5,199
    237c:	f2e7dee3          	bge	a5,a4,22b8 <reparent+0x20>
    2380:	4501                	li	a0,0
    2382:	00005097          	auipc	ra,0x5
    2386:	526080e7          	jalr	1318(ra) # 78a8 <exit>

000000000000238a <twochildren>:
    238a:	7179                	addi	sp,sp,-48
    238c:	f406                	sd	ra,40(sp)
    238e:	f022                	sd	s0,32(sp)
    2390:	1800                	addi	s0,sp,48
    2392:	fca43c23          	sd	a0,-40(s0)
    2396:	fe042623          	sw	zero,-20(s0)
    239a:	a845                	j	244a <twochildren+0xc0>
    239c:	00005097          	auipc	ra,0x5
    23a0:	504080e7          	jalr	1284(ra) # 78a0 <fork>
    23a4:	87aa                	mv	a5,a0
    23a6:	fef42423          	sw	a5,-24(s0)
    23aa:	fe842783          	lw	a5,-24(s0)
    23ae:	2781                	sext.w	a5,a5
    23b0:	0207d163          	bgez	a5,23d2 <twochildren+0x48>
    23b4:	fd843583          	ld	a1,-40(s0)
    23b8:	00006517          	auipc	a0,0x6
    23bc:	1b850513          	addi	a0,a0,440 # 8570 <malloc+0x586>
    23c0:	00006097          	auipc	ra,0x6
    23c4:	a38080e7          	jalr	-1480(ra) # 7df8 <printf>
    23c8:	4505                	li	a0,1
    23ca:	00005097          	auipc	ra,0x5
    23ce:	4de080e7          	jalr	1246(ra) # 78a8 <exit>
    23d2:	fe842783          	lw	a5,-24(s0)
    23d6:	2781                	sext.w	a5,a5
    23d8:	e791                	bnez	a5,23e4 <twochildren+0x5a>
    23da:	4501                	li	a0,0
    23dc:	00005097          	auipc	ra,0x5
    23e0:	4cc080e7          	jalr	1228(ra) # 78a8 <exit>
    23e4:	00005097          	auipc	ra,0x5
    23e8:	4bc080e7          	jalr	1212(ra) # 78a0 <fork>
    23ec:	87aa                	mv	a5,a0
    23ee:	fef42223          	sw	a5,-28(s0)
    23f2:	fe442783          	lw	a5,-28(s0)
    23f6:	2781                	sext.w	a5,a5
    23f8:	0207d163          	bgez	a5,241a <twochildren+0x90>
    23fc:	fd843583          	ld	a1,-40(s0)
    2400:	00006517          	auipc	a0,0x6
    2404:	17050513          	addi	a0,a0,368 # 8570 <malloc+0x586>
    2408:	00006097          	auipc	ra,0x6
    240c:	9f0080e7          	jalr	-1552(ra) # 7df8 <printf>
    2410:	4505                	li	a0,1
    2412:	00005097          	auipc	ra,0x5
    2416:	496080e7          	jalr	1174(ra) # 78a8 <exit>
    241a:	fe442783          	lw	a5,-28(s0)
    241e:	2781                	sext.w	a5,a5
    2420:	e791                	bnez	a5,242c <twochildren+0xa2>
    2422:	4501                	li	a0,0
    2424:	00005097          	auipc	ra,0x5
    2428:	484080e7          	jalr	1156(ra) # 78a8 <exit>
    242c:	4501                	li	a0,0
    242e:	00005097          	auipc	ra,0x5
    2432:	482080e7          	jalr	1154(ra) # 78b0 <wait>
    2436:	4501                	li	a0,0
    2438:	00005097          	auipc	ra,0x5
    243c:	478080e7          	jalr	1144(ra) # 78b0 <wait>
    2440:	fec42783          	lw	a5,-20(s0)
    2444:	2785                	addiw	a5,a5,1
    2446:	fef42623          	sw	a5,-20(s0)
    244a:	fec42783          	lw	a5,-20(s0)
    244e:	0007871b          	sext.w	a4,a5
    2452:	3e700793          	li	a5,999
    2456:	f4e7d3e3          	bge	a5,a4,239c <twochildren+0x12>
    245a:	0001                	nop
    245c:	0001                	nop
    245e:	70a2                	ld	ra,40(sp)
    2460:	7402                	ld	s0,32(sp)
    2462:	6145                	addi	sp,sp,48
    2464:	8082                	ret

0000000000002466 <forkfork>:
    2466:	7139                	addi	sp,sp,-64
    2468:	fc06                	sd	ra,56(sp)
    246a:	f822                	sd	s0,48(sp)
    246c:	0080                	addi	s0,sp,64
    246e:	fca43423          	sd	a0,-56(s0)
    2472:	fe042623          	sw	zero,-20(s0)
    2476:	a84d                	j	2528 <forkfork+0xc2>
    2478:	00005097          	auipc	ra,0x5
    247c:	428080e7          	jalr	1064(ra) # 78a0 <fork>
    2480:	87aa                	mv	a5,a0
    2482:	fef42023          	sw	a5,-32(s0)
    2486:	fe042783          	lw	a5,-32(s0)
    248a:	2781                	sext.w	a5,a5
    248c:	0207d163          	bgez	a5,24ae <forkfork+0x48>
    2490:	fc843583          	ld	a1,-56(s0)
    2494:	00006517          	auipc	a0,0x6
    2498:	61450513          	addi	a0,a0,1556 # 8aa8 <malloc+0xabe>
    249c:	00006097          	auipc	ra,0x6
    24a0:	95c080e7          	jalr	-1700(ra) # 7df8 <printf>
    24a4:	4505                	li	a0,1
    24a6:	00005097          	auipc	ra,0x5
    24aa:	402080e7          	jalr	1026(ra) # 78a8 <exit>
    24ae:	fe042783          	lw	a5,-32(s0)
    24b2:	2781                	sext.w	a5,a5
    24b4:	e7ad                	bnez	a5,251e <forkfork+0xb8>
    24b6:	fe042423          	sw	zero,-24(s0)
    24ba:	a0a9                	j	2504 <forkfork+0x9e>
    24bc:	00005097          	auipc	ra,0x5
    24c0:	3e4080e7          	jalr	996(ra) # 78a0 <fork>
    24c4:	87aa                	mv	a5,a0
    24c6:	fcf42e23          	sw	a5,-36(s0)
    24ca:	fdc42783          	lw	a5,-36(s0)
    24ce:	2781                	sext.w	a5,a5
    24d0:	0007d763          	bgez	a5,24de <forkfork+0x78>
    24d4:	4505                	li	a0,1
    24d6:	00005097          	auipc	ra,0x5
    24da:	3d2080e7          	jalr	978(ra) # 78a8 <exit>
    24de:	fdc42783          	lw	a5,-36(s0)
    24e2:	2781                	sext.w	a5,a5
    24e4:	e791                	bnez	a5,24f0 <forkfork+0x8a>
    24e6:	4501                	li	a0,0
    24e8:	00005097          	auipc	ra,0x5
    24ec:	3c0080e7          	jalr	960(ra) # 78a8 <exit>
    24f0:	4501                	li	a0,0
    24f2:	00005097          	auipc	ra,0x5
    24f6:	3be080e7          	jalr	958(ra) # 78b0 <wait>
    24fa:	fe842783          	lw	a5,-24(s0)
    24fe:	2785                	addiw	a5,a5,1
    2500:	fef42423          	sw	a5,-24(s0)
    2504:	fe842783          	lw	a5,-24(s0)
    2508:	0007871b          	sext.w	a4,a5
    250c:	0c700793          	li	a5,199
    2510:	fae7d6e3          	bge	a5,a4,24bc <forkfork+0x56>
    2514:	4501                	li	a0,0
    2516:	00005097          	auipc	ra,0x5
    251a:	392080e7          	jalr	914(ra) # 78a8 <exit>
    251e:	fec42783          	lw	a5,-20(s0)
    2522:	2785                	addiw	a5,a5,1
    2524:	fef42623          	sw	a5,-20(s0)
    2528:	fec42783          	lw	a5,-20(s0)
    252c:	0007871b          	sext.w	a4,a5
    2530:	4785                	li	a5,1
    2532:	f4e7d3e3          	bge	a5,a4,2478 <forkfork+0x12>
    2536:	fe042223          	sw	zero,-28(s0)
    253a:	a83d                	j	2578 <forkfork+0x112>
    253c:	fd840793          	addi	a5,s0,-40
    2540:	853e                	mv	a0,a5
    2542:	00005097          	auipc	ra,0x5
    2546:	36e080e7          	jalr	878(ra) # 78b0 <wait>
    254a:	fd842783          	lw	a5,-40(s0)
    254e:	c385                	beqz	a5,256e <forkfork+0x108>
    2550:	fc843583          	ld	a1,-56(s0)
    2554:	00006517          	auipc	a0,0x6
    2558:	5ec50513          	addi	a0,a0,1516 # 8b40 <malloc+0xb56>
    255c:	00006097          	auipc	ra,0x6
    2560:	89c080e7          	jalr	-1892(ra) # 7df8 <printf>
    2564:	4505                	li	a0,1
    2566:	00005097          	auipc	ra,0x5
    256a:	342080e7          	jalr	834(ra) # 78a8 <exit>
    256e:	fe442783          	lw	a5,-28(s0)
    2572:	2785                	addiw	a5,a5,1
    2574:	fef42223          	sw	a5,-28(s0)
    2578:	fe442783          	lw	a5,-28(s0)
    257c:	0007871b          	sext.w	a4,a5
    2580:	4785                	li	a5,1
    2582:	fae7dde3          	bge	a5,a4,253c <forkfork+0xd6>
    2586:	0001                	nop
    2588:	0001                	nop
    258a:	70e2                	ld	ra,56(sp)
    258c:	7442                	ld	s0,48(sp)
    258e:	6121                	addi	sp,sp,64
    2590:	8082                	ret

0000000000002592 <forkforkfork>:
    2592:	7179                	addi	sp,sp,-48
    2594:	f406                	sd	ra,40(sp)
    2596:	f022                	sd	s0,32(sp)
    2598:	1800                	addi	s0,sp,48
    259a:	fca43c23          	sd	a0,-40(s0)
    259e:	00006517          	auipc	a0,0x6
    25a2:	5c250513          	addi	a0,a0,1474 # 8b60 <malloc+0xb76>
    25a6:	00005097          	auipc	ra,0x5
    25aa:	352080e7          	jalr	850(ra) # 78f8 <unlink>
    25ae:	00005097          	auipc	ra,0x5
    25b2:	2f2080e7          	jalr	754(ra) # 78a0 <fork>
    25b6:	87aa                	mv	a5,a0
    25b8:	fef42623          	sw	a5,-20(s0)
    25bc:	fec42783          	lw	a5,-20(s0)
    25c0:	2781                	sext.w	a5,a5
    25c2:	0207d163          	bgez	a5,25e4 <forkforkfork+0x52>
    25c6:	fd843583          	ld	a1,-40(s0)
    25ca:	00006517          	auipc	a0,0x6
    25ce:	4de50513          	addi	a0,a0,1246 # 8aa8 <malloc+0xabe>
    25d2:	00006097          	auipc	ra,0x6
    25d6:	826080e7          	jalr	-2010(ra) # 7df8 <printf>
    25da:	4505                	li	a0,1
    25dc:	00005097          	auipc	ra,0x5
    25e0:	2cc080e7          	jalr	716(ra) # 78a8 <exit>
    25e4:	fec42783          	lw	a5,-20(s0)
    25e8:	2781                	sext.w	a5,a5
    25ea:	efb9                	bnez	a5,2648 <forkforkfork+0xb6>
    25ec:	4581                	li	a1,0
    25ee:	00006517          	auipc	a0,0x6
    25f2:	57250513          	addi	a0,a0,1394 # 8b60 <malloc+0xb76>
    25f6:	00005097          	auipc	ra,0x5
    25fa:	2f2080e7          	jalr	754(ra) # 78e8 <open>
    25fe:	87aa                	mv	a5,a0
    2600:	fef42423          	sw	a5,-24(s0)
    2604:	fe842783          	lw	a5,-24(s0)
    2608:	2781                	sext.w	a5,a5
    260a:	0007c763          	bltz	a5,2618 <forkforkfork+0x86>
    260e:	4501                	li	a0,0
    2610:	00005097          	auipc	ra,0x5
    2614:	298080e7          	jalr	664(ra) # 78a8 <exit>
    2618:	00005097          	auipc	ra,0x5
    261c:	288080e7          	jalr	648(ra) # 78a0 <fork>
    2620:	87aa                	mv	a5,a0
    2622:	fc07d5e3          	bgez	a5,25ec <forkforkfork+0x5a>
    2626:	20200593          	li	a1,514
    262a:	00006517          	auipc	a0,0x6
    262e:	53650513          	addi	a0,a0,1334 # 8b60 <malloc+0xb76>
    2632:	00005097          	auipc	ra,0x5
    2636:	2b6080e7          	jalr	694(ra) # 78e8 <open>
    263a:	87aa                	mv	a5,a0
    263c:	853e                	mv	a0,a5
    263e:	00005097          	auipc	ra,0x5
    2642:	292080e7          	jalr	658(ra) # 78d0 <close>
    2646:	b75d                	j	25ec <forkforkfork+0x5a>
    2648:	4551                	li	a0,20
    264a:	00005097          	auipc	ra,0x5
    264e:	2ee080e7          	jalr	750(ra) # 7938 <sleep>
    2652:	20200593          	li	a1,514
    2656:	00006517          	auipc	a0,0x6
    265a:	50a50513          	addi	a0,a0,1290 # 8b60 <malloc+0xb76>
    265e:	00005097          	auipc	ra,0x5
    2662:	28a080e7          	jalr	650(ra) # 78e8 <open>
    2666:	87aa                	mv	a5,a0
    2668:	853e                	mv	a0,a5
    266a:	00005097          	auipc	ra,0x5
    266e:	266080e7          	jalr	614(ra) # 78d0 <close>
    2672:	4501                	li	a0,0
    2674:	00005097          	auipc	ra,0x5
    2678:	23c080e7          	jalr	572(ra) # 78b0 <wait>
    267c:	4529                	li	a0,10
    267e:	00005097          	auipc	ra,0x5
    2682:	2ba080e7          	jalr	698(ra) # 7938 <sleep>
    2686:	0001                	nop
    2688:	70a2                	ld	ra,40(sp)
    268a:	7402                	ld	s0,32(sp)
    268c:	6145                	addi	sp,sp,48
    268e:	8082                	ret

0000000000002690 <reparent2>:
    2690:	7179                	addi	sp,sp,-48
    2692:	f406                	sd	ra,40(sp)
    2694:	f022                	sd	s0,32(sp)
    2696:	1800                	addi	s0,sp,48
    2698:	fca43c23          	sd	a0,-40(s0)
    269c:	fe042623          	sw	zero,-20(s0)
    26a0:	a0ad                	j	270a <reparent2+0x7a>
    26a2:	00005097          	auipc	ra,0x5
    26a6:	1fe080e7          	jalr	510(ra) # 78a0 <fork>
    26aa:	87aa                	mv	a5,a0
    26ac:	fef42423          	sw	a5,-24(s0)
    26b0:	fe842783          	lw	a5,-24(s0)
    26b4:	2781                	sext.w	a5,a5
    26b6:	0007df63          	bgez	a5,26d4 <reparent2+0x44>
    26ba:	00006517          	auipc	a0,0x6
    26be:	c8650513          	addi	a0,a0,-890 # 8340 <malloc+0x356>
    26c2:	00005097          	auipc	ra,0x5
    26c6:	736080e7          	jalr	1846(ra) # 7df8 <printf>
    26ca:	4505                	li	a0,1
    26cc:	00005097          	auipc	ra,0x5
    26d0:	1dc080e7          	jalr	476(ra) # 78a8 <exit>
    26d4:	fe842783          	lw	a5,-24(s0)
    26d8:	2781                	sext.w	a5,a5
    26da:	ef91                	bnez	a5,26f6 <reparent2+0x66>
    26dc:	00005097          	auipc	ra,0x5
    26e0:	1c4080e7          	jalr	452(ra) # 78a0 <fork>
    26e4:	00005097          	auipc	ra,0x5
    26e8:	1bc080e7          	jalr	444(ra) # 78a0 <fork>
    26ec:	4501                	li	a0,0
    26ee:	00005097          	auipc	ra,0x5
    26f2:	1ba080e7          	jalr	442(ra) # 78a8 <exit>
    26f6:	4501                	li	a0,0
    26f8:	00005097          	auipc	ra,0x5
    26fc:	1b8080e7          	jalr	440(ra) # 78b0 <wait>
    2700:	fec42783          	lw	a5,-20(s0)
    2704:	2785                	addiw	a5,a5,1
    2706:	fef42623          	sw	a5,-20(s0)
    270a:	fec42783          	lw	a5,-20(s0)
    270e:	0007871b          	sext.w	a4,a5
    2712:	31f00793          	li	a5,799
    2716:	f8e7d6e3          	bge	a5,a4,26a2 <reparent2+0x12>
    271a:	4501                	li	a0,0
    271c:	00005097          	auipc	ra,0x5
    2720:	18c080e7          	jalr	396(ra) # 78a8 <exit>

0000000000002724 <mem>:
    2724:	7139                	addi	sp,sp,-64
    2726:	fc06                	sd	ra,56(sp)
    2728:	f822                	sd	s0,48(sp)
    272a:	0080                	addi	s0,sp,64
    272c:	fca43423          	sd	a0,-56(s0)
    2730:	00005097          	auipc	ra,0x5
    2734:	170080e7          	jalr	368(ra) # 78a0 <fork>
    2738:	87aa                	mv	a5,a0
    273a:	fef42223          	sw	a5,-28(s0)
    273e:	fe442783          	lw	a5,-28(s0)
    2742:	2781                	sext.w	a5,a5
    2744:	e3c5                	bnez	a5,27e4 <mem+0xc0>
    2746:	fe043423          	sd	zero,-24(s0)
    274a:	a811                	j	275e <mem+0x3a>
    274c:	fd843783          	ld	a5,-40(s0)
    2750:	fe843703          	ld	a4,-24(s0)
    2754:	e398                	sd	a4,0(a5)
    2756:	fd843783          	ld	a5,-40(s0)
    275a:	fef43423          	sd	a5,-24(s0)
    275e:	6789                	lui	a5,0x2
    2760:	71178513          	addi	a0,a5,1809 # 2711 <reparent2+0x81>
    2764:	00006097          	auipc	ra,0x6
    2768:	886080e7          	jalr	-1914(ra) # 7fea <malloc>
    276c:	fca43c23          	sd	a0,-40(s0)
    2770:	fd843783          	ld	a5,-40(s0)
    2774:	ffe1                	bnez	a5,274c <mem+0x28>
    2776:	a005                	j	2796 <mem+0x72>
    2778:	fe843783          	ld	a5,-24(s0)
    277c:	639c                	ld	a5,0(a5)
    277e:	fcf43c23          	sd	a5,-40(s0)
    2782:	fe843503          	ld	a0,-24(s0)
    2786:	00005097          	auipc	ra,0x5
    278a:	6c2080e7          	jalr	1730(ra) # 7e48 <free>
    278e:	fd843783          	ld	a5,-40(s0)
    2792:	fef43423          	sd	a5,-24(s0)
    2796:	fe843783          	ld	a5,-24(s0)
    279a:	fff9                	bnez	a5,2778 <mem+0x54>
    279c:	6515                	lui	a0,0x5
    279e:	00006097          	auipc	ra,0x6
    27a2:	84c080e7          	jalr	-1972(ra) # 7fea <malloc>
    27a6:	fea43423          	sd	a0,-24(s0)
    27aa:	fe843783          	ld	a5,-24(s0)
    27ae:	e385                	bnez	a5,27ce <mem+0xaa>
    27b0:	fc843583          	ld	a1,-56(s0)
    27b4:	00006517          	auipc	a0,0x6
    27b8:	3bc50513          	addi	a0,a0,956 # 8b70 <malloc+0xb86>
    27bc:	00005097          	auipc	ra,0x5
    27c0:	63c080e7          	jalr	1596(ra) # 7df8 <printf>
    27c4:	4505                	li	a0,1
    27c6:	00005097          	auipc	ra,0x5
    27ca:	0e2080e7          	jalr	226(ra) # 78a8 <exit>
    27ce:	fe843503          	ld	a0,-24(s0)
    27d2:	00005097          	auipc	ra,0x5
    27d6:	676080e7          	jalr	1654(ra) # 7e48 <free>
    27da:	4501                	li	a0,0
    27dc:	00005097          	auipc	ra,0x5
    27e0:	0cc080e7          	jalr	204(ra) # 78a8 <exit>
    27e4:	fd440793          	addi	a5,s0,-44
    27e8:	853e                	mv	a0,a5
    27ea:	00005097          	auipc	ra,0x5
    27ee:	0c6080e7          	jalr	198(ra) # 78b0 <wait>
    27f2:	fd442783          	lw	a5,-44(s0)
    27f6:	873e                	mv	a4,a5
    27f8:	57fd                	li	a5,-1
    27fa:	00f71763          	bne	a4,a5,2808 <mem+0xe4>
    27fe:	4501                	li	a0,0
    2800:	00005097          	auipc	ra,0x5
    2804:	0a8080e7          	jalr	168(ra) # 78a8 <exit>
    2808:	fd442783          	lw	a5,-44(s0)
    280c:	853e                	mv	a0,a5
    280e:	00005097          	auipc	ra,0x5
    2812:	09a080e7          	jalr	154(ra) # 78a8 <exit>

0000000000002816 <sharedfd>:
    2816:	715d                	addi	sp,sp,-80
    2818:	e486                	sd	ra,72(sp)
    281a:	e0a2                	sd	s0,64(sp)
    281c:	0880                	addi	s0,sp,80
    281e:	faa43c23          	sd	a0,-72(s0)
    2822:	00006517          	auipc	a0,0x6
    2826:	36e50513          	addi	a0,a0,878 # 8b90 <malloc+0xba6>
    282a:	00005097          	auipc	ra,0x5
    282e:	0ce080e7          	jalr	206(ra) # 78f8 <unlink>
    2832:	20200593          	li	a1,514
    2836:	00006517          	auipc	a0,0x6
    283a:	35a50513          	addi	a0,a0,858 # 8b90 <malloc+0xba6>
    283e:	00005097          	auipc	ra,0x5
    2842:	0aa080e7          	jalr	170(ra) # 78e8 <open>
    2846:	87aa                	mv	a5,a0
    2848:	fef42023          	sw	a5,-32(s0)
    284c:	fe042783          	lw	a5,-32(s0)
    2850:	2781                	sext.w	a5,a5
    2852:	0207d163          	bgez	a5,2874 <sharedfd+0x5e>
    2856:	fb843583          	ld	a1,-72(s0)
    285a:	00006517          	auipc	a0,0x6
    285e:	34650513          	addi	a0,a0,838 # 8ba0 <malloc+0xbb6>
    2862:	00005097          	auipc	ra,0x5
    2866:	596080e7          	jalr	1430(ra) # 7df8 <printf>
    286a:	4505                	li	a0,1
    286c:	00005097          	auipc	ra,0x5
    2870:	03c080e7          	jalr	60(ra) # 78a8 <exit>
    2874:	00005097          	auipc	ra,0x5
    2878:	02c080e7          	jalr	44(ra) # 78a0 <fork>
    287c:	87aa                	mv	a5,a0
    287e:	fcf42e23          	sw	a5,-36(s0)
    2882:	fdc42783          	lw	a5,-36(s0)
    2886:	2781                	sext.w	a5,a5
    2888:	e781                	bnez	a5,2890 <sharedfd+0x7a>
    288a:	06300793          	li	a5,99
    288e:	a019                	j	2894 <sharedfd+0x7e>
    2890:	07000793          	li	a5,112
    2894:	fc840713          	addi	a4,s0,-56
    2898:	4629                	li	a2,10
    289a:	85be                	mv	a1,a5
    289c:	853a                	mv	a0,a4
    289e:	00005097          	auipc	ra,0x5
    28a2:	c5e080e7          	jalr	-930(ra) # 74fc <memset>
    28a6:	fe042623          	sw	zero,-20(s0)
    28aa:	a0a9                	j	28f4 <sharedfd+0xde>
    28ac:	fc840713          	addi	a4,s0,-56
    28b0:	fe042783          	lw	a5,-32(s0)
    28b4:	4629                	li	a2,10
    28b6:	85ba                	mv	a1,a4
    28b8:	853e                	mv	a0,a5
    28ba:	00005097          	auipc	ra,0x5
    28be:	00e080e7          	jalr	14(ra) # 78c8 <write>
    28c2:	87aa                	mv	a5,a0
    28c4:	873e                	mv	a4,a5
    28c6:	47a9                	li	a5,10
    28c8:	02f70163          	beq	a4,a5,28ea <sharedfd+0xd4>
    28cc:	fb843583          	ld	a1,-72(s0)
    28d0:	00006517          	auipc	a0,0x6
    28d4:	2f850513          	addi	a0,a0,760 # 8bc8 <malloc+0xbde>
    28d8:	00005097          	auipc	ra,0x5
    28dc:	520080e7          	jalr	1312(ra) # 7df8 <printf>
    28e0:	4505                	li	a0,1
    28e2:	00005097          	auipc	ra,0x5
    28e6:	fc6080e7          	jalr	-58(ra) # 78a8 <exit>
    28ea:	fec42783          	lw	a5,-20(s0)
    28ee:	2785                	addiw	a5,a5,1
    28f0:	fef42623          	sw	a5,-20(s0)
    28f4:	fec42783          	lw	a5,-20(s0)
    28f8:	0007871b          	sext.w	a4,a5
    28fc:	3e700793          	li	a5,999
    2900:	fae7d6e3          	bge	a5,a4,28ac <sharedfd+0x96>
    2904:	fdc42783          	lw	a5,-36(s0)
    2908:	2781                	sext.w	a5,a5
    290a:	e791                	bnez	a5,2916 <sharedfd+0x100>
    290c:	4501                	li	a0,0
    290e:	00005097          	auipc	ra,0x5
    2912:	f9a080e7          	jalr	-102(ra) # 78a8 <exit>
    2916:	fc440793          	addi	a5,s0,-60
    291a:	853e                	mv	a0,a5
    291c:	00005097          	auipc	ra,0x5
    2920:	f94080e7          	jalr	-108(ra) # 78b0 <wait>
    2924:	fc442783          	lw	a5,-60(s0)
    2928:	cb81                	beqz	a5,2938 <sharedfd+0x122>
    292a:	fc442783          	lw	a5,-60(s0)
    292e:	853e                	mv	a0,a5
    2930:	00005097          	auipc	ra,0x5
    2934:	f78080e7          	jalr	-136(ra) # 78a8 <exit>
    2938:	fe042783          	lw	a5,-32(s0)
    293c:	853e                	mv	a0,a5
    293e:	00005097          	auipc	ra,0x5
    2942:	f92080e7          	jalr	-110(ra) # 78d0 <close>
    2946:	4581                	li	a1,0
    2948:	00006517          	auipc	a0,0x6
    294c:	24850513          	addi	a0,a0,584 # 8b90 <malloc+0xba6>
    2950:	00005097          	auipc	ra,0x5
    2954:	f98080e7          	jalr	-104(ra) # 78e8 <open>
    2958:	87aa                	mv	a5,a0
    295a:	fef42023          	sw	a5,-32(s0)
    295e:	fe042783          	lw	a5,-32(s0)
    2962:	2781                	sext.w	a5,a5
    2964:	0207d163          	bgez	a5,2986 <sharedfd+0x170>
    2968:	fb843583          	ld	a1,-72(s0)
    296c:	00006517          	auipc	a0,0x6
    2970:	27c50513          	addi	a0,a0,636 # 8be8 <malloc+0xbfe>
    2974:	00005097          	auipc	ra,0x5
    2978:	484080e7          	jalr	1156(ra) # 7df8 <printf>
    297c:	4505                	li	a0,1
    297e:	00005097          	auipc	ra,0x5
    2982:	f2a080e7          	jalr	-214(ra) # 78a8 <exit>
    2986:	fe042223          	sw	zero,-28(s0)
    298a:	fe442783          	lw	a5,-28(s0)
    298e:	fef42423          	sw	a5,-24(s0)
    2992:	a8b9                	j	29f0 <sharedfd+0x1da>
    2994:	fe042623          	sw	zero,-20(s0)
    2998:	a0b1                	j	29e4 <sharedfd+0x1ce>
    299a:	fec42783          	lw	a5,-20(s0)
    299e:	17c1                	addi	a5,a5,-16
    29a0:	97a2                	add	a5,a5,s0
    29a2:	fd87c783          	lbu	a5,-40(a5)
    29a6:	873e                	mv	a4,a5
    29a8:	06300793          	li	a5,99
    29ac:	00f71763          	bne	a4,a5,29ba <sharedfd+0x1a4>
    29b0:	fe842783          	lw	a5,-24(s0)
    29b4:	2785                	addiw	a5,a5,1
    29b6:	fef42423          	sw	a5,-24(s0)
    29ba:	fec42783          	lw	a5,-20(s0)
    29be:	17c1                	addi	a5,a5,-16
    29c0:	97a2                	add	a5,a5,s0
    29c2:	fd87c783          	lbu	a5,-40(a5)
    29c6:	873e                	mv	a4,a5
    29c8:	07000793          	li	a5,112
    29cc:	00f71763          	bne	a4,a5,29da <sharedfd+0x1c4>
    29d0:	fe442783          	lw	a5,-28(s0)
    29d4:	2785                	addiw	a5,a5,1
    29d6:	fef42223          	sw	a5,-28(s0)
    29da:	fec42783          	lw	a5,-20(s0)
    29de:	2785                	addiw	a5,a5,1
    29e0:	fef42623          	sw	a5,-20(s0)
    29e4:	fec42783          	lw	a5,-20(s0)
    29e8:	873e                	mv	a4,a5
    29ea:	47a5                	li	a5,9
    29ec:	fae7f7e3          	bgeu	a5,a4,299a <sharedfd+0x184>
    29f0:	fc840713          	addi	a4,s0,-56
    29f4:	fe042783          	lw	a5,-32(s0)
    29f8:	4629                	li	a2,10
    29fa:	85ba                	mv	a1,a4
    29fc:	853e                	mv	a0,a5
    29fe:	00005097          	auipc	ra,0x5
    2a02:	ec2080e7          	jalr	-318(ra) # 78c0 <read>
    2a06:	87aa                	mv	a5,a0
    2a08:	fcf42c23          	sw	a5,-40(s0)
    2a0c:	fd842783          	lw	a5,-40(s0)
    2a10:	2781                	sext.w	a5,a5
    2a12:	f8f041e3          	bgtz	a5,2994 <sharedfd+0x17e>
    2a16:	fe042783          	lw	a5,-32(s0)
    2a1a:	853e                	mv	a0,a5
    2a1c:	00005097          	auipc	ra,0x5
    2a20:	eb4080e7          	jalr	-332(ra) # 78d0 <close>
    2a24:	00006517          	auipc	a0,0x6
    2a28:	16c50513          	addi	a0,a0,364 # 8b90 <malloc+0xba6>
    2a2c:	00005097          	auipc	ra,0x5
    2a30:	ecc080e7          	jalr	-308(ra) # 78f8 <unlink>
    2a34:	fe842783          	lw	a5,-24(s0)
    2a38:	0007871b          	sext.w	a4,a5
    2a3c:	6789                	lui	a5,0x2
    2a3e:	71078793          	addi	a5,a5,1808 # 2710 <reparent2+0x80>
    2a42:	02f71063          	bne	a4,a5,2a62 <sharedfd+0x24c>
    2a46:	fe442783          	lw	a5,-28(s0)
    2a4a:	0007871b          	sext.w	a4,a5
    2a4e:	6789                	lui	a5,0x2
    2a50:	71078793          	addi	a5,a5,1808 # 2710 <reparent2+0x80>
    2a54:	00f71763          	bne	a4,a5,2a62 <sharedfd+0x24c>
    2a58:	4501                	li	a0,0
    2a5a:	00005097          	auipc	ra,0x5
    2a5e:	e4e080e7          	jalr	-434(ra) # 78a8 <exit>
    2a62:	fb843583          	ld	a1,-72(s0)
    2a66:	00006517          	auipc	a0,0x6
    2a6a:	1aa50513          	addi	a0,a0,426 # 8c10 <malloc+0xc26>
    2a6e:	00005097          	auipc	ra,0x5
    2a72:	38a080e7          	jalr	906(ra) # 7df8 <printf>
    2a76:	4505                	li	a0,1
    2a78:	00005097          	auipc	ra,0x5
    2a7c:	e30080e7          	jalr	-464(ra) # 78a8 <exit>

0000000000002a80 <fourfiles>:
    2a80:	7159                	addi	sp,sp,-112
    2a82:	f486                	sd	ra,104(sp)
    2a84:	f0a2                	sd	s0,96(sp)
    2a86:	1880                	addi	s0,sp,112
    2a88:	f8a43c23          	sd	a0,-104(s0)
    2a8c:	00006797          	auipc	a5,0x6
    2a90:	20c78793          	addi	a5,a5,524 # 8c98 <malloc+0xcae>
    2a94:	6390                	ld	a2,0(a5)
    2a96:	6794                	ld	a3,8(a5)
    2a98:	6b98                	ld	a4,16(a5)
    2a9a:	6f9c                	ld	a5,24(a5)
    2a9c:	fac43423          	sd	a2,-88(s0)
    2aa0:	fad43823          	sd	a3,-80(s0)
    2aa4:	fae43c23          	sd	a4,-72(s0)
    2aa8:	fcf43023          	sd	a5,-64(s0)
    2aac:	fe042023          	sw	zero,-32(s0)
    2ab0:	aa3d                	j	2bee <fourfiles+0x16e>
    2ab2:	fe042783          	lw	a5,-32(s0)
    2ab6:	078e                	slli	a5,a5,0x3
    2ab8:	17c1                	addi	a5,a5,-16
    2aba:	97a2                	add	a5,a5,s0
    2abc:	fb87b783          	ld	a5,-72(a5)
    2ac0:	fcf43c23          	sd	a5,-40(s0)
    2ac4:	fd843503          	ld	a0,-40(s0)
    2ac8:	00005097          	auipc	ra,0x5
    2acc:	e30080e7          	jalr	-464(ra) # 78f8 <unlink>
    2ad0:	00005097          	auipc	ra,0x5
    2ad4:	dd0080e7          	jalr	-560(ra) # 78a0 <fork>
    2ad8:	87aa                	mv	a5,a0
    2ada:	fcf42623          	sw	a5,-52(s0)
    2ade:	fcc42783          	lw	a5,-52(s0)
    2ae2:	2781                	sext.w	a5,a5
    2ae4:	0207d163          	bgez	a5,2b06 <fourfiles+0x86>
    2ae8:	f9843583          	ld	a1,-104(s0)
    2aec:	00006517          	auipc	a0,0x6
    2af0:	85450513          	addi	a0,a0,-1964 # 8340 <malloc+0x356>
    2af4:	00005097          	auipc	ra,0x5
    2af8:	304080e7          	jalr	772(ra) # 7df8 <printf>
    2afc:	4505                	li	a0,1
    2afe:	00005097          	auipc	ra,0x5
    2b02:	daa080e7          	jalr	-598(ra) # 78a8 <exit>
    2b06:	fcc42783          	lw	a5,-52(s0)
    2b0a:	2781                	sext.w	a5,a5
    2b0c:	efe1                	bnez	a5,2be4 <fourfiles+0x164>
    2b0e:	20200593          	li	a1,514
    2b12:	fd843503          	ld	a0,-40(s0)
    2b16:	00005097          	auipc	ra,0x5
    2b1a:	dd2080e7          	jalr	-558(ra) # 78e8 <open>
    2b1e:	87aa                	mv	a5,a0
    2b20:	fcf42a23          	sw	a5,-44(s0)
    2b24:	fd442783          	lw	a5,-44(s0)
    2b28:	2781                	sext.w	a5,a5
    2b2a:	0207d163          	bgez	a5,2b4c <fourfiles+0xcc>
    2b2e:	f9843583          	ld	a1,-104(s0)
    2b32:	00006517          	auipc	a0,0x6
    2b36:	0f650513          	addi	a0,a0,246 # 8c28 <malloc+0xc3e>
    2b3a:	00005097          	auipc	ra,0x5
    2b3e:	2be080e7          	jalr	702(ra) # 7df8 <printf>
    2b42:	4505                	li	a0,1
    2b44:	00005097          	auipc	ra,0x5
    2b48:	d64080e7          	jalr	-668(ra) # 78a8 <exit>
    2b4c:	fe042783          	lw	a5,-32(s0)
    2b50:	0307879b          	addiw	a5,a5,48
    2b54:	2781                	sext.w	a5,a5
    2b56:	1f400613          	li	a2,500
    2b5a:	85be                	mv	a1,a5
    2b5c:	00009517          	auipc	a0,0x9
    2b60:	91450513          	addi	a0,a0,-1772 # b470 <buf>
    2b64:	00005097          	auipc	ra,0x5
    2b68:	998080e7          	jalr	-1640(ra) # 74fc <memset>
    2b6c:	fe042623          	sw	zero,-20(s0)
    2b70:	a8b1                	j	2bcc <fourfiles+0x14c>
    2b72:	fd442783          	lw	a5,-44(s0)
    2b76:	1f400613          	li	a2,500
    2b7a:	00009597          	auipc	a1,0x9
    2b7e:	8f658593          	addi	a1,a1,-1802 # b470 <buf>
    2b82:	853e                	mv	a0,a5
    2b84:	00005097          	auipc	ra,0x5
    2b88:	d44080e7          	jalr	-700(ra) # 78c8 <write>
    2b8c:	87aa                	mv	a5,a0
    2b8e:	fcf42823          	sw	a5,-48(s0)
    2b92:	fd042783          	lw	a5,-48(s0)
    2b96:	0007871b          	sext.w	a4,a5
    2b9a:	1f400793          	li	a5,500
    2b9e:	02f70263          	beq	a4,a5,2bc2 <fourfiles+0x142>
    2ba2:	fd042783          	lw	a5,-48(s0)
    2ba6:	85be                	mv	a1,a5
    2ba8:	00006517          	auipc	a0,0x6
    2bac:	09050513          	addi	a0,a0,144 # 8c38 <malloc+0xc4e>
    2bb0:	00005097          	auipc	ra,0x5
    2bb4:	248080e7          	jalr	584(ra) # 7df8 <printf>
    2bb8:	4505                	li	a0,1
    2bba:	00005097          	auipc	ra,0x5
    2bbe:	cee080e7          	jalr	-786(ra) # 78a8 <exit>
    2bc2:	fec42783          	lw	a5,-20(s0)
    2bc6:	2785                	addiw	a5,a5,1
    2bc8:	fef42623          	sw	a5,-20(s0)
    2bcc:	fec42783          	lw	a5,-20(s0)
    2bd0:	0007871b          	sext.w	a4,a5
    2bd4:	47ad                	li	a5,11
    2bd6:	f8e7dee3          	bge	a5,a4,2b72 <fourfiles+0xf2>
    2bda:	4501                	li	a0,0
    2bdc:	00005097          	auipc	ra,0x5
    2be0:	ccc080e7          	jalr	-820(ra) # 78a8 <exit>
    2be4:	fe042783          	lw	a5,-32(s0)
    2be8:	2785                	addiw	a5,a5,1
    2bea:	fef42023          	sw	a5,-32(s0)
    2bee:	fe042783          	lw	a5,-32(s0)
    2bf2:	0007871b          	sext.w	a4,a5
    2bf6:	478d                	li	a5,3
    2bf8:	eae7dde3          	bge	a5,a4,2ab2 <fourfiles+0x32>
    2bfc:	fe042023          	sw	zero,-32(s0)
    2c00:	a03d                	j	2c2e <fourfiles+0x1ae>
    2c02:	fa440793          	addi	a5,s0,-92
    2c06:	853e                	mv	a0,a5
    2c08:	00005097          	auipc	ra,0x5
    2c0c:	ca8080e7          	jalr	-856(ra) # 78b0 <wait>
    2c10:	fa442783          	lw	a5,-92(s0)
    2c14:	cb81                	beqz	a5,2c24 <fourfiles+0x1a4>
    2c16:	fa442783          	lw	a5,-92(s0)
    2c1a:	853e                	mv	a0,a5
    2c1c:	00005097          	auipc	ra,0x5
    2c20:	c8c080e7          	jalr	-884(ra) # 78a8 <exit>
    2c24:	fe042783          	lw	a5,-32(s0)
    2c28:	2785                	addiw	a5,a5,1
    2c2a:	fef42023          	sw	a5,-32(s0)
    2c2e:	fe042783          	lw	a5,-32(s0)
    2c32:	0007871b          	sext.w	a4,a5
    2c36:	478d                	li	a5,3
    2c38:	fce7d5e3          	bge	a5,a4,2c02 <fourfiles+0x182>
    2c3c:	fe042623          	sw	zero,-20(s0)
    2c40:	a205                	j	2d60 <fourfiles+0x2e0>
    2c42:	fec42783          	lw	a5,-20(s0)
    2c46:	078e                	slli	a5,a5,0x3
    2c48:	17c1                	addi	a5,a5,-16
    2c4a:	97a2                	add	a5,a5,s0
    2c4c:	fb87b783          	ld	a5,-72(a5)
    2c50:	fcf43c23          	sd	a5,-40(s0)
    2c54:	4581                	li	a1,0
    2c56:	fd843503          	ld	a0,-40(s0)
    2c5a:	00005097          	auipc	ra,0x5
    2c5e:	c8e080e7          	jalr	-882(ra) # 78e8 <open>
    2c62:	87aa                	mv	a5,a0
    2c64:	fcf42a23          	sw	a5,-44(s0)
    2c68:	fe042223          	sw	zero,-28(s0)
    2c6c:	a89d                	j	2ce2 <fourfiles+0x262>
    2c6e:	fe042423          	sw	zero,-24(s0)
    2c72:	a0b9                	j	2cc0 <fourfiles+0x240>
    2c74:	00008717          	auipc	a4,0x8
    2c78:	7fc70713          	addi	a4,a4,2044 # b470 <buf>
    2c7c:	fe842783          	lw	a5,-24(s0)
    2c80:	97ba                	add	a5,a5,a4
    2c82:	0007c783          	lbu	a5,0(a5)
    2c86:	0007871b          	sext.w	a4,a5
    2c8a:	fec42783          	lw	a5,-20(s0)
    2c8e:	0307879b          	addiw	a5,a5,48
    2c92:	2781                	sext.w	a5,a5
    2c94:	02f70163          	beq	a4,a5,2cb6 <fourfiles+0x236>
    2c98:	f9843583          	ld	a1,-104(s0)
    2c9c:	00006517          	auipc	a0,0x6
    2ca0:	fb450513          	addi	a0,a0,-76 # 8c50 <malloc+0xc66>
    2ca4:	00005097          	auipc	ra,0x5
    2ca8:	154080e7          	jalr	340(ra) # 7df8 <printf>
    2cac:	4505                	li	a0,1
    2cae:	00005097          	auipc	ra,0x5
    2cb2:	bfa080e7          	jalr	-1030(ra) # 78a8 <exit>
    2cb6:	fe842783          	lw	a5,-24(s0)
    2cba:	2785                	addiw	a5,a5,1
    2cbc:	fef42423          	sw	a5,-24(s0)
    2cc0:	fe842783          	lw	a5,-24(s0)
    2cc4:	873e                	mv	a4,a5
    2cc6:	fd042783          	lw	a5,-48(s0)
    2cca:	2701                	sext.w	a4,a4
    2ccc:	2781                	sext.w	a5,a5
    2cce:	faf743e3          	blt	a4,a5,2c74 <fourfiles+0x1f4>
    2cd2:	fe442783          	lw	a5,-28(s0)
    2cd6:	873e                	mv	a4,a5
    2cd8:	fd042783          	lw	a5,-48(s0)
    2cdc:	9fb9                	addw	a5,a5,a4
    2cde:	fef42223          	sw	a5,-28(s0)
    2ce2:	fd442783          	lw	a5,-44(s0)
    2ce6:	660d                	lui	a2,0x3
    2ce8:	00008597          	auipc	a1,0x8
    2cec:	78858593          	addi	a1,a1,1928 # b470 <buf>
    2cf0:	853e                	mv	a0,a5
    2cf2:	00005097          	auipc	ra,0x5
    2cf6:	bce080e7          	jalr	-1074(ra) # 78c0 <read>
    2cfa:	87aa                	mv	a5,a0
    2cfc:	fcf42823          	sw	a5,-48(s0)
    2d00:	fd042783          	lw	a5,-48(s0)
    2d04:	2781                	sext.w	a5,a5
    2d06:	f6f044e3          	bgtz	a5,2c6e <fourfiles+0x1ee>
    2d0a:	fd442783          	lw	a5,-44(s0)
    2d0e:	853e                	mv	a0,a5
    2d10:	00005097          	auipc	ra,0x5
    2d14:	bc0080e7          	jalr	-1088(ra) # 78d0 <close>
    2d18:	fe442783          	lw	a5,-28(s0)
    2d1c:	0007871b          	sext.w	a4,a5
    2d20:	6785                	lui	a5,0x1
    2d22:	77078793          	addi	a5,a5,1904 # 1770 <writebig+0x12c>
    2d26:	02f70263          	beq	a4,a5,2d4a <fourfiles+0x2ca>
    2d2a:	fe442783          	lw	a5,-28(s0)
    2d2e:	85be                	mv	a1,a5
    2d30:	00006517          	auipc	a0,0x6
    2d34:	f3050513          	addi	a0,a0,-208 # 8c60 <malloc+0xc76>
    2d38:	00005097          	auipc	ra,0x5
    2d3c:	0c0080e7          	jalr	192(ra) # 7df8 <printf>
    2d40:	4505                	li	a0,1
    2d42:	00005097          	auipc	ra,0x5
    2d46:	b66080e7          	jalr	-1178(ra) # 78a8 <exit>
    2d4a:	fd843503          	ld	a0,-40(s0)
    2d4e:	00005097          	auipc	ra,0x5
    2d52:	baa080e7          	jalr	-1110(ra) # 78f8 <unlink>
    2d56:	fec42783          	lw	a5,-20(s0)
    2d5a:	2785                	addiw	a5,a5,1
    2d5c:	fef42623          	sw	a5,-20(s0)
    2d60:	fec42783          	lw	a5,-20(s0)
    2d64:	0007871b          	sext.w	a4,a5
    2d68:	478d                	li	a5,3
    2d6a:	ece7dce3          	bge	a5,a4,2c42 <fourfiles+0x1c2>
    2d6e:	0001                	nop
    2d70:	0001                	nop
    2d72:	70a6                	ld	ra,104(sp)
    2d74:	7406                	ld	s0,96(sp)
    2d76:	6165                	addi	sp,sp,112
    2d78:	8082                	ret

0000000000002d7a <createdelete>:
    2d7a:	711d                	addi	sp,sp,-96
    2d7c:	ec86                	sd	ra,88(sp)
    2d7e:	e8a2                	sd	s0,80(sp)
    2d80:	1080                	addi	s0,sp,96
    2d82:	faa43423          	sd	a0,-88(s0)
    2d86:	fe042423          	sw	zero,-24(s0)
    2d8a:	aa91                	j	2ede <createdelete+0x164>
    2d8c:	00005097          	auipc	ra,0x5
    2d90:	b14080e7          	jalr	-1260(ra) # 78a0 <fork>
    2d94:	87aa                	mv	a5,a0
    2d96:	fef42023          	sw	a5,-32(s0)
    2d9a:	fe042783          	lw	a5,-32(s0)
    2d9e:	2781                	sext.w	a5,a5
    2da0:	0207d163          	bgez	a5,2dc2 <createdelete+0x48>
    2da4:	fa843583          	ld	a1,-88(s0)
    2da8:	00005517          	auipc	a0,0x5
    2dac:	59850513          	addi	a0,a0,1432 # 8340 <malloc+0x356>
    2db0:	00005097          	auipc	ra,0x5
    2db4:	048080e7          	jalr	72(ra) # 7df8 <printf>
    2db8:	4505                	li	a0,1
    2dba:	00005097          	auipc	ra,0x5
    2dbe:	aee080e7          	jalr	-1298(ra) # 78a8 <exit>
    2dc2:	fe042783          	lw	a5,-32(s0)
    2dc6:	2781                	sext.w	a5,a5
    2dc8:	10079663          	bnez	a5,2ed4 <createdelete+0x15a>
    2dcc:	fe842783          	lw	a5,-24(s0)
    2dd0:	0ff7f793          	zext.b	a5,a5
    2dd4:	0707879b          	addiw	a5,a5,112
    2dd8:	0ff7f793          	zext.b	a5,a5
    2ddc:	fcf40023          	sb	a5,-64(s0)
    2de0:	fc040123          	sb	zero,-62(s0)
    2de4:	fe042623          	sw	zero,-20(s0)
    2de8:	a8d1                	j	2ebc <createdelete+0x142>
    2dea:	fec42783          	lw	a5,-20(s0)
    2dee:	0ff7f793          	zext.b	a5,a5
    2df2:	0307879b          	addiw	a5,a5,48
    2df6:	0ff7f793          	zext.b	a5,a5
    2dfa:	fcf400a3          	sb	a5,-63(s0)
    2dfe:	fc040793          	addi	a5,s0,-64
    2e02:	20200593          	li	a1,514
    2e06:	853e                	mv	a0,a5
    2e08:	00005097          	auipc	ra,0x5
    2e0c:	ae0080e7          	jalr	-1312(ra) # 78e8 <open>
    2e10:	87aa                	mv	a5,a0
    2e12:	fef42223          	sw	a5,-28(s0)
    2e16:	fe442783          	lw	a5,-28(s0)
    2e1a:	2781                	sext.w	a5,a5
    2e1c:	0207d163          	bgez	a5,2e3e <createdelete+0xc4>
    2e20:	fa843583          	ld	a1,-88(s0)
    2e24:	00006517          	auipc	a0,0x6
    2e28:	b7450513          	addi	a0,a0,-1164 # 8998 <malloc+0x9ae>
    2e2c:	00005097          	auipc	ra,0x5
    2e30:	fcc080e7          	jalr	-52(ra) # 7df8 <printf>
    2e34:	4505                	li	a0,1
    2e36:	00005097          	auipc	ra,0x5
    2e3a:	a72080e7          	jalr	-1422(ra) # 78a8 <exit>
    2e3e:	fe442783          	lw	a5,-28(s0)
    2e42:	853e                	mv	a0,a5
    2e44:	00005097          	auipc	ra,0x5
    2e48:	a8c080e7          	jalr	-1396(ra) # 78d0 <close>
    2e4c:	fec42783          	lw	a5,-20(s0)
    2e50:	2781                	sext.w	a5,a5
    2e52:	06f05063          	blez	a5,2eb2 <createdelete+0x138>
    2e56:	fec42783          	lw	a5,-20(s0)
    2e5a:	8b85                	andi	a5,a5,1
    2e5c:	2781                	sext.w	a5,a5
    2e5e:	ebb1                	bnez	a5,2eb2 <createdelete+0x138>
    2e60:	fec42783          	lw	a5,-20(s0)
    2e64:	01f7d71b          	srliw	a4,a5,0x1f
    2e68:	9fb9                	addw	a5,a5,a4
    2e6a:	4017d79b          	sraiw	a5,a5,0x1
    2e6e:	2781                	sext.w	a5,a5
    2e70:	0ff7f793          	zext.b	a5,a5
    2e74:	0307879b          	addiw	a5,a5,48
    2e78:	0ff7f793          	zext.b	a5,a5
    2e7c:	fcf400a3          	sb	a5,-63(s0)
    2e80:	fc040793          	addi	a5,s0,-64
    2e84:	853e                	mv	a0,a5
    2e86:	00005097          	auipc	ra,0x5
    2e8a:	a72080e7          	jalr	-1422(ra) # 78f8 <unlink>
    2e8e:	87aa                	mv	a5,a0
    2e90:	0207d163          	bgez	a5,2eb2 <createdelete+0x138>
    2e94:	fa843583          	ld	a1,-88(s0)
    2e98:	00006517          	auipc	a0,0x6
    2e9c:	85050513          	addi	a0,a0,-1968 # 86e8 <malloc+0x6fe>
    2ea0:	00005097          	auipc	ra,0x5
    2ea4:	f58080e7          	jalr	-168(ra) # 7df8 <printf>
    2ea8:	4505                	li	a0,1
    2eaa:	00005097          	auipc	ra,0x5
    2eae:	9fe080e7          	jalr	-1538(ra) # 78a8 <exit>
    2eb2:	fec42783          	lw	a5,-20(s0)
    2eb6:	2785                	addiw	a5,a5,1
    2eb8:	fef42623          	sw	a5,-20(s0)
    2ebc:	fec42783          	lw	a5,-20(s0)
    2ec0:	0007871b          	sext.w	a4,a5
    2ec4:	47cd                	li	a5,19
    2ec6:	f2e7d2e3          	bge	a5,a4,2dea <createdelete+0x70>
    2eca:	4501                	li	a0,0
    2ecc:	00005097          	auipc	ra,0x5
    2ed0:	9dc080e7          	jalr	-1572(ra) # 78a8 <exit>
    2ed4:	fe842783          	lw	a5,-24(s0)
    2ed8:	2785                	addiw	a5,a5,1
    2eda:	fef42423          	sw	a5,-24(s0)
    2ede:	fe842783          	lw	a5,-24(s0)
    2ee2:	0007871b          	sext.w	a4,a5
    2ee6:	478d                	li	a5,3
    2ee8:	eae7d2e3          	bge	a5,a4,2d8c <createdelete+0x12>
    2eec:	fe042423          	sw	zero,-24(s0)
    2ef0:	a02d                	j	2f1a <createdelete+0x1a0>
    2ef2:	fbc40793          	addi	a5,s0,-68
    2ef6:	853e                	mv	a0,a5
    2ef8:	00005097          	auipc	ra,0x5
    2efc:	9b8080e7          	jalr	-1608(ra) # 78b0 <wait>
    2f00:	fbc42783          	lw	a5,-68(s0)
    2f04:	c791                	beqz	a5,2f10 <createdelete+0x196>
    2f06:	4505                	li	a0,1
    2f08:	00005097          	auipc	ra,0x5
    2f0c:	9a0080e7          	jalr	-1632(ra) # 78a8 <exit>
    2f10:	fe842783          	lw	a5,-24(s0)
    2f14:	2785                	addiw	a5,a5,1
    2f16:	fef42423          	sw	a5,-24(s0)
    2f1a:	fe842783          	lw	a5,-24(s0)
    2f1e:	0007871b          	sext.w	a4,a5
    2f22:	478d                	li	a5,3
    2f24:	fce7d7e3          	bge	a5,a4,2ef2 <createdelete+0x178>
    2f28:	fc040123          	sb	zero,-62(s0)
    2f2c:	fc244783          	lbu	a5,-62(s0)
    2f30:	fcf400a3          	sb	a5,-63(s0)
    2f34:	fc144783          	lbu	a5,-63(s0)
    2f38:	fcf40023          	sb	a5,-64(s0)
    2f3c:	fe042623          	sw	zero,-20(s0)
    2f40:	a229                	j	304a <createdelete+0x2d0>
    2f42:	fe042423          	sw	zero,-24(s0)
    2f46:	a0f5                	j	3032 <createdelete+0x2b8>
    2f48:	fe842783          	lw	a5,-24(s0)
    2f4c:	0ff7f793          	zext.b	a5,a5
    2f50:	0707879b          	addiw	a5,a5,112
    2f54:	0ff7f793          	zext.b	a5,a5
    2f58:	fcf40023          	sb	a5,-64(s0)
    2f5c:	fec42783          	lw	a5,-20(s0)
    2f60:	0ff7f793          	zext.b	a5,a5
    2f64:	0307879b          	addiw	a5,a5,48
    2f68:	0ff7f793          	zext.b	a5,a5
    2f6c:	fcf400a3          	sb	a5,-63(s0)
    2f70:	fc040793          	addi	a5,s0,-64
    2f74:	4581                	li	a1,0
    2f76:	853e                	mv	a0,a5
    2f78:	00005097          	auipc	ra,0x5
    2f7c:	970080e7          	jalr	-1680(ra) # 78e8 <open>
    2f80:	87aa                	mv	a5,a0
    2f82:	fef42223          	sw	a5,-28(s0)
    2f86:	fec42783          	lw	a5,-20(s0)
    2f8a:	2781                	sext.w	a5,a5
    2f8c:	cb81                	beqz	a5,2f9c <createdelete+0x222>
    2f8e:	fec42783          	lw	a5,-20(s0)
    2f92:	0007871b          	sext.w	a4,a5
    2f96:	47a5                	li	a5,9
    2f98:	02e7d963          	bge	a5,a4,2fca <createdelete+0x250>
    2f9c:	fe442783          	lw	a5,-28(s0)
    2fa0:	2781                	sext.w	a5,a5
    2fa2:	0207d463          	bgez	a5,2fca <createdelete+0x250>
    2fa6:	fc040793          	addi	a5,s0,-64
    2faa:	863e                	mv	a2,a5
    2fac:	fa843583          	ld	a1,-88(s0)
    2fb0:	00006517          	auipc	a0,0x6
    2fb4:	d0850513          	addi	a0,a0,-760 # 8cb8 <malloc+0xcce>
    2fb8:	00005097          	auipc	ra,0x5
    2fbc:	e40080e7          	jalr	-448(ra) # 7df8 <printf>
    2fc0:	4505                	li	a0,1
    2fc2:	00005097          	auipc	ra,0x5
    2fc6:	8e6080e7          	jalr	-1818(ra) # 78a8 <exit>
    2fca:	fec42783          	lw	a5,-20(s0)
    2fce:	2781                	sext.w	a5,a5
    2fd0:	04f05063          	blez	a5,3010 <createdelete+0x296>
    2fd4:	fec42783          	lw	a5,-20(s0)
    2fd8:	0007871b          	sext.w	a4,a5
    2fdc:	47a5                	li	a5,9
    2fde:	02e7c963          	blt	a5,a4,3010 <createdelete+0x296>
    2fe2:	fe442783          	lw	a5,-28(s0)
    2fe6:	2781                	sext.w	a5,a5
    2fe8:	0207c463          	bltz	a5,3010 <createdelete+0x296>
    2fec:	fc040793          	addi	a5,s0,-64
    2ff0:	863e                	mv	a2,a5
    2ff2:	fa843583          	ld	a1,-88(s0)
    2ff6:	00006517          	auipc	a0,0x6
    2ffa:	cea50513          	addi	a0,a0,-790 # 8ce0 <malloc+0xcf6>
    2ffe:	00005097          	auipc	ra,0x5
    3002:	dfa080e7          	jalr	-518(ra) # 7df8 <printf>
    3006:	4505                	li	a0,1
    3008:	00005097          	auipc	ra,0x5
    300c:	8a0080e7          	jalr	-1888(ra) # 78a8 <exit>
    3010:	fe442783          	lw	a5,-28(s0)
    3014:	2781                	sext.w	a5,a5
    3016:	0007c963          	bltz	a5,3028 <createdelete+0x2ae>
    301a:	fe442783          	lw	a5,-28(s0)
    301e:	853e                	mv	a0,a5
    3020:	00005097          	auipc	ra,0x5
    3024:	8b0080e7          	jalr	-1872(ra) # 78d0 <close>
    3028:	fe842783          	lw	a5,-24(s0)
    302c:	2785                	addiw	a5,a5,1
    302e:	fef42423          	sw	a5,-24(s0)
    3032:	fe842783          	lw	a5,-24(s0)
    3036:	0007871b          	sext.w	a4,a5
    303a:	478d                	li	a5,3
    303c:	f0e7d6e3          	bge	a5,a4,2f48 <createdelete+0x1ce>
    3040:	fec42783          	lw	a5,-20(s0)
    3044:	2785                	addiw	a5,a5,1
    3046:	fef42623          	sw	a5,-20(s0)
    304a:	fec42783          	lw	a5,-20(s0)
    304e:	0007871b          	sext.w	a4,a5
    3052:	47cd                	li	a5,19
    3054:	eee7d7e3          	bge	a5,a4,2f42 <createdelete+0x1c8>
    3058:	fe042623          	sw	zero,-20(s0)
    305c:	a085                	j	30bc <createdelete+0x342>
    305e:	fe042423          	sw	zero,-24(s0)
    3062:	a089                	j	30a4 <createdelete+0x32a>
    3064:	fec42783          	lw	a5,-20(s0)
    3068:	0ff7f793          	zext.b	a5,a5
    306c:	0707879b          	addiw	a5,a5,112
    3070:	0ff7f793          	zext.b	a5,a5
    3074:	fcf40023          	sb	a5,-64(s0)
    3078:	fec42783          	lw	a5,-20(s0)
    307c:	0ff7f793          	zext.b	a5,a5
    3080:	0307879b          	addiw	a5,a5,48
    3084:	0ff7f793          	zext.b	a5,a5
    3088:	fcf400a3          	sb	a5,-63(s0)
    308c:	fc040793          	addi	a5,s0,-64
    3090:	853e                	mv	a0,a5
    3092:	00005097          	auipc	ra,0x5
    3096:	866080e7          	jalr	-1946(ra) # 78f8 <unlink>
    309a:	fe842783          	lw	a5,-24(s0)
    309e:	2785                	addiw	a5,a5,1
    30a0:	fef42423          	sw	a5,-24(s0)
    30a4:	fe842783          	lw	a5,-24(s0)
    30a8:	0007871b          	sext.w	a4,a5
    30ac:	478d                	li	a5,3
    30ae:	fae7dbe3          	bge	a5,a4,3064 <createdelete+0x2ea>
    30b2:	fec42783          	lw	a5,-20(s0)
    30b6:	2785                	addiw	a5,a5,1
    30b8:	fef42623          	sw	a5,-20(s0)
    30bc:	fec42783          	lw	a5,-20(s0)
    30c0:	0007871b          	sext.w	a4,a5
    30c4:	47cd                	li	a5,19
    30c6:	f8e7dce3          	bge	a5,a4,305e <createdelete+0x2e4>
    30ca:	0001                	nop
    30cc:	0001                	nop
    30ce:	60e6                	ld	ra,88(sp)
    30d0:	6446                	ld	s0,80(sp)
    30d2:	6125                	addi	sp,sp,96
    30d4:	8082                	ret

00000000000030d6 <unlinkread>:
    30d6:	7179                	addi	sp,sp,-48
    30d8:	f406                	sd	ra,40(sp)
    30da:	f022                	sd	s0,32(sp)
    30dc:	1800                	addi	s0,sp,48
    30de:	fca43c23          	sd	a0,-40(s0)
    30e2:	20200593          	li	a1,514
    30e6:	00006517          	auipc	a0,0x6
    30ea:	c2250513          	addi	a0,a0,-990 # 8d08 <malloc+0xd1e>
    30ee:	00004097          	auipc	ra,0x4
    30f2:	7fa080e7          	jalr	2042(ra) # 78e8 <open>
    30f6:	87aa                	mv	a5,a0
    30f8:	fef42623          	sw	a5,-20(s0)
    30fc:	fec42783          	lw	a5,-20(s0)
    3100:	2781                	sext.w	a5,a5
    3102:	0207d163          	bgez	a5,3124 <unlinkread+0x4e>
    3106:	fd843583          	ld	a1,-40(s0)
    310a:	00006517          	auipc	a0,0x6
    310e:	c0e50513          	addi	a0,a0,-1010 # 8d18 <malloc+0xd2e>
    3112:	00005097          	auipc	ra,0x5
    3116:	ce6080e7          	jalr	-794(ra) # 7df8 <printf>
    311a:	4505                	li	a0,1
    311c:	00004097          	auipc	ra,0x4
    3120:	78c080e7          	jalr	1932(ra) # 78a8 <exit>
    3124:	fec42783          	lw	a5,-20(s0)
    3128:	4615                	li	a2,5
    312a:	00006597          	auipc	a1,0x6
    312e:	c0e58593          	addi	a1,a1,-1010 # 8d38 <malloc+0xd4e>
    3132:	853e                	mv	a0,a5
    3134:	00004097          	auipc	ra,0x4
    3138:	794080e7          	jalr	1940(ra) # 78c8 <write>
    313c:	fec42783          	lw	a5,-20(s0)
    3140:	853e                	mv	a0,a5
    3142:	00004097          	auipc	ra,0x4
    3146:	78e080e7          	jalr	1934(ra) # 78d0 <close>
    314a:	4589                	li	a1,2
    314c:	00006517          	auipc	a0,0x6
    3150:	bbc50513          	addi	a0,a0,-1092 # 8d08 <malloc+0xd1e>
    3154:	00004097          	auipc	ra,0x4
    3158:	794080e7          	jalr	1940(ra) # 78e8 <open>
    315c:	87aa                	mv	a5,a0
    315e:	fef42623          	sw	a5,-20(s0)
    3162:	fec42783          	lw	a5,-20(s0)
    3166:	2781                	sext.w	a5,a5
    3168:	0207d163          	bgez	a5,318a <unlinkread+0xb4>
    316c:	fd843583          	ld	a1,-40(s0)
    3170:	00006517          	auipc	a0,0x6
    3174:	bd050513          	addi	a0,a0,-1072 # 8d40 <malloc+0xd56>
    3178:	00005097          	auipc	ra,0x5
    317c:	c80080e7          	jalr	-896(ra) # 7df8 <printf>
    3180:	4505                	li	a0,1
    3182:	00004097          	auipc	ra,0x4
    3186:	726080e7          	jalr	1830(ra) # 78a8 <exit>
    318a:	00006517          	auipc	a0,0x6
    318e:	b7e50513          	addi	a0,a0,-1154 # 8d08 <malloc+0xd1e>
    3192:	00004097          	auipc	ra,0x4
    3196:	766080e7          	jalr	1894(ra) # 78f8 <unlink>
    319a:	87aa                	mv	a5,a0
    319c:	c385                	beqz	a5,31bc <unlinkread+0xe6>
    319e:	fd843583          	ld	a1,-40(s0)
    31a2:	00006517          	auipc	a0,0x6
    31a6:	bbe50513          	addi	a0,a0,-1090 # 8d60 <malloc+0xd76>
    31aa:	00005097          	auipc	ra,0x5
    31ae:	c4e080e7          	jalr	-946(ra) # 7df8 <printf>
    31b2:	4505                	li	a0,1
    31b4:	00004097          	auipc	ra,0x4
    31b8:	6f4080e7          	jalr	1780(ra) # 78a8 <exit>
    31bc:	20200593          	li	a1,514
    31c0:	00006517          	auipc	a0,0x6
    31c4:	b4850513          	addi	a0,a0,-1208 # 8d08 <malloc+0xd1e>
    31c8:	00004097          	auipc	ra,0x4
    31cc:	720080e7          	jalr	1824(ra) # 78e8 <open>
    31d0:	87aa                	mv	a5,a0
    31d2:	fef42423          	sw	a5,-24(s0)
    31d6:	fe842783          	lw	a5,-24(s0)
    31da:	460d                	li	a2,3
    31dc:	00006597          	auipc	a1,0x6
    31e0:	ba458593          	addi	a1,a1,-1116 # 8d80 <malloc+0xd96>
    31e4:	853e                	mv	a0,a5
    31e6:	00004097          	auipc	ra,0x4
    31ea:	6e2080e7          	jalr	1762(ra) # 78c8 <write>
    31ee:	fe842783          	lw	a5,-24(s0)
    31f2:	853e                	mv	a0,a5
    31f4:	00004097          	auipc	ra,0x4
    31f8:	6dc080e7          	jalr	1756(ra) # 78d0 <close>
    31fc:	fec42783          	lw	a5,-20(s0)
    3200:	660d                	lui	a2,0x3
    3202:	00008597          	auipc	a1,0x8
    3206:	26e58593          	addi	a1,a1,622 # b470 <buf>
    320a:	853e                	mv	a0,a5
    320c:	00004097          	auipc	ra,0x4
    3210:	6b4080e7          	jalr	1716(ra) # 78c0 <read>
    3214:	87aa                	mv	a5,a0
    3216:	873e                	mv	a4,a5
    3218:	4795                	li	a5,5
    321a:	02f70163          	beq	a4,a5,323c <unlinkread+0x166>
    321e:	fd843583          	ld	a1,-40(s0)
    3222:	00006517          	auipc	a0,0x6
    3226:	b6650513          	addi	a0,a0,-1178 # 8d88 <malloc+0xd9e>
    322a:	00005097          	auipc	ra,0x5
    322e:	bce080e7          	jalr	-1074(ra) # 7df8 <printf>
    3232:	4505                	li	a0,1
    3234:	00004097          	auipc	ra,0x4
    3238:	674080e7          	jalr	1652(ra) # 78a8 <exit>
    323c:	00008797          	auipc	a5,0x8
    3240:	23478793          	addi	a5,a5,564 # b470 <buf>
    3244:	0007c783          	lbu	a5,0(a5)
    3248:	873e                	mv	a4,a5
    324a:	06800793          	li	a5,104
    324e:	02f70163          	beq	a4,a5,3270 <unlinkread+0x19a>
    3252:	fd843583          	ld	a1,-40(s0)
    3256:	00006517          	auipc	a0,0x6
    325a:	b5250513          	addi	a0,a0,-1198 # 8da8 <malloc+0xdbe>
    325e:	00005097          	auipc	ra,0x5
    3262:	b9a080e7          	jalr	-1126(ra) # 7df8 <printf>
    3266:	4505                	li	a0,1
    3268:	00004097          	auipc	ra,0x4
    326c:	640080e7          	jalr	1600(ra) # 78a8 <exit>
    3270:	fec42783          	lw	a5,-20(s0)
    3274:	4629                	li	a2,10
    3276:	00008597          	auipc	a1,0x8
    327a:	1fa58593          	addi	a1,a1,506 # b470 <buf>
    327e:	853e                	mv	a0,a5
    3280:	00004097          	auipc	ra,0x4
    3284:	648080e7          	jalr	1608(ra) # 78c8 <write>
    3288:	87aa                	mv	a5,a0
    328a:	873e                	mv	a4,a5
    328c:	47a9                	li	a5,10
    328e:	02f70163          	beq	a4,a5,32b0 <unlinkread+0x1da>
    3292:	fd843583          	ld	a1,-40(s0)
    3296:	00006517          	auipc	a0,0x6
    329a:	b3250513          	addi	a0,a0,-1230 # 8dc8 <malloc+0xdde>
    329e:	00005097          	auipc	ra,0x5
    32a2:	b5a080e7          	jalr	-1190(ra) # 7df8 <printf>
    32a6:	4505                	li	a0,1
    32a8:	00004097          	auipc	ra,0x4
    32ac:	600080e7          	jalr	1536(ra) # 78a8 <exit>
    32b0:	fec42783          	lw	a5,-20(s0)
    32b4:	853e                	mv	a0,a5
    32b6:	00004097          	auipc	ra,0x4
    32ba:	61a080e7          	jalr	1562(ra) # 78d0 <close>
    32be:	00006517          	auipc	a0,0x6
    32c2:	a4a50513          	addi	a0,a0,-1462 # 8d08 <malloc+0xd1e>
    32c6:	00004097          	auipc	ra,0x4
    32ca:	632080e7          	jalr	1586(ra) # 78f8 <unlink>
    32ce:	0001                	nop
    32d0:	70a2                	ld	ra,40(sp)
    32d2:	7402                	ld	s0,32(sp)
    32d4:	6145                	addi	sp,sp,48
    32d6:	8082                	ret

00000000000032d8 <linktest>:
    32d8:	7179                	addi	sp,sp,-48
    32da:	f406                	sd	ra,40(sp)
    32dc:	f022                	sd	s0,32(sp)
    32de:	1800                	addi	s0,sp,48
    32e0:	fca43c23          	sd	a0,-40(s0)
    32e4:	00006517          	auipc	a0,0x6
    32e8:	b0450513          	addi	a0,a0,-1276 # 8de8 <malloc+0xdfe>
    32ec:	00004097          	auipc	ra,0x4
    32f0:	60c080e7          	jalr	1548(ra) # 78f8 <unlink>
    32f4:	00006517          	auipc	a0,0x6
    32f8:	afc50513          	addi	a0,a0,-1284 # 8df0 <malloc+0xe06>
    32fc:	00004097          	auipc	ra,0x4
    3300:	5fc080e7          	jalr	1532(ra) # 78f8 <unlink>
    3304:	20200593          	li	a1,514
    3308:	00006517          	auipc	a0,0x6
    330c:	ae050513          	addi	a0,a0,-1312 # 8de8 <malloc+0xdfe>
    3310:	00004097          	auipc	ra,0x4
    3314:	5d8080e7          	jalr	1496(ra) # 78e8 <open>
    3318:	87aa                	mv	a5,a0
    331a:	fef42623          	sw	a5,-20(s0)
    331e:	fec42783          	lw	a5,-20(s0)
    3322:	2781                	sext.w	a5,a5
    3324:	0207d163          	bgez	a5,3346 <linktest+0x6e>
    3328:	fd843583          	ld	a1,-40(s0)
    332c:	00006517          	auipc	a0,0x6
    3330:	acc50513          	addi	a0,a0,-1332 # 8df8 <malloc+0xe0e>
    3334:	00005097          	auipc	ra,0x5
    3338:	ac4080e7          	jalr	-1340(ra) # 7df8 <printf>
    333c:	4505                	li	a0,1
    333e:	00004097          	auipc	ra,0x4
    3342:	56a080e7          	jalr	1386(ra) # 78a8 <exit>
    3346:	fec42783          	lw	a5,-20(s0)
    334a:	4615                	li	a2,5
    334c:	00006597          	auipc	a1,0x6
    3350:	9ec58593          	addi	a1,a1,-1556 # 8d38 <malloc+0xd4e>
    3354:	853e                	mv	a0,a5
    3356:	00004097          	auipc	ra,0x4
    335a:	572080e7          	jalr	1394(ra) # 78c8 <write>
    335e:	87aa                	mv	a5,a0
    3360:	873e                	mv	a4,a5
    3362:	4795                	li	a5,5
    3364:	02f70163          	beq	a4,a5,3386 <linktest+0xae>
    3368:	fd843583          	ld	a1,-40(s0)
    336c:	00006517          	auipc	a0,0x6
    3370:	aa450513          	addi	a0,a0,-1372 # 8e10 <malloc+0xe26>
    3374:	00005097          	auipc	ra,0x5
    3378:	a84080e7          	jalr	-1404(ra) # 7df8 <printf>
    337c:	4505                	li	a0,1
    337e:	00004097          	auipc	ra,0x4
    3382:	52a080e7          	jalr	1322(ra) # 78a8 <exit>
    3386:	fec42783          	lw	a5,-20(s0)
    338a:	853e                	mv	a0,a5
    338c:	00004097          	auipc	ra,0x4
    3390:	544080e7          	jalr	1348(ra) # 78d0 <close>
    3394:	00006597          	auipc	a1,0x6
    3398:	a5c58593          	addi	a1,a1,-1444 # 8df0 <malloc+0xe06>
    339c:	00006517          	auipc	a0,0x6
    33a0:	a4c50513          	addi	a0,a0,-1460 # 8de8 <malloc+0xdfe>
    33a4:	00004097          	auipc	ra,0x4
    33a8:	564080e7          	jalr	1380(ra) # 7908 <link>
    33ac:	87aa                	mv	a5,a0
    33ae:	0207d163          	bgez	a5,33d0 <linktest+0xf8>
    33b2:	fd843583          	ld	a1,-40(s0)
    33b6:	00006517          	auipc	a0,0x6
    33ba:	a7250513          	addi	a0,a0,-1422 # 8e28 <malloc+0xe3e>
    33be:	00005097          	auipc	ra,0x5
    33c2:	a3a080e7          	jalr	-1478(ra) # 7df8 <printf>
    33c6:	4505                	li	a0,1
    33c8:	00004097          	auipc	ra,0x4
    33cc:	4e0080e7          	jalr	1248(ra) # 78a8 <exit>
    33d0:	00006517          	auipc	a0,0x6
    33d4:	a1850513          	addi	a0,a0,-1512 # 8de8 <malloc+0xdfe>
    33d8:	00004097          	auipc	ra,0x4
    33dc:	520080e7          	jalr	1312(ra) # 78f8 <unlink>
    33e0:	4581                	li	a1,0
    33e2:	00006517          	auipc	a0,0x6
    33e6:	a0650513          	addi	a0,a0,-1530 # 8de8 <malloc+0xdfe>
    33ea:	00004097          	auipc	ra,0x4
    33ee:	4fe080e7          	jalr	1278(ra) # 78e8 <open>
    33f2:	87aa                	mv	a5,a0
    33f4:	0207c163          	bltz	a5,3416 <linktest+0x13e>
    33f8:	fd843583          	ld	a1,-40(s0)
    33fc:	00006517          	auipc	a0,0x6
    3400:	a4c50513          	addi	a0,a0,-1460 # 8e48 <malloc+0xe5e>
    3404:	00005097          	auipc	ra,0x5
    3408:	9f4080e7          	jalr	-1548(ra) # 7df8 <printf>
    340c:	4505                	li	a0,1
    340e:	00004097          	auipc	ra,0x4
    3412:	49a080e7          	jalr	1178(ra) # 78a8 <exit>
    3416:	4581                	li	a1,0
    3418:	00006517          	auipc	a0,0x6
    341c:	9d850513          	addi	a0,a0,-1576 # 8df0 <malloc+0xe06>
    3420:	00004097          	auipc	ra,0x4
    3424:	4c8080e7          	jalr	1224(ra) # 78e8 <open>
    3428:	87aa                	mv	a5,a0
    342a:	fef42623          	sw	a5,-20(s0)
    342e:	fec42783          	lw	a5,-20(s0)
    3432:	2781                	sext.w	a5,a5
    3434:	0207d163          	bgez	a5,3456 <linktest+0x17e>
    3438:	fd843583          	ld	a1,-40(s0)
    343c:	00006517          	auipc	a0,0x6
    3440:	a3c50513          	addi	a0,a0,-1476 # 8e78 <malloc+0xe8e>
    3444:	00005097          	auipc	ra,0x5
    3448:	9b4080e7          	jalr	-1612(ra) # 7df8 <printf>
    344c:	4505                	li	a0,1
    344e:	00004097          	auipc	ra,0x4
    3452:	45a080e7          	jalr	1114(ra) # 78a8 <exit>
    3456:	fec42783          	lw	a5,-20(s0)
    345a:	660d                	lui	a2,0x3
    345c:	00008597          	auipc	a1,0x8
    3460:	01458593          	addi	a1,a1,20 # b470 <buf>
    3464:	853e                	mv	a0,a5
    3466:	00004097          	auipc	ra,0x4
    346a:	45a080e7          	jalr	1114(ra) # 78c0 <read>
    346e:	87aa                	mv	a5,a0
    3470:	873e                	mv	a4,a5
    3472:	4795                	li	a5,5
    3474:	02f70163          	beq	a4,a5,3496 <linktest+0x1be>
    3478:	fd843583          	ld	a1,-40(s0)
    347c:	00006517          	auipc	a0,0x6
    3480:	a1450513          	addi	a0,a0,-1516 # 8e90 <malloc+0xea6>
    3484:	00005097          	auipc	ra,0x5
    3488:	974080e7          	jalr	-1676(ra) # 7df8 <printf>
    348c:	4505                	li	a0,1
    348e:	00004097          	auipc	ra,0x4
    3492:	41a080e7          	jalr	1050(ra) # 78a8 <exit>
    3496:	fec42783          	lw	a5,-20(s0)
    349a:	853e                	mv	a0,a5
    349c:	00004097          	auipc	ra,0x4
    34a0:	434080e7          	jalr	1076(ra) # 78d0 <close>
    34a4:	00006597          	auipc	a1,0x6
    34a8:	94c58593          	addi	a1,a1,-1716 # 8df0 <malloc+0xe06>
    34ac:	00006517          	auipc	a0,0x6
    34b0:	94450513          	addi	a0,a0,-1724 # 8df0 <malloc+0xe06>
    34b4:	00004097          	auipc	ra,0x4
    34b8:	454080e7          	jalr	1108(ra) # 7908 <link>
    34bc:	87aa                	mv	a5,a0
    34be:	0207c163          	bltz	a5,34e0 <linktest+0x208>
    34c2:	fd843583          	ld	a1,-40(s0)
    34c6:	00006517          	auipc	a0,0x6
    34ca:	9e250513          	addi	a0,a0,-1566 # 8ea8 <malloc+0xebe>
    34ce:	00005097          	auipc	ra,0x5
    34d2:	92a080e7          	jalr	-1750(ra) # 7df8 <printf>
    34d6:	4505                	li	a0,1
    34d8:	00004097          	auipc	ra,0x4
    34dc:	3d0080e7          	jalr	976(ra) # 78a8 <exit>
    34e0:	00006517          	auipc	a0,0x6
    34e4:	91050513          	addi	a0,a0,-1776 # 8df0 <malloc+0xe06>
    34e8:	00004097          	auipc	ra,0x4
    34ec:	410080e7          	jalr	1040(ra) # 78f8 <unlink>
    34f0:	00006597          	auipc	a1,0x6
    34f4:	8f858593          	addi	a1,a1,-1800 # 8de8 <malloc+0xdfe>
    34f8:	00006517          	auipc	a0,0x6
    34fc:	8f850513          	addi	a0,a0,-1800 # 8df0 <malloc+0xe06>
    3500:	00004097          	auipc	ra,0x4
    3504:	408080e7          	jalr	1032(ra) # 7908 <link>
    3508:	87aa                	mv	a5,a0
    350a:	0207c163          	bltz	a5,352c <linktest+0x254>
    350e:	fd843583          	ld	a1,-40(s0)
    3512:	00006517          	auipc	a0,0x6
    3516:	9be50513          	addi	a0,a0,-1602 # 8ed0 <malloc+0xee6>
    351a:	00005097          	auipc	ra,0x5
    351e:	8de080e7          	jalr	-1826(ra) # 7df8 <printf>
    3522:	4505                	li	a0,1
    3524:	00004097          	auipc	ra,0x4
    3528:	384080e7          	jalr	900(ra) # 78a8 <exit>
    352c:	00006597          	auipc	a1,0x6
    3530:	8bc58593          	addi	a1,a1,-1860 # 8de8 <malloc+0xdfe>
    3534:	00006517          	auipc	a0,0x6
    3538:	9c450513          	addi	a0,a0,-1596 # 8ef8 <malloc+0xf0e>
    353c:	00004097          	auipc	ra,0x4
    3540:	3cc080e7          	jalr	972(ra) # 7908 <link>
    3544:	87aa                	mv	a5,a0
    3546:	0207c163          	bltz	a5,3568 <linktest+0x290>
    354a:	fd843583          	ld	a1,-40(s0)
    354e:	00006517          	auipc	a0,0x6
    3552:	9b250513          	addi	a0,a0,-1614 # 8f00 <malloc+0xf16>
    3556:	00005097          	auipc	ra,0x5
    355a:	8a2080e7          	jalr	-1886(ra) # 7df8 <printf>
    355e:	4505                	li	a0,1
    3560:	00004097          	auipc	ra,0x4
    3564:	348080e7          	jalr	840(ra) # 78a8 <exit>
    3568:	0001                	nop
    356a:	70a2                	ld	ra,40(sp)
    356c:	7402                	ld	s0,32(sp)
    356e:	6145                	addi	sp,sp,48
    3570:	8082                	ret

0000000000003572 <concreate>:
    3572:	7119                	addi	sp,sp,-128
    3574:	fc86                	sd	ra,120(sp)
    3576:	f8a2                	sd	s0,112(sp)
    3578:	0100                	addi	s0,sp,128
    357a:	f8a43423          	sd	a0,-120(s0)
    357e:	04300793          	li	a5,67
    3582:	fcf40c23          	sb	a5,-40(s0)
    3586:	fc040d23          	sb	zero,-38(s0)
    358a:	fe042623          	sw	zero,-20(s0)
    358e:	a225                	j	36b6 <concreate+0x144>
    3590:	fec42783          	lw	a5,-20(s0)
    3594:	0ff7f793          	zext.b	a5,a5
    3598:	0307879b          	addiw	a5,a5,48
    359c:	0ff7f793          	zext.b	a5,a5
    35a0:	fcf40ca3          	sb	a5,-39(s0)
    35a4:	fd840793          	addi	a5,s0,-40
    35a8:	853e                	mv	a0,a5
    35aa:	00004097          	auipc	ra,0x4
    35ae:	34e080e7          	jalr	846(ra) # 78f8 <unlink>
    35b2:	00004097          	auipc	ra,0x4
    35b6:	2ee080e7          	jalr	750(ra) # 78a0 <fork>
    35ba:	87aa                	mv	a5,a0
    35bc:	fef42023          	sw	a5,-32(s0)
    35c0:	fe042783          	lw	a5,-32(s0)
    35c4:	2781                	sext.w	a5,a5
    35c6:	cb85                	beqz	a5,35f6 <concreate+0x84>
    35c8:	fec42783          	lw	a5,-20(s0)
    35cc:	873e                	mv	a4,a5
    35ce:	478d                	li	a5,3
    35d0:	02f767bb          	remw	a5,a4,a5
    35d4:	2781                	sext.w	a5,a5
    35d6:	873e                	mv	a4,a5
    35d8:	4785                	li	a5,1
    35da:	00f71e63          	bne	a4,a5,35f6 <concreate+0x84>
    35de:	fd840793          	addi	a5,s0,-40
    35e2:	85be                	mv	a1,a5
    35e4:	00006517          	auipc	a0,0x6
    35e8:	93c50513          	addi	a0,a0,-1732 # 8f20 <malloc+0xf36>
    35ec:	00004097          	auipc	ra,0x4
    35f0:	31c080e7          	jalr	796(ra) # 7908 <link>
    35f4:	a061                	j	367c <concreate+0x10a>
    35f6:	fe042783          	lw	a5,-32(s0)
    35fa:	2781                	sext.w	a5,a5
    35fc:	eb85                	bnez	a5,362c <concreate+0xba>
    35fe:	fec42783          	lw	a5,-20(s0)
    3602:	873e                	mv	a4,a5
    3604:	4795                	li	a5,5
    3606:	02f767bb          	remw	a5,a4,a5
    360a:	2781                	sext.w	a5,a5
    360c:	873e                	mv	a4,a5
    360e:	4785                	li	a5,1
    3610:	00f71e63          	bne	a4,a5,362c <concreate+0xba>
    3614:	fd840793          	addi	a5,s0,-40
    3618:	85be                	mv	a1,a5
    361a:	00006517          	auipc	a0,0x6
    361e:	90650513          	addi	a0,a0,-1786 # 8f20 <malloc+0xf36>
    3622:	00004097          	auipc	ra,0x4
    3626:	2e6080e7          	jalr	742(ra) # 7908 <link>
    362a:	a889                	j	367c <concreate+0x10a>
    362c:	fd840793          	addi	a5,s0,-40
    3630:	20200593          	li	a1,514
    3634:	853e                	mv	a0,a5
    3636:	00004097          	auipc	ra,0x4
    363a:	2b2080e7          	jalr	690(ra) # 78e8 <open>
    363e:	87aa                	mv	a5,a0
    3640:	fef42223          	sw	a5,-28(s0)
    3644:	fe442783          	lw	a5,-28(s0)
    3648:	2781                	sext.w	a5,a5
    364a:	0207d263          	bgez	a5,366e <concreate+0xfc>
    364e:	fd840793          	addi	a5,s0,-40
    3652:	85be                	mv	a1,a5
    3654:	00006517          	auipc	a0,0x6
    3658:	8d450513          	addi	a0,a0,-1836 # 8f28 <malloc+0xf3e>
    365c:	00004097          	auipc	ra,0x4
    3660:	79c080e7          	jalr	1948(ra) # 7df8 <printf>
    3664:	4505                	li	a0,1
    3666:	00004097          	auipc	ra,0x4
    366a:	242080e7          	jalr	578(ra) # 78a8 <exit>
    366e:	fe442783          	lw	a5,-28(s0)
    3672:	853e                	mv	a0,a5
    3674:	00004097          	auipc	ra,0x4
    3678:	25c080e7          	jalr	604(ra) # 78d0 <close>
    367c:	fe042783          	lw	a5,-32(s0)
    3680:	2781                	sext.w	a5,a5
    3682:	e791                	bnez	a5,368e <concreate+0x11c>
    3684:	4501                	li	a0,0
    3686:	00004097          	auipc	ra,0x4
    368a:	222080e7          	jalr	546(ra) # 78a8 <exit>
    368e:	f9c40793          	addi	a5,s0,-100
    3692:	853e                	mv	a0,a5
    3694:	00004097          	auipc	ra,0x4
    3698:	21c080e7          	jalr	540(ra) # 78b0 <wait>
    369c:	f9c42783          	lw	a5,-100(s0)
    36a0:	c791                	beqz	a5,36ac <concreate+0x13a>
    36a2:	4505                	li	a0,1
    36a4:	00004097          	auipc	ra,0x4
    36a8:	204080e7          	jalr	516(ra) # 78a8 <exit>
    36ac:	fec42783          	lw	a5,-20(s0)
    36b0:	2785                	addiw	a5,a5,1
    36b2:	fef42623          	sw	a5,-20(s0)
    36b6:	fec42783          	lw	a5,-20(s0)
    36ba:	0007871b          	sext.w	a4,a5
    36be:	02700793          	li	a5,39
    36c2:	ece7d7e3          	bge	a5,a4,3590 <concreate+0x1e>
    36c6:	fb040793          	addi	a5,s0,-80
    36ca:	02800613          	li	a2,40
    36ce:	4581                	li	a1,0
    36d0:	853e                	mv	a0,a5
    36d2:	00004097          	auipc	ra,0x4
    36d6:	e2a080e7          	jalr	-470(ra) # 74fc <memset>
    36da:	4581                	li	a1,0
    36dc:	00006517          	auipc	a0,0x6
    36e0:	81c50513          	addi	a0,a0,-2020 # 8ef8 <malloc+0xf0e>
    36e4:	00004097          	auipc	ra,0x4
    36e8:	204080e7          	jalr	516(ra) # 78e8 <open>
    36ec:	87aa                	mv	a5,a0
    36ee:	fef42223          	sw	a5,-28(s0)
    36f2:	fe042423          	sw	zero,-24(s0)
    36f6:	a85d                	j	37ac <concreate+0x23a>
    36f8:	fa045783          	lhu	a5,-96(s0)
    36fc:	e391                	bnez	a5,3700 <concreate+0x18e>
    36fe:	a07d                	j	37ac <concreate+0x23a>
    3700:	fa244783          	lbu	a5,-94(s0)
    3704:	873e                	mv	a4,a5
    3706:	04300793          	li	a5,67
    370a:	0af71163          	bne	a4,a5,37ac <concreate+0x23a>
    370e:	fa444783          	lbu	a5,-92(s0)
    3712:	efc9                	bnez	a5,37ac <concreate+0x23a>
    3714:	fa344783          	lbu	a5,-93(s0)
    3718:	2781                	sext.w	a5,a5
    371a:	fd07879b          	addiw	a5,a5,-48
    371e:	fef42623          	sw	a5,-20(s0)
    3722:	fec42783          	lw	a5,-20(s0)
    3726:	2781                	sext.w	a5,a5
    3728:	0007c963          	bltz	a5,373a <concreate+0x1c8>
    372c:	fec42783          	lw	a5,-20(s0)
    3730:	873e                	mv	a4,a5
    3732:	02700793          	li	a5,39
    3736:	02e7f563          	bgeu	a5,a4,3760 <concreate+0x1ee>
    373a:	fa040793          	addi	a5,s0,-96
    373e:	0789                	addi	a5,a5,2
    3740:	863e                	mv	a2,a5
    3742:	f8843583          	ld	a1,-120(s0)
    3746:	00006517          	auipc	a0,0x6
    374a:	80250513          	addi	a0,a0,-2046 # 8f48 <malloc+0xf5e>
    374e:	00004097          	auipc	ra,0x4
    3752:	6aa080e7          	jalr	1706(ra) # 7df8 <printf>
    3756:	4505                	li	a0,1
    3758:	00004097          	auipc	ra,0x4
    375c:	150080e7          	jalr	336(ra) # 78a8 <exit>
    3760:	fec42783          	lw	a5,-20(s0)
    3764:	17c1                	addi	a5,a5,-16
    3766:	97a2                	add	a5,a5,s0
    3768:	fc07c783          	lbu	a5,-64(a5)
    376c:	c785                	beqz	a5,3794 <concreate+0x222>
    376e:	fa040793          	addi	a5,s0,-96
    3772:	0789                	addi	a5,a5,2
    3774:	863e                	mv	a2,a5
    3776:	f8843583          	ld	a1,-120(s0)
    377a:	00005517          	auipc	a0,0x5
    377e:	7ee50513          	addi	a0,a0,2030 # 8f68 <malloc+0xf7e>
    3782:	00004097          	auipc	ra,0x4
    3786:	676080e7          	jalr	1654(ra) # 7df8 <printf>
    378a:	4505                	li	a0,1
    378c:	00004097          	auipc	ra,0x4
    3790:	11c080e7          	jalr	284(ra) # 78a8 <exit>
    3794:	fec42783          	lw	a5,-20(s0)
    3798:	17c1                	addi	a5,a5,-16
    379a:	97a2                	add	a5,a5,s0
    379c:	4705                	li	a4,1
    379e:	fce78023          	sb	a4,-64(a5)
    37a2:	fe842783          	lw	a5,-24(s0)
    37a6:	2785                	addiw	a5,a5,1
    37a8:	fef42423          	sw	a5,-24(s0)
    37ac:	fa040713          	addi	a4,s0,-96
    37b0:	fe442783          	lw	a5,-28(s0)
    37b4:	4641                	li	a2,16
    37b6:	85ba                	mv	a1,a4
    37b8:	853e                	mv	a0,a5
    37ba:	00004097          	auipc	ra,0x4
    37be:	106080e7          	jalr	262(ra) # 78c0 <read>
    37c2:	87aa                	mv	a5,a0
    37c4:	f2f04ae3          	bgtz	a5,36f8 <concreate+0x186>
    37c8:	fe442783          	lw	a5,-28(s0)
    37cc:	853e                	mv	a0,a5
    37ce:	00004097          	auipc	ra,0x4
    37d2:	102080e7          	jalr	258(ra) # 78d0 <close>
    37d6:	fe842783          	lw	a5,-24(s0)
    37da:	0007871b          	sext.w	a4,a5
    37de:	02800793          	li	a5,40
    37e2:	02f70163          	beq	a4,a5,3804 <concreate+0x292>
    37e6:	f8843583          	ld	a1,-120(s0)
    37ea:	00005517          	auipc	a0,0x5
    37ee:	7a650513          	addi	a0,a0,1958 # 8f90 <malloc+0xfa6>
    37f2:	00004097          	auipc	ra,0x4
    37f6:	606080e7          	jalr	1542(ra) # 7df8 <printf>
    37fa:	4505                	li	a0,1
    37fc:	00004097          	auipc	ra,0x4
    3800:	0ac080e7          	jalr	172(ra) # 78a8 <exit>
    3804:	fe042623          	sw	zero,-20(s0)
    3808:	a25d                	j	39ae <concreate+0x43c>
    380a:	fec42783          	lw	a5,-20(s0)
    380e:	0ff7f793          	zext.b	a5,a5
    3812:	0307879b          	addiw	a5,a5,48
    3816:	0ff7f793          	zext.b	a5,a5
    381a:	fcf40ca3          	sb	a5,-39(s0)
    381e:	00004097          	auipc	ra,0x4
    3822:	082080e7          	jalr	130(ra) # 78a0 <fork>
    3826:	87aa                	mv	a5,a0
    3828:	fef42023          	sw	a5,-32(s0)
    382c:	fe042783          	lw	a5,-32(s0)
    3830:	2781                	sext.w	a5,a5
    3832:	0207d163          	bgez	a5,3854 <concreate+0x2e2>
    3836:	f8843583          	ld	a1,-120(s0)
    383a:	00005517          	auipc	a0,0x5
    383e:	d3650513          	addi	a0,a0,-714 # 8570 <malloc+0x586>
    3842:	00004097          	auipc	ra,0x4
    3846:	5b6080e7          	jalr	1462(ra) # 7df8 <printf>
    384a:	4505                	li	a0,1
    384c:	00004097          	auipc	ra,0x4
    3850:	05c080e7          	jalr	92(ra) # 78a8 <exit>
    3854:	fec42783          	lw	a5,-20(s0)
    3858:	873e                	mv	a4,a5
    385a:	478d                	li	a5,3
    385c:	02f767bb          	remw	a5,a4,a5
    3860:	2781                	sext.w	a5,a5
    3862:	e789                	bnez	a5,386c <concreate+0x2fa>
    3864:	fe042783          	lw	a5,-32(s0)
    3868:	2781                	sext.w	a5,a5
    386a:	c385                	beqz	a5,388a <concreate+0x318>
    386c:	fec42783          	lw	a5,-20(s0)
    3870:	873e                	mv	a4,a5
    3872:	478d                	li	a5,3
    3874:	02f767bb          	remw	a5,a4,a5
    3878:	2781                	sext.w	a5,a5
    387a:	873e                	mv	a4,a5
    387c:	4785                	li	a5,1
    387e:	0af71b63          	bne	a4,a5,3934 <concreate+0x3c2>
    3882:	fe042783          	lw	a5,-32(s0)
    3886:	2781                	sext.w	a5,a5
    3888:	c7d5                	beqz	a5,3934 <concreate+0x3c2>
    388a:	fd840793          	addi	a5,s0,-40
    388e:	4581                	li	a1,0
    3890:	853e                	mv	a0,a5
    3892:	00004097          	auipc	ra,0x4
    3896:	056080e7          	jalr	86(ra) # 78e8 <open>
    389a:	87aa                	mv	a5,a0
    389c:	853e                	mv	a0,a5
    389e:	00004097          	auipc	ra,0x4
    38a2:	032080e7          	jalr	50(ra) # 78d0 <close>
    38a6:	fd840793          	addi	a5,s0,-40
    38aa:	4581                	li	a1,0
    38ac:	853e                	mv	a0,a5
    38ae:	00004097          	auipc	ra,0x4
    38b2:	03a080e7          	jalr	58(ra) # 78e8 <open>
    38b6:	87aa                	mv	a5,a0
    38b8:	853e                	mv	a0,a5
    38ba:	00004097          	auipc	ra,0x4
    38be:	016080e7          	jalr	22(ra) # 78d0 <close>
    38c2:	fd840793          	addi	a5,s0,-40
    38c6:	4581                	li	a1,0
    38c8:	853e                	mv	a0,a5
    38ca:	00004097          	auipc	ra,0x4
    38ce:	01e080e7          	jalr	30(ra) # 78e8 <open>
    38d2:	87aa                	mv	a5,a0
    38d4:	853e                	mv	a0,a5
    38d6:	00004097          	auipc	ra,0x4
    38da:	ffa080e7          	jalr	-6(ra) # 78d0 <close>
    38de:	fd840793          	addi	a5,s0,-40
    38e2:	4581                	li	a1,0
    38e4:	853e                	mv	a0,a5
    38e6:	00004097          	auipc	ra,0x4
    38ea:	002080e7          	jalr	2(ra) # 78e8 <open>
    38ee:	87aa                	mv	a5,a0
    38f0:	853e                	mv	a0,a5
    38f2:	00004097          	auipc	ra,0x4
    38f6:	fde080e7          	jalr	-34(ra) # 78d0 <close>
    38fa:	fd840793          	addi	a5,s0,-40
    38fe:	4581                	li	a1,0
    3900:	853e                	mv	a0,a5
    3902:	00004097          	auipc	ra,0x4
    3906:	fe6080e7          	jalr	-26(ra) # 78e8 <open>
    390a:	87aa                	mv	a5,a0
    390c:	853e                	mv	a0,a5
    390e:	00004097          	auipc	ra,0x4
    3912:	fc2080e7          	jalr	-62(ra) # 78d0 <close>
    3916:	fd840793          	addi	a5,s0,-40
    391a:	4581                	li	a1,0
    391c:	853e                	mv	a0,a5
    391e:	00004097          	auipc	ra,0x4
    3922:	fca080e7          	jalr	-54(ra) # 78e8 <open>
    3926:	87aa                	mv	a5,a0
    3928:	853e                	mv	a0,a5
    392a:	00004097          	auipc	ra,0x4
    392e:	fa6080e7          	jalr	-90(ra) # 78d0 <close>
    3932:	a899                	j	3988 <concreate+0x416>
    3934:	fd840793          	addi	a5,s0,-40
    3938:	853e                	mv	a0,a5
    393a:	00004097          	auipc	ra,0x4
    393e:	fbe080e7          	jalr	-66(ra) # 78f8 <unlink>
    3942:	fd840793          	addi	a5,s0,-40
    3946:	853e                	mv	a0,a5
    3948:	00004097          	auipc	ra,0x4
    394c:	fb0080e7          	jalr	-80(ra) # 78f8 <unlink>
    3950:	fd840793          	addi	a5,s0,-40
    3954:	853e                	mv	a0,a5
    3956:	00004097          	auipc	ra,0x4
    395a:	fa2080e7          	jalr	-94(ra) # 78f8 <unlink>
    395e:	fd840793          	addi	a5,s0,-40
    3962:	853e                	mv	a0,a5
    3964:	00004097          	auipc	ra,0x4
    3968:	f94080e7          	jalr	-108(ra) # 78f8 <unlink>
    396c:	fd840793          	addi	a5,s0,-40
    3970:	853e                	mv	a0,a5
    3972:	00004097          	auipc	ra,0x4
    3976:	f86080e7          	jalr	-122(ra) # 78f8 <unlink>
    397a:	fd840793          	addi	a5,s0,-40
    397e:	853e                	mv	a0,a5
    3980:	00004097          	auipc	ra,0x4
    3984:	f78080e7          	jalr	-136(ra) # 78f8 <unlink>
    3988:	fe042783          	lw	a5,-32(s0)
    398c:	2781                	sext.w	a5,a5
    398e:	e791                	bnez	a5,399a <concreate+0x428>
    3990:	4501                	li	a0,0
    3992:	00004097          	auipc	ra,0x4
    3996:	f16080e7          	jalr	-234(ra) # 78a8 <exit>
    399a:	4501                	li	a0,0
    399c:	00004097          	auipc	ra,0x4
    39a0:	f14080e7          	jalr	-236(ra) # 78b0 <wait>
    39a4:	fec42783          	lw	a5,-20(s0)
    39a8:	2785                	addiw	a5,a5,1
    39aa:	fef42623          	sw	a5,-20(s0)
    39ae:	fec42783          	lw	a5,-20(s0)
    39b2:	0007871b          	sext.w	a4,a5
    39b6:	02700793          	li	a5,39
    39ba:	e4e7d8e3          	bge	a5,a4,380a <concreate+0x298>
    39be:	0001                	nop
    39c0:	0001                	nop
    39c2:	70e6                	ld	ra,120(sp)
    39c4:	7446                	ld	s0,112(sp)
    39c6:	6109                	addi	sp,sp,128
    39c8:	8082                	ret

00000000000039ca <linkunlink>:
    39ca:	7179                	addi	sp,sp,-48
    39cc:	f406                	sd	ra,40(sp)
    39ce:	f022                	sd	s0,32(sp)
    39d0:	1800                	addi	s0,sp,48
    39d2:	fca43c23          	sd	a0,-40(s0)
    39d6:	00005517          	auipc	a0,0x5
    39da:	86a50513          	addi	a0,a0,-1942 # 8240 <malloc+0x256>
    39de:	00004097          	auipc	ra,0x4
    39e2:	f1a080e7          	jalr	-230(ra) # 78f8 <unlink>
    39e6:	00004097          	auipc	ra,0x4
    39ea:	eba080e7          	jalr	-326(ra) # 78a0 <fork>
    39ee:	87aa                	mv	a5,a0
    39f0:	fef42223          	sw	a5,-28(s0)
    39f4:	fe442783          	lw	a5,-28(s0)
    39f8:	2781                	sext.w	a5,a5
    39fa:	0207d163          	bgez	a5,3a1c <linkunlink+0x52>
    39fe:	fd843583          	ld	a1,-40(s0)
    3a02:	00005517          	auipc	a0,0x5
    3a06:	b6e50513          	addi	a0,a0,-1170 # 8570 <malloc+0x586>
    3a0a:	00004097          	auipc	ra,0x4
    3a0e:	3ee080e7          	jalr	1006(ra) # 7df8 <printf>
    3a12:	4505                	li	a0,1
    3a14:	00004097          	auipc	ra,0x4
    3a18:	e94080e7          	jalr	-364(ra) # 78a8 <exit>
    3a1c:	fe442783          	lw	a5,-28(s0)
    3a20:	2781                	sext.w	a5,a5
    3a22:	c399                	beqz	a5,3a28 <linkunlink+0x5e>
    3a24:	4785                	li	a5,1
    3a26:	a019                	j	3a2c <linkunlink+0x62>
    3a28:	06100793          	li	a5,97
    3a2c:	fef42423          	sw	a5,-24(s0)
    3a30:	fe042623          	sw	zero,-20(s0)
    3a34:	a045                	j	3ad4 <linkunlink+0x10a>
    3a36:	fe842783          	lw	a5,-24(s0)
    3a3a:	873e                	mv	a4,a5
    3a3c:	41c657b7          	lui	a5,0x41c65
    3a40:	e6d7879b          	addiw	a5,a5,-403 # 41c64e6d <freep+0x41c531d5>
    3a44:	02f707bb          	mulw	a5,a4,a5
    3a48:	0007871b          	sext.w	a4,a5
    3a4c:	678d                	lui	a5,0x3
    3a4e:	0397879b          	addiw	a5,a5,57 # 3039 <createdelete+0x2bf>
    3a52:	9fb9                	addw	a5,a5,a4
    3a54:	fef42423          	sw	a5,-24(s0)
    3a58:	fe842783          	lw	a5,-24(s0)
    3a5c:	873e                	mv	a4,a5
    3a5e:	478d                	li	a5,3
    3a60:	02f777bb          	remuw	a5,a4,a5
    3a64:	2781                	sext.w	a5,a5
    3a66:	e395                	bnez	a5,3a8a <linkunlink+0xc0>
    3a68:	20200593          	li	a1,514
    3a6c:	00004517          	auipc	a0,0x4
    3a70:	7d450513          	addi	a0,a0,2004 # 8240 <malloc+0x256>
    3a74:	00004097          	auipc	ra,0x4
    3a78:	e74080e7          	jalr	-396(ra) # 78e8 <open>
    3a7c:	87aa                	mv	a5,a0
    3a7e:	853e                	mv	a0,a5
    3a80:	00004097          	auipc	ra,0x4
    3a84:	e50080e7          	jalr	-432(ra) # 78d0 <close>
    3a88:	a089                	j	3aca <linkunlink+0x100>
    3a8a:	fe842783          	lw	a5,-24(s0)
    3a8e:	873e                	mv	a4,a5
    3a90:	478d                	li	a5,3
    3a92:	02f777bb          	remuw	a5,a4,a5
    3a96:	2781                	sext.w	a5,a5
    3a98:	873e                	mv	a4,a5
    3a9a:	4785                	li	a5,1
    3a9c:	00f71f63          	bne	a4,a5,3aba <linkunlink+0xf0>
    3aa0:	00004597          	auipc	a1,0x4
    3aa4:	7a058593          	addi	a1,a1,1952 # 8240 <malloc+0x256>
    3aa8:	00005517          	auipc	a0,0x5
    3aac:	52050513          	addi	a0,a0,1312 # 8fc8 <malloc+0xfde>
    3ab0:	00004097          	auipc	ra,0x4
    3ab4:	e58080e7          	jalr	-424(ra) # 7908 <link>
    3ab8:	a809                	j	3aca <linkunlink+0x100>
    3aba:	00004517          	auipc	a0,0x4
    3abe:	78650513          	addi	a0,a0,1926 # 8240 <malloc+0x256>
    3ac2:	00004097          	auipc	ra,0x4
    3ac6:	e36080e7          	jalr	-458(ra) # 78f8 <unlink>
    3aca:	fec42783          	lw	a5,-20(s0)
    3ace:	2785                	addiw	a5,a5,1
    3ad0:	fef42623          	sw	a5,-20(s0)
    3ad4:	fec42783          	lw	a5,-20(s0)
    3ad8:	0007871b          	sext.w	a4,a5
    3adc:	06300793          	li	a5,99
    3ae0:	f4e7dbe3          	bge	a5,a4,3a36 <linkunlink+0x6c>
    3ae4:	fe442783          	lw	a5,-28(s0)
    3ae8:	2781                	sext.w	a5,a5
    3aea:	c799                	beqz	a5,3af8 <linkunlink+0x12e>
    3aec:	4501                	li	a0,0
    3aee:	00004097          	auipc	ra,0x4
    3af2:	dc2080e7          	jalr	-574(ra) # 78b0 <wait>
    3af6:	a031                	j	3b02 <linkunlink+0x138>
    3af8:	4501                	li	a0,0
    3afa:	00004097          	auipc	ra,0x4
    3afe:	dae080e7          	jalr	-594(ra) # 78a8 <exit>
    3b02:	70a2                	ld	ra,40(sp)
    3b04:	7402                	ld	s0,32(sp)
    3b06:	6145                	addi	sp,sp,48
    3b08:	8082                	ret

0000000000003b0a <subdir>:
    3b0a:	7179                	addi	sp,sp,-48
    3b0c:	f406                	sd	ra,40(sp)
    3b0e:	f022                	sd	s0,32(sp)
    3b10:	1800                	addi	s0,sp,48
    3b12:	fca43c23          	sd	a0,-40(s0)
    3b16:	00005517          	auipc	a0,0x5
    3b1a:	4ba50513          	addi	a0,a0,1210 # 8fd0 <malloc+0xfe6>
    3b1e:	00004097          	auipc	ra,0x4
    3b22:	dda080e7          	jalr	-550(ra) # 78f8 <unlink>
    3b26:	00005517          	auipc	a0,0x5
    3b2a:	4b250513          	addi	a0,a0,1202 # 8fd8 <malloc+0xfee>
    3b2e:	00004097          	auipc	ra,0x4
    3b32:	de2080e7          	jalr	-542(ra) # 7910 <mkdir>
    3b36:	87aa                	mv	a5,a0
    3b38:	c385                	beqz	a5,3b58 <subdir+0x4e>
    3b3a:	fd843583          	ld	a1,-40(s0)
    3b3e:	00005517          	auipc	a0,0x5
    3b42:	4a250513          	addi	a0,a0,1186 # 8fe0 <malloc+0xff6>
    3b46:	00004097          	auipc	ra,0x4
    3b4a:	2b2080e7          	jalr	690(ra) # 7df8 <printf>
    3b4e:	4505                	li	a0,1
    3b50:	00004097          	auipc	ra,0x4
    3b54:	d58080e7          	jalr	-680(ra) # 78a8 <exit>
    3b58:	20200593          	li	a1,514
    3b5c:	00005517          	auipc	a0,0x5
    3b60:	49c50513          	addi	a0,a0,1180 # 8ff8 <malloc+0x100e>
    3b64:	00004097          	auipc	ra,0x4
    3b68:	d84080e7          	jalr	-636(ra) # 78e8 <open>
    3b6c:	87aa                	mv	a5,a0
    3b6e:	fef42623          	sw	a5,-20(s0)
    3b72:	fec42783          	lw	a5,-20(s0)
    3b76:	2781                	sext.w	a5,a5
    3b78:	0207d163          	bgez	a5,3b9a <subdir+0x90>
    3b7c:	fd843583          	ld	a1,-40(s0)
    3b80:	00005517          	auipc	a0,0x5
    3b84:	48050513          	addi	a0,a0,1152 # 9000 <malloc+0x1016>
    3b88:	00004097          	auipc	ra,0x4
    3b8c:	270080e7          	jalr	624(ra) # 7df8 <printf>
    3b90:	4505                	li	a0,1
    3b92:	00004097          	auipc	ra,0x4
    3b96:	d16080e7          	jalr	-746(ra) # 78a8 <exit>
    3b9a:	fec42783          	lw	a5,-20(s0)
    3b9e:	4609                	li	a2,2
    3ba0:	00005597          	auipc	a1,0x5
    3ba4:	43058593          	addi	a1,a1,1072 # 8fd0 <malloc+0xfe6>
    3ba8:	853e                	mv	a0,a5
    3baa:	00004097          	auipc	ra,0x4
    3bae:	d1e080e7          	jalr	-738(ra) # 78c8 <write>
    3bb2:	fec42783          	lw	a5,-20(s0)
    3bb6:	853e                	mv	a0,a5
    3bb8:	00004097          	auipc	ra,0x4
    3bbc:	d18080e7          	jalr	-744(ra) # 78d0 <close>
    3bc0:	00005517          	auipc	a0,0x5
    3bc4:	41850513          	addi	a0,a0,1048 # 8fd8 <malloc+0xfee>
    3bc8:	00004097          	auipc	ra,0x4
    3bcc:	d30080e7          	jalr	-720(ra) # 78f8 <unlink>
    3bd0:	87aa                	mv	a5,a0
    3bd2:	0207c163          	bltz	a5,3bf4 <subdir+0xea>
    3bd6:	fd843583          	ld	a1,-40(s0)
    3bda:	00005517          	auipc	a0,0x5
    3bde:	44650513          	addi	a0,a0,1094 # 9020 <malloc+0x1036>
    3be2:	00004097          	auipc	ra,0x4
    3be6:	216080e7          	jalr	534(ra) # 7df8 <printf>
    3bea:	4505                	li	a0,1
    3bec:	00004097          	auipc	ra,0x4
    3bf0:	cbc080e7          	jalr	-836(ra) # 78a8 <exit>
    3bf4:	00005517          	auipc	a0,0x5
    3bf8:	45c50513          	addi	a0,a0,1116 # 9050 <malloc+0x1066>
    3bfc:	00004097          	auipc	ra,0x4
    3c00:	d14080e7          	jalr	-748(ra) # 7910 <mkdir>
    3c04:	87aa                	mv	a5,a0
    3c06:	c385                	beqz	a5,3c26 <subdir+0x11c>
    3c08:	fd843583          	ld	a1,-40(s0)
    3c0c:	00005517          	auipc	a0,0x5
    3c10:	44c50513          	addi	a0,a0,1100 # 9058 <malloc+0x106e>
    3c14:	00004097          	auipc	ra,0x4
    3c18:	1e4080e7          	jalr	484(ra) # 7df8 <printf>
    3c1c:	4505                	li	a0,1
    3c1e:	00004097          	auipc	ra,0x4
    3c22:	c8a080e7          	jalr	-886(ra) # 78a8 <exit>
    3c26:	20200593          	li	a1,514
    3c2a:	00005517          	auipc	a0,0x5
    3c2e:	44e50513          	addi	a0,a0,1102 # 9078 <malloc+0x108e>
    3c32:	00004097          	auipc	ra,0x4
    3c36:	cb6080e7          	jalr	-842(ra) # 78e8 <open>
    3c3a:	87aa                	mv	a5,a0
    3c3c:	fef42623          	sw	a5,-20(s0)
    3c40:	fec42783          	lw	a5,-20(s0)
    3c44:	2781                	sext.w	a5,a5
    3c46:	0207d163          	bgez	a5,3c68 <subdir+0x15e>
    3c4a:	fd843583          	ld	a1,-40(s0)
    3c4e:	00005517          	auipc	a0,0x5
    3c52:	43a50513          	addi	a0,a0,1082 # 9088 <malloc+0x109e>
    3c56:	00004097          	auipc	ra,0x4
    3c5a:	1a2080e7          	jalr	418(ra) # 7df8 <printf>
    3c5e:	4505                	li	a0,1
    3c60:	00004097          	auipc	ra,0x4
    3c64:	c48080e7          	jalr	-952(ra) # 78a8 <exit>
    3c68:	fec42783          	lw	a5,-20(s0)
    3c6c:	4609                	li	a2,2
    3c6e:	00005597          	auipc	a1,0x5
    3c72:	43a58593          	addi	a1,a1,1082 # 90a8 <malloc+0x10be>
    3c76:	853e                	mv	a0,a5
    3c78:	00004097          	auipc	ra,0x4
    3c7c:	c50080e7          	jalr	-944(ra) # 78c8 <write>
    3c80:	fec42783          	lw	a5,-20(s0)
    3c84:	853e                	mv	a0,a5
    3c86:	00004097          	auipc	ra,0x4
    3c8a:	c4a080e7          	jalr	-950(ra) # 78d0 <close>
    3c8e:	4581                	li	a1,0
    3c90:	00005517          	auipc	a0,0x5
    3c94:	42050513          	addi	a0,a0,1056 # 90b0 <malloc+0x10c6>
    3c98:	00004097          	auipc	ra,0x4
    3c9c:	c50080e7          	jalr	-944(ra) # 78e8 <open>
    3ca0:	87aa                	mv	a5,a0
    3ca2:	fef42623          	sw	a5,-20(s0)
    3ca6:	fec42783          	lw	a5,-20(s0)
    3caa:	2781                	sext.w	a5,a5
    3cac:	0207d163          	bgez	a5,3cce <subdir+0x1c4>
    3cb0:	fd843583          	ld	a1,-40(s0)
    3cb4:	00005517          	auipc	a0,0x5
    3cb8:	40c50513          	addi	a0,a0,1036 # 90c0 <malloc+0x10d6>
    3cbc:	00004097          	auipc	ra,0x4
    3cc0:	13c080e7          	jalr	316(ra) # 7df8 <printf>
    3cc4:	4505                	li	a0,1
    3cc6:	00004097          	auipc	ra,0x4
    3cca:	be2080e7          	jalr	-1054(ra) # 78a8 <exit>
    3cce:	fec42783          	lw	a5,-20(s0)
    3cd2:	660d                	lui	a2,0x3
    3cd4:	00007597          	auipc	a1,0x7
    3cd8:	79c58593          	addi	a1,a1,1948 # b470 <buf>
    3cdc:	853e                	mv	a0,a5
    3cde:	00004097          	auipc	ra,0x4
    3ce2:	be2080e7          	jalr	-1054(ra) # 78c0 <read>
    3ce6:	87aa                	mv	a5,a0
    3ce8:	fef42423          	sw	a5,-24(s0)
    3cec:	fe842783          	lw	a5,-24(s0)
    3cf0:	0007871b          	sext.w	a4,a5
    3cf4:	4789                	li	a5,2
    3cf6:	00f71d63          	bne	a4,a5,3d10 <subdir+0x206>
    3cfa:	00007797          	auipc	a5,0x7
    3cfe:	77678793          	addi	a5,a5,1910 # b470 <buf>
    3d02:	0007c783          	lbu	a5,0(a5)
    3d06:	873e                	mv	a4,a5
    3d08:	06600793          	li	a5,102
    3d0c:	02f70163          	beq	a4,a5,3d2e <subdir+0x224>
    3d10:	fd843583          	ld	a1,-40(s0)
    3d14:	00005517          	auipc	a0,0x5
    3d18:	3cc50513          	addi	a0,a0,972 # 90e0 <malloc+0x10f6>
    3d1c:	00004097          	auipc	ra,0x4
    3d20:	0dc080e7          	jalr	220(ra) # 7df8 <printf>
    3d24:	4505                	li	a0,1
    3d26:	00004097          	auipc	ra,0x4
    3d2a:	b82080e7          	jalr	-1150(ra) # 78a8 <exit>
    3d2e:	fec42783          	lw	a5,-20(s0)
    3d32:	853e                	mv	a0,a5
    3d34:	00004097          	auipc	ra,0x4
    3d38:	b9c080e7          	jalr	-1124(ra) # 78d0 <close>
    3d3c:	00005597          	auipc	a1,0x5
    3d40:	3c458593          	addi	a1,a1,964 # 9100 <malloc+0x1116>
    3d44:	00005517          	auipc	a0,0x5
    3d48:	33450513          	addi	a0,a0,820 # 9078 <malloc+0x108e>
    3d4c:	00004097          	auipc	ra,0x4
    3d50:	bbc080e7          	jalr	-1092(ra) # 7908 <link>
    3d54:	87aa                	mv	a5,a0
    3d56:	c385                	beqz	a5,3d76 <subdir+0x26c>
    3d58:	fd843583          	ld	a1,-40(s0)
    3d5c:	00005517          	auipc	a0,0x5
    3d60:	3b450513          	addi	a0,a0,948 # 9110 <malloc+0x1126>
    3d64:	00004097          	auipc	ra,0x4
    3d68:	094080e7          	jalr	148(ra) # 7df8 <printf>
    3d6c:	4505                	li	a0,1
    3d6e:	00004097          	auipc	ra,0x4
    3d72:	b3a080e7          	jalr	-1222(ra) # 78a8 <exit>
    3d76:	00005517          	auipc	a0,0x5
    3d7a:	30250513          	addi	a0,a0,770 # 9078 <malloc+0x108e>
    3d7e:	00004097          	auipc	ra,0x4
    3d82:	b7a080e7          	jalr	-1158(ra) # 78f8 <unlink>
    3d86:	87aa                	mv	a5,a0
    3d88:	c385                	beqz	a5,3da8 <subdir+0x29e>
    3d8a:	fd843583          	ld	a1,-40(s0)
    3d8e:	00005517          	auipc	a0,0x5
    3d92:	3aa50513          	addi	a0,a0,938 # 9138 <malloc+0x114e>
    3d96:	00004097          	auipc	ra,0x4
    3d9a:	062080e7          	jalr	98(ra) # 7df8 <printf>
    3d9e:	4505                	li	a0,1
    3da0:	00004097          	auipc	ra,0x4
    3da4:	b08080e7          	jalr	-1272(ra) # 78a8 <exit>
    3da8:	4581                	li	a1,0
    3daa:	00005517          	auipc	a0,0x5
    3dae:	2ce50513          	addi	a0,a0,718 # 9078 <malloc+0x108e>
    3db2:	00004097          	auipc	ra,0x4
    3db6:	b36080e7          	jalr	-1226(ra) # 78e8 <open>
    3dba:	87aa                	mv	a5,a0
    3dbc:	0207c163          	bltz	a5,3dde <subdir+0x2d4>
    3dc0:	fd843583          	ld	a1,-40(s0)
    3dc4:	00005517          	auipc	a0,0x5
    3dc8:	39450513          	addi	a0,a0,916 # 9158 <malloc+0x116e>
    3dcc:	00004097          	auipc	ra,0x4
    3dd0:	02c080e7          	jalr	44(ra) # 7df8 <printf>
    3dd4:	4505                	li	a0,1
    3dd6:	00004097          	auipc	ra,0x4
    3dda:	ad2080e7          	jalr	-1326(ra) # 78a8 <exit>
    3dde:	00005517          	auipc	a0,0x5
    3de2:	1fa50513          	addi	a0,a0,506 # 8fd8 <malloc+0xfee>
    3de6:	00004097          	auipc	ra,0x4
    3dea:	b32080e7          	jalr	-1230(ra) # 7918 <chdir>
    3dee:	87aa                	mv	a5,a0
    3df0:	c385                	beqz	a5,3e10 <subdir+0x306>
    3df2:	fd843583          	ld	a1,-40(s0)
    3df6:	00005517          	auipc	a0,0x5
    3dfa:	38a50513          	addi	a0,a0,906 # 9180 <malloc+0x1196>
    3dfe:	00004097          	auipc	ra,0x4
    3e02:	ffa080e7          	jalr	-6(ra) # 7df8 <printf>
    3e06:	4505                	li	a0,1
    3e08:	00004097          	auipc	ra,0x4
    3e0c:	aa0080e7          	jalr	-1376(ra) # 78a8 <exit>
    3e10:	00005517          	auipc	a0,0x5
    3e14:	38850513          	addi	a0,a0,904 # 9198 <malloc+0x11ae>
    3e18:	00004097          	auipc	ra,0x4
    3e1c:	b00080e7          	jalr	-1280(ra) # 7918 <chdir>
    3e20:	87aa                	mv	a5,a0
    3e22:	c385                	beqz	a5,3e42 <subdir+0x338>
    3e24:	fd843583          	ld	a1,-40(s0)
    3e28:	00005517          	auipc	a0,0x5
    3e2c:	38050513          	addi	a0,a0,896 # 91a8 <malloc+0x11be>
    3e30:	00004097          	auipc	ra,0x4
    3e34:	fc8080e7          	jalr	-56(ra) # 7df8 <printf>
    3e38:	4505                	li	a0,1
    3e3a:	00004097          	auipc	ra,0x4
    3e3e:	a6e080e7          	jalr	-1426(ra) # 78a8 <exit>
    3e42:	00005517          	auipc	a0,0x5
    3e46:	38650513          	addi	a0,a0,902 # 91c8 <malloc+0x11de>
    3e4a:	00004097          	auipc	ra,0x4
    3e4e:	ace080e7          	jalr	-1330(ra) # 7918 <chdir>
    3e52:	87aa                	mv	a5,a0
    3e54:	c385                	beqz	a5,3e74 <subdir+0x36a>
    3e56:	fd843583          	ld	a1,-40(s0)
    3e5a:	00005517          	auipc	a0,0x5
    3e5e:	37e50513          	addi	a0,a0,894 # 91d8 <malloc+0x11ee>
    3e62:	00004097          	auipc	ra,0x4
    3e66:	f96080e7          	jalr	-106(ra) # 7df8 <printf>
    3e6a:	4505                	li	a0,1
    3e6c:	00004097          	auipc	ra,0x4
    3e70:	a3c080e7          	jalr	-1476(ra) # 78a8 <exit>
    3e74:	00005517          	auipc	a0,0x5
    3e78:	38450513          	addi	a0,a0,900 # 91f8 <malloc+0x120e>
    3e7c:	00004097          	auipc	ra,0x4
    3e80:	a9c080e7          	jalr	-1380(ra) # 7918 <chdir>
    3e84:	87aa                	mv	a5,a0
    3e86:	c385                	beqz	a5,3ea6 <subdir+0x39c>
    3e88:	fd843583          	ld	a1,-40(s0)
    3e8c:	00005517          	auipc	a0,0x5
    3e90:	37450513          	addi	a0,a0,884 # 9200 <malloc+0x1216>
    3e94:	00004097          	auipc	ra,0x4
    3e98:	f64080e7          	jalr	-156(ra) # 7df8 <printf>
    3e9c:	4505                	li	a0,1
    3e9e:	00004097          	auipc	ra,0x4
    3ea2:	a0a080e7          	jalr	-1526(ra) # 78a8 <exit>
    3ea6:	4581                	li	a1,0
    3ea8:	00005517          	auipc	a0,0x5
    3eac:	25850513          	addi	a0,a0,600 # 9100 <malloc+0x1116>
    3eb0:	00004097          	auipc	ra,0x4
    3eb4:	a38080e7          	jalr	-1480(ra) # 78e8 <open>
    3eb8:	87aa                	mv	a5,a0
    3eba:	fef42623          	sw	a5,-20(s0)
    3ebe:	fec42783          	lw	a5,-20(s0)
    3ec2:	2781                	sext.w	a5,a5
    3ec4:	0207d163          	bgez	a5,3ee6 <subdir+0x3dc>
    3ec8:	fd843583          	ld	a1,-40(s0)
    3ecc:	00005517          	auipc	a0,0x5
    3ed0:	34c50513          	addi	a0,a0,844 # 9218 <malloc+0x122e>
    3ed4:	00004097          	auipc	ra,0x4
    3ed8:	f24080e7          	jalr	-220(ra) # 7df8 <printf>
    3edc:	4505                	li	a0,1
    3ede:	00004097          	auipc	ra,0x4
    3ee2:	9ca080e7          	jalr	-1590(ra) # 78a8 <exit>
    3ee6:	fec42783          	lw	a5,-20(s0)
    3eea:	660d                	lui	a2,0x3
    3eec:	00007597          	auipc	a1,0x7
    3ef0:	58458593          	addi	a1,a1,1412 # b470 <buf>
    3ef4:	853e                	mv	a0,a5
    3ef6:	00004097          	auipc	ra,0x4
    3efa:	9ca080e7          	jalr	-1590(ra) # 78c0 <read>
    3efe:	87aa                	mv	a5,a0
    3f00:	873e                	mv	a4,a5
    3f02:	4789                	li	a5,2
    3f04:	02f70163          	beq	a4,a5,3f26 <subdir+0x41c>
    3f08:	fd843583          	ld	a1,-40(s0)
    3f0c:	00005517          	auipc	a0,0x5
    3f10:	32c50513          	addi	a0,a0,812 # 9238 <malloc+0x124e>
    3f14:	00004097          	auipc	ra,0x4
    3f18:	ee4080e7          	jalr	-284(ra) # 7df8 <printf>
    3f1c:	4505                	li	a0,1
    3f1e:	00004097          	auipc	ra,0x4
    3f22:	98a080e7          	jalr	-1654(ra) # 78a8 <exit>
    3f26:	fec42783          	lw	a5,-20(s0)
    3f2a:	853e                	mv	a0,a5
    3f2c:	00004097          	auipc	ra,0x4
    3f30:	9a4080e7          	jalr	-1628(ra) # 78d0 <close>
    3f34:	4581                	li	a1,0
    3f36:	00005517          	auipc	a0,0x5
    3f3a:	14250513          	addi	a0,a0,322 # 9078 <malloc+0x108e>
    3f3e:	00004097          	auipc	ra,0x4
    3f42:	9aa080e7          	jalr	-1622(ra) # 78e8 <open>
    3f46:	87aa                	mv	a5,a0
    3f48:	0207c163          	bltz	a5,3f6a <subdir+0x460>
    3f4c:	fd843583          	ld	a1,-40(s0)
    3f50:	00005517          	auipc	a0,0x5
    3f54:	30850513          	addi	a0,a0,776 # 9258 <malloc+0x126e>
    3f58:	00004097          	auipc	ra,0x4
    3f5c:	ea0080e7          	jalr	-352(ra) # 7df8 <printf>
    3f60:	4505                	li	a0,1
    3f62:	00004097          	auipc	ra,0x4
    3f66:	946080e7          	jalr	-1722(ra) # 78a8 <exit>
    3f6a:	20200593          	li	a1,514
    3f6e:	00005517          	auipc	a0,0x5
    3f72:	31a50513          	addi	a0,a0,794 # 9288 <malloc+0x129e>
    3f76:	00004097          	auipc	ra,0x4
    3f7a:	972080e7          	jalr	-1678(ra) # 78e8 <open>
    3f7e:	87aa                	mv	a5,a0
    3f80:	0207c163          	bltz	a5,3fa2 <subdir+0x498>
    3f84:	fd843583          	ld	a1,-40(s0)
    3f88:	00005517          	auipc	a0,0x5
    3f8c:	31050513          	addi	a0,a0,784 # 9298 <malloc+0x12ae>
    3f90:	00004097          	auipc	ra,0x4
    3f94:	e68080e7          	jalr	-408(ra) # 7df8 <printf>
    3f98:	4505                	li	a0,1
    3f9a:	00004097          	auipc	ra,0x4
    3f9e:	90e080e7          	jalr	-1778(ra) # 78a8 <exit>
    3fa2:	20200593          	li	a1,514
    3fa6:	00005517          	auipc	a0,0x5
    3faa:	31250513          	addi	a0,a0,786 # 92b8 <malloc+0x12ce>
    3fae:	00004097          	auipc	ra,0x4
    3fb2:	93a080e7          	jalr	-1734(ra) # 78e8 <open>
    3fb6:	87aa                	mv	a5,a0
    3fb8:	0207c163          	bltz	a5,3fda <subdir+0x4d0>
    3fbc:	fd843583          	ld	a1,-40(s0)
    3fc0:	00005517          	auipc	a0,0x5
    3fc4:	30850513          	addi	a0,a0,776 # 92c8 <malloc+0x12de>
    3fc8:	00004097          	auipc	ra,0x4
    3fcc:	e30080e7          	jalr	-464(ra) # 7df8 <printf>
    3fd0:	4505                	li	a0,1
    3fd2:	00004097          	auipc	ra,0x4
    3fd6:	8d6080e7          	jalr	-1834(ra) # 78a8 <exit>
    3fda:	20000593          	li	a1,512
    3fde:	00005517          	auipc	a0,0x5
    3fe2:	ffa50513          	addi	a0,a0,-6 # 8fd8 <malloc+0xfee>
    3fe6:	00004097          	auipc	ra,0x4
    3fea:	902080e7          	jalr	-1790(ra) # 78e8 <open>
    3fee:	87aa                	mv	a5,a0
    3ff0:	0207c163          	bltz	a5,4012 <subdir+0x508>
    3ff4:	fd843583          	ld	a1,-40(s0)
    3ff8:	00005517          	auipc	a0,0x5
    3ffc:	2f050513          	addi	a0,a0,752 # 92e8 <malloc+0x12fe>
    4000:	00004097          	auipc	ra,0x4
    4004:	df8080e7          	jalr	-520(ra) # 7df8 <printf>
    4008:	4505                	li	a0,1
    400a:	00004097          	auipc	ra,0x4
    400e:	89e080e7          	jalr	-1890(ra) # 78a8 <exit>
    4012:	4589                	li	a1,2
    4014:	00005517          	auipc	a0,0x5
    4018:	fc450513          	addi	a0,a0,-60 # 8fd8 <malloc+0xfee>
    401c:	00004097          	auipc	ra,0x4
    4020:	8cc080e7          	jalr	-1844(ra) # 78e8 <open>
    4024:	87aa                	mv	a5,a0
    4026:	0207c163          	bltz	a5,4048 <subdir+0x53e>
    402a:	fd843583          	ld	a1,-40(s0)
    402e:	00005517          	auipc	a0,0x5
    4032:	2da50513          	addi	a0,a0,730 # 9308 <malloc+0x131e>
    4036:	00004097          	auipc	ra,0x4
    403a:	dc2080e7          	jalr	-574(ra) # 7df8 <printf>
    403e:	4505                	li	a0,1
    4040:	00004097          	auipc	ra,0x4
    4044:	868080e7          	jalr	-1944(ra) # 78a8 <exit>
    4048:	4585                	li	a1,1
    404a:	00005517          	auipc	a0,0x5
    404e:	f8e50513          	addi	a0,a0,-114 # 8fd8 <malloc+0xfee>
    4052:	00004097          	auipc	ra,0x4
    4056:	896080e7          	jalr	-1898(ra) # 78e8 <open>
    405a:	87aa                	mv	a5,a0
    405c:	0207c163          	bltz	a5,407e <subdir+0x574>
    4060:	fd843583          	ld	a1,-40(s0)
    4064:	00005517          	auipc	a0,0x5
    4068:	2c450513          	addi	a0,a0,708 # 9328 <malloc+0x133e>
    406c:	00004097          	auipc	ra,0x4
    4070:	d8c080e7          	jalr	-628(ra) # 7df8 <printf>
    4074:	4505                	li	a0,1
    4076:	00004097          	auipc	ra,0x4
    407a:	832080e7          	jalr	-1998(ra) # 78a8 <exit>
    407e:	00005597          	auipc	a1,0x5
    4082:	2ca58593          	addi	a1,a1,714 # 9348 <malloc+0x135e>
    4086:	00005517          	auipc	a0,0x5
    408a:	20250513          	addi	a0,a0,514 # 9288 <malloc+0x129e>
    408e:	00004097          	auipc	ra,0x4
    4092:	87a080e7          	jalr	-1926(ra) # 7908 <link>
    4096:	87aa                	mv	a5,a0
    4098:	e385                	bnez	a5,40b8 <subdir+0x5ae>
    409a:	fd843583          	ld	a1,-40(s0)
    409e:	00005517          	auipc	a0,0x5
    40a2:	2ba50513          	addi	a0,a0,698 # 9358 <malloc+0x136e>
    40a6:	00004097          	auipc	ra,0x4
    40aa:	d52080e7          	jalr	-686(ra) # 7df8 <printf>
    40ae:	4505                	li	a0,1
    40b0:	00003097          	auipc	ra,0x3
    40b4:	7f8080e7          	jalr	2040(ra) # 78a8 <exit>
    40b8:	00005597          	auipc	a1,0x5
    40bc:	29058593          	addi	a1,a1,656 # 9348 <malloc+0x135e>
    40c0:	00005517          	auipc	a0,0x5
    40c4:	1f850513          	addi	a0,a0,504 # 92b8 <malloc+0x12ce>
    40c8:	00004097          	auipc	ra,0x4
    40cc:	840080e7          	jalr	-1984(ra) # 7908 <link>
    40d0:	87aa                	mv	a5,a0
    40d2:	e385                	bnez	a5,40f2 <subdir+0x5e8>
    40d4:	fd843583          	ld	a1,-40(s0)
    40d8:	00005517          	auipc	a0,0x5
    40dc:	2a850513          	addi	a0,a0,680 # 9380 <malloc+0x1396>
    40e0:	00004097          	auipc	ra,0x4
    40e4:	d18080e7          	jalr	-744(ra) # 7df8 <printf>
    40e8:	4505                	li	a0,1
    40ea:	00003097          	auipc	ra,0x3
    40ee:	7be080e7          	jalr	1982(ra) # 78a8 <exit>
    40f2:	00005597          	auipc	a1,0x5
    40f6:	00e58593          	addi	a1,a1,14 # 9100 <malloc+0x1116>
    40fa:	00005517          	auipc	a0,0x5
    40fe:	efe50513          	addi	a0,a0,-258 # 8ff8 <malloc+0x100e>
    4102:	00004097          	auipc	ra,0x4
    4106:	806080e7          	jalr	-2042(ra) # 7908 <link>
    410a:	87aa                	mv	a5,a0
    410c:	e385                	bnez	a5,412c <subdir+0x622>
    410e:	fd843583          	ld	a1,-40(s0)
    4112:	00005517          	auipc	a0,0x5
    4116:	29650513          	addi	a0,a0,662 # 93a8 <malloc+0x13be>
    411a:	00004097          	auipc	ra,0x4
    411e:	cde080e7          	jalr	-802(ra) # 7df8 <printf>
    4122:	4505                	li	a0,1
    4124:	00003097          	auipc	ra,0x3
    4128:	784080e7          	jalr	1924(ra) # 78a8 <exit>
    412c:	00005517          	auipc	a0,0x5
    4130:	15c50513          	addi	a0,a0,348 # 9288 <malloc+0x129e>
    4134:	00003097          	auipc	ra,0x3
    4138:	7dc080e7          	jalr	2012(ra) # 7910 <mkdir>
    413c:	87aa                	mv	a5,a0
    413e:	e385                	bnez	a5,415e <subdir+0x654>
    4140:	fd843583          	ld	a1,-40(s0)
    4144:	00005517          	auipc	a0,0x5
    4148:	28c50513          	addi	a0,a0,652 # 93d0 <malloc+0x13e6>
    414c:	00004097          	auipc	ra,0x4
    4150:	cac080e7          	jalr	-852(ra) # 7df8 <printf>
    4154:	4505                	li	a0,1
    4156:	00003097          	auipc	ra,0x3
    415a:	752080e7          	jalr	1874(ra) # 78a8 <exit>
    415e:	00005517          	auipc	a0,0x5
    4162:	15a50513          	addi	a0,a0,346 # 92b8 <malloc+0x12ce>
    4166:	00003097          	auipc	ra,0x3
    416a:	7aa080e7          	jalr	1962(ra) # 7910 <mkdir>
    416e:	87aa                	mv	a5,a0
    4170:	e385                	bnez	a5,4190 <subdir+0x686>
    4172:	fd843583          	ld	a1,-40(s0)
    4176:	00005517          	auipc	a0,0x5
    417a:	27a50513          	addi	a0,a0,634 # 93f0 <malloc+0x1406>
    417e:	00004097          	auipc	ra,0x4
    4182:	c7a080e7          	jalr	-902(ra) # 7df8 <printf>
    4186:	4505                	li	a0,1
    4188:	00003097          	auipc	ra,0x3
    418c:	720080e7          	jalr	1824(ra) # 78a8 <exit>
    4190:	00005517          	auipc	a0,0x5
    4194:	f7050513          	addi	a0,a0,-144 # 9100 <malloc+0x1116>
    4198:	00003097          	auipc	ra,0x3
    419c:	778080e7          	jalr	1912(ra) # 7910 <mkdir>
    41a0:	87aa                	mv	a5,a0
    41a2:	e385                	bnez	a5,41c2 <subdir+0x6b8>
    41a4:	fd843583          	ld	a1,-40(s0)
    41a8:	00005517          	auipc	a0,0x5
    41ac:	26850513          	addi	a0,a0,616 # 9410 <malloc+0x1426>
    41b0:	00004097          	auipc	ra,0x4
    41b4:	c48080e7          	jalr	-952(ra) # 7df8 <printf>
    41b8:	4505                	li	a0,1
    41ba:	00003097          	auipc	ra,0x3
    41be:	6ee080e7          	jalr	1774(ra) # 78a8 <exit>
    41c2:	00005517          	auipc	a0,0x5
    41c6:	0f650513          	addi	a0,a0,246 # 92b8 <malloc+0x12ce>
    41ca:	00003097          	auipc	ra,0x3
    41ce:	72e080e7          	jalr	1838(ra) # 78f8 <unlink>
    41d2:	87aa                	mv	a5,a0
    41d4:	e385                	bnez	a5,41f4 <subdir+0x6ea>
    41d6:	fd843583          	ld	a1,-40(s0)
    41da:	00005517          	auipc	a0,0x5
    41de:	25e50513          	addi	a0,a0,606 # 9438 <malloc+0x144e>
    41e2:	00004097          	auipc	ra,0x4
    41e6:	c16080e7          	jalr	-1002(ra) # 7df8 <printf>
    41ea:	4505                	li	a0,1
    41ec:	00003097          	auipc	ra,0x3
    41f0:	6bc080e7          	jalr	1724(ra) # 78a8 <exit>
    41f4:	00005517          	auipc	a0,0x5
    41f8:	09450513          	addi	a0,a0,148 # 9288 <malloc+0x129e>
    41fc:	00003097          	auipc	ra,0x3
    4200:	6fc080e7          	jalr	1788(ra) # 78f8 <unlink>
    4204:	87aa                	mv	a5,a0
    4206:	e385                	bnez	a5,4226 <subdir+0x71c>
    4208:	fd843583          	ld	a1,-40(s0)
    420c:	00005517          	auipc	a0,0x5
    4210:	24c50513          	addi	a0,a0,588 # 9458 <malloc+0x146e>
    4214:	00004097          	auipc	ra,0x4
    4218:	be4080e7          	jalr	-1052(ra) # 7df8 <printf>
    421c:	4505                	li	a0,1
    421e:	00003097          	auipc	ra,0x3
    4222:	68a080e7          	jalr	1674(ra) # 78a8 <exit>
    4226:	00005517          	auipc	a0,0x5
    422a:	dd250513          	addi	a0,a0,-558 # 8ff8 <malloc+0x100e>
    422e:	00003097          	auipc	ra,0x3
    4232:	6ea080e7          	jalr	1770(ra) # 7918 <chdir>
    4236:	87aa                	mv	a5,a0
    4238:	e385                	bnez	a5,4258 <subdir+0x74e>
    423a:	fd843583          	ld	a1,-40(s0)
    423e:	00005517          	auipc	a0,0x5
    4242:	23a50513          	addi	a0,a0,570 # 9478 <malloc+0x148e>
    4246:	00004097          	auipc	ra,0x4
    424a:	bb2080e7          	jalr	-1102(ra) # 7df8 <printf>
    424e:	4505                	li	a0,1
    4250:	00003097          	auipc	ra,0x3
    4254:	658080e7          	jalr	1624(ra) # 78a8 <exit>
    4258:	00005517          	auipc	a0,0x5
    425c:	24050513          	addi	a0,a0,576 # 9498 <malloc+0x14ae>
    4260:	00003097          	auipc	ra,0x3
    4264:	6b8080e7          	jalr	1720(ra) # 7918 <chdir>
    4268:	87aa                	mv	a5,a0
    426a:	e385                	bnez	a5,428a <subdir+0x780>
    426c:	fd843583          	ld	a1,-40(s0)
    4270:	00005517          	auipc	a0,0x5
    4274:	23050513          	addi	a0,a0,560 # 94a0 <malloc+0x14b6>
    4278:	00004097          	auipc	ra,0x4
    427c:	b80080e7          	jalr	-1152(ra) # 7df8 <printf>
    4280:	4505                	li	a0,1
    4282:	00003097          	auipc	ra,0x3
    4286:	626080e7          	jalr	1574(ra) # 78a8 <exit>
    428a:	00005517          	auipc	a0,0x5
    428e:	e7650513          	addi	a0,a0,-394 # 9100 <malloc+0x1116>
    4292:	00003097          	auipc	ra,0x3
    4296:	666080e7          	jalr	1638(ra) # 78f8 <unlink>
    429a:	87aa                	mv	a5,a0
    429c:	c385                	beqz	a5,42bc <subdir+0x7b2>
    429e:	fd843583          	ld	a1,-40(s0)
    42a2:	00005517          	auipc	a0,0x5
    42a6:	e9650513          	addi	a0,a0,-362 # 9138 <malloc+0x114e>
    42aa:	00004097          	auipc	ra,0x4
    42ae:	b4e080e7          	jalr	-1202(ra) # 7df8 <printf>
    42b2:	4505                	li	a0,1
    42b4:	00003097          	auipc	ra,0x3
    42b8:	5f4080e7          	jalr	1524(ra) # 78a8 <exit>
    42bc:	00005517          	auipc	a0,0x5
    42c0:	d3c50513          	addi	a0,a0,-708 # 8ff8 <malloc+0x100e>
    42c4:	00003097          	auipc	ra,0x3
    42c8:	634080e7          	jalr	1588(ra) # 78f8 <unlink>
    42cc:	87aa                	mv	a5,a0
    42ce:	c385                	beqz	a5,42ee <subdir+0x7e4>
    42d0:	fd843583          	ld	a1,-40(s0)
    42d4:	00005517          	auipc	a0,0x5
    42d8:	1ec50513          	addi	a0,a0,492 # 94c0 <malloc+0x14d6>
    42dc:	00004097          	auipc	ra,0x4
    42e0:	b1c080e7          	jalr	-1252(ra) # 7df8 <printf>
    42e4:	4505                	li	a0,1
    42e6:	00003097          	auipc	ra,0x3
    42ea:	5c2080e7          	jalr	1474(ra) # 78a8 <exit>
    42ee:	00005517          	auipc	a0,0x5
    42f2:	cea50513          	addi	a0,a0,-790 # 8fd8 <malloc+0xfee>
    42f6:	00003097          	auipc	ra,0x3
    42fa:	602080e7          	jalr	1538(ra) # 78f8 <unlink>
    42fe:	87aa                	mv	a5,a0
    4300:	e385                	bnez	a5,4320 <subdir+0x816>
    4302:	fd843583          	ld	a1,-40(s0)
    4306:	00005517          	auipc	a0,0x5
    430a:	1da50513          	addi	a0,a0,474 # 94e0 <malloc+0x14f6>
    430e:	00004097          	auipc	ra,0x4
    4312:	aea080e7          	jalr	-1302(ra) # 7df8 <printf>
    4316:	4505                	li	a0,1
    4318:	00003097          	auipc	ra,0x3
    431c:	590080e7          	jalr	1424(ra) # 78a8 <exit>
    4320:	00005517          	auipc	a0,0x5
    4324:	1e850513          	addi	a0,a0,488 # 9508 <malloc+0x151e>
    4328:	00003097          	auipc	ra,0x3
    432c:	5d0080e7          	jalr	1488(ra) # 78f8 <unlink>
    4330:	87aa                	mv	a5,a0
    4332:	0207d163          	bgez	a5,4354 <subdir+0x84a>
    4336:	fd843583          	ld	a1,-40(s0)
    433a:	00005517          	auipc	a0,0x5
    433e:	1d650513          	addi	a0,a0,470 # 9510 <malloc+0x1526>
    4342:	00004097          	auipc	ra,0x4
    4346:	ab6080e7          	jalr	-1354(ra) # 7df8 <printf>
    434a:	4505                	li	a0,1
    434c:	00003097          	auipc	ra,0x3
    4350:	55c080e7          	jalr	1372(ra) # 78a8 <exit>
    4354:	00005517          	auipc	a0,0x5
    4358:	c8450513          	addi	a0,a0,-892 # 8fd8 <malloc+0xfee>
    435c:	00003097          	auipc	ra,0x3
    4360:	59c080e7          	jalr	1436(ra) # 78f8 <unlink>
    4364:	87aa                	mv	a5,a0
    4366:	0207d163          	bgez	a5,4388 <subdir+0x87e>
    436a:	fd843583          	ld	a1,-40(s0)
    436e:	00005517          	auipc	a0,0x5
    4372:	1c250513          	addi	a0,a0,450 # 9530 <malloc+0x1546>
    4376:	00004097          	auipc	ra,0x4
    437a:	a82080e7          	jalr	-1406(ra) # 7df8 <printf>
    437e:	4505                	li	a0,1
    4380:	00003097          	auipc	ra,0x3
    4384:	528080e7          	jalr	1320(ra) # 78a8 <exit>
    4388:	0001                	nop
    438a:	70a2                	ld	ra,40(sp)
    438c:	7402                	ld	s0,32(sp)
    438e:	6145                	addi	sp,sp,48
    4390:	8082                	ret

0000000000004392 <bigwrite>:
    4392:	7179                	addi	sp,sp,-48
    4394:	f406                	sd	ra,40(sp)
    4396:	f022                	sd	s0,32(sp)
    4398:	1800                	addi	s0,sp,48
    439a:	fca43c23          	sd	a0,-40(s0)
    439e:	00005517          	auipc	a0,0x5
    43a2:	1aa50513          	addi	a0,a0,426 # 9548 <malloc+0x155e>
    43a6:	00003097          	auipc	ra,0x3
    43aa:	552080e7          	jalr	1362(ra) # 78f8 <unlink>
    43ae:	1f300793          	li	a5,499
    43b2:	fef42623          	sw	a5,-20(s0)
    43b6:	a0ed                	j	44a0 <bigwrite+0x10e>
    43b8:	20200593          	li	a1,514
    43bc:	00005517          	auipc	a0,0x5
    43c0:	18c50513          	addi	a0,a0,396 # 9548 <malloc+0x155e>
    43c4:	00003097          	auipc	ra,0x3
    43c8:	524080e7          	jalr	1316(ra) # 78e8 <open>
    43cc:	87aa                	mv	a5,a0
    43ce:	fef42223          	sw	a5,-28(s0)
    43d2:	fe442783          	lw	a5,-28(s0)
    43d6:	2781                	sext.w	a5,a5
    43d8:	0207d163          	bgez	a5,43fa <bigwrite+0x68>
    43dc:	fd843583          	ld	a1,-40(s0)
    43e0:	00005517          	auipc	a0,0x5
    43e4:	17850513          	addi	a0,a0,376 # 9558 <malloc+0x156e>
    43e8:	00004097          	auipc	ra,0x4
    43ec:	a10080e7          	jalr	-1520(ra) # 7df8 <printf>
    43f0:	4505                	li	a0,1
    43f2:	00003097          	auipc	ra,0x3
    43f6:	4b6080e7          	jalr	1206(ra) # 78a8 <exit>
    43fa:	fe042423          	sw	zero,-24(s0)
    43fe:	a0ad                	j	4468 <bigwrite+0xd6>
    4400:	fec42703          	lw	a4,-20(s0)
    4404:	fe442783          	lw	a5,-28(s0)
    4408:	863a                	mv	a2,a4
    440a:	00007597          	auipc	a1,0x7
    440e:	06658593          	addi	a1,a1,102 # b470 <buf>
    4412:	853e                	mv	a0,a5
    4414:	00003097          	auipc	ra,0x3
    4418:	4b4080e7          	jalr	1204(ra) # 78c8 <write>
    441c:	87aa                	mv	a5,a0
    441e:	fef42023          	sw	a5,-32(s0)
    4422:	fe042783          	lw	a5,-32(s0)
    4426:	873e                	mv	a4,a5
    4428:	fec42783          	lw	a5,-20(s0)
    442c:	2701                	sext.w	a4,a4
    442e:	2781                	sext.w	a5,a5
    4430:	02f70763          	beq	a4,a5,445e <bigwrite+0xcc>
    4434:	fe042703          	lw	a4,-32(s0)
    4438:	fec42783          	lw	a5,-20(s0)
    443c:	86ba                	mv	a3,a4
    443e:	863e                	mv	a2,a5
    4440:	fd843583          	ld	a1,-40(s0)
    4444:	00005517          	auipc	a0,0x5
    4448:	13450513          	addi	a0,a0,308 # 9578 <malloc+0x158e>
    444c:	00004097          	auipc	ra,0x4
    4450:	9ac080e7          	jalr	-1620(ra) # 7df8 <printf>
    4454:	4505                	li	a0,1
    4456:	00003097          	auipc	ra,0x3
    445a:	452080e7          	jalr	1106(ra) # 78a8 <exit>
    445e:	fe842783          	lw	a5,-24(s0)
    4462:	2785                	addiw	a5,a5,1
    4464:	fef42423          	sw	a5,-24(s0)
    4468:	fe842783          	lw	a5,-24(s0)
    446c:	0007871b          	sext.w	a4,a5
    4470:	4785                	li	a5,1
    4472:	f8e7d7e3          	bge	a5,a4,4400 <bigwrite+0x6e>
    4476:	fe442783          	lw	a5,-28(s0)
    447a:	853e                	mv	a0,a5
    447c:	00003097          	auipc	ra,0x3
    4480:	454080e7          	jalr	1108(ra) # 78d0 <close>
    4484:	00005517          	auipc	a0,0x5
    4488:	0c450513          	addi	a0,a0,196 # 9548 <malloc+0x155e>
    448c:	00003097          	auipc	ra,0x3
    4490:	46c080e7          	jalr	1132(ra) # 78f8 <unlink>
    4494:	fec42783          	lw	a5,-20(s0)
    4498:	1d77879b          	addiw	a5,a5,471
    449c:	fef42623          	sw	a5,-20(s0)
    44a0:	fec42783          	lw	a5,-20(s0)
    44a4:	0007871b          	sext.w	a4,a5
    44a8:	678d                	lui	a5,0x3
    44aa:	f0f747e3          	blt	a4,a5,43b8 <bigwrite+0x26>
    44ae:	0001                	nop
    44b0:	0001                	nop
    44b2:	70a2                	ld	ra,40(sp)
    44b4:	7402                	ld	s0,32(sp)
    44b6:	6145                	addi	sp,sp,48
    44b8:	8082                	ret

00000000000044ba <bigfile>:
    44ba:	7179                	addi	sp,sp,-48
    44bc:	f406                	sd	ra,40(sp)
    44be:	f022                	sd	s0,32(sp)
    44c0:	1800                	addi	s0,sp,48
    44c2:	fca43c23          	sd	a0,-40(s0)
    44c6:	00005517          	auipc	a0,0x5
    44ca:	0ca50513          	addi	a0,a0,202 # 9590 <malloc+0x15a6>
    44ce:	00003097          	auipc	ra,0x3
    44d2:	42a080e7          	jalr	1066(ra) # 78f8 <unlink>
    44d6:	20200593          	li	a1,514
    44da:	00005517          	auipc	a0,0x5
    44de:	0b650513          	addi	a0,a0,182 # 9590 <malloc+0x15a6>
    44e2:	00003097          	auipc	ra,0x3
    44e6:	406080e7          	jalr	1030(ra) # 78e8 <open>
    44ea:	87aa                	mv	a5,a0
    44ec:	fef42223          	sw	a5,-28(s0)
    44f0:	fe442783          	lw	a5,-28(s0)
    44f4:	2781                	sext.w	a5,a5
    44f6:	0207d163          	bgez	a5,4518 <bigfile+0x5e>
    44fa:	fd843583          	ld	a1,-40(s0)
    44fe:	00005517          	auipc	a0,0x5
    4502:	0a250513          	addi	a0,a0,162 # 95a0 <malloc+0x15b6>
    4506:	00004097          	auipc	ra,0x4
    450a:	8f2080e7          	jalr	-1806(ra) # 7df8 <printf>
    450e:	4505                	li	a0,1
    4510:	00003097          	auipc	ra,0x3
    4514:	398080e7          	jalr	920(ra) # 78a8 <exit>
    4518:	fe042623          	sw	zero,-20(s0)
    451c:	a0ad                	j	4586 <bigfile+0xcc>
    451e:	fec42783          	lw	a5,-20(s0)
    4522:	25800613          	li	a2,600
    4526:	85be                	mv	a1,a5
    4528:	00007517          	auipc	a0,0x7
    452c:	f4850513          	addi	a0,a0,-184 # b470 <buf>
    4530:	00003097          	auipc	ra,0x3
    4534:	fcc080e7          	jalr	-52(ra) # 74fc <memset>
    4538:	fe442783          	lw	a5,-28(s0)
    453c:	25800613          	li	a2,600
    4540:	00007597          	auipc	a1,0x7
    4544:	f3058593          	addi	a1,a1,-208 # b470 <buf>
    4548:	853e                	mv	a0,a5
    454a:	00003097          	auipc	ra,0x3
    454e:	37e080e7          	jalr	894(ra) # 78c8 <write>
    4552:	87aa                	mv	a5,a0
    4554:	873e                	mv	a4,a5
    4556:	25800793          	li	a5,600
    455a:	02f70163          	beq	a4,a5,457c <bigfile+0xc2>
    455e:	fd843583          	ld	a1,-40(s0)
    4562:	00005517          	auipc	a0,0x5
    4566:	05e50513          	addi	a0,a0,94 # 95c0 <malloc+0x15d6>
    456a:	00004097          	auipc	ra,0x4
    456e:	88e080e7          	jalr	-1906(ra) # 7df8 <printf>
    4572:	4505                	li	a0,1
    4574:	00003097          	auipc	ra,0x3
    4578:	334080e7          	jalr	820(ra) # 78a8 <exit>
    457c:	fec42783          	lw	a5,-20(s0)
    4580:	2785                	addiw	a5,a5,1 # 3001 <createdelete+0x287>
    4582:	fef42623          	sw	a5,-20(s0)
    4586:	fec42783          	lw	a5,-20(s0)
    458a:	0007871b          	sext.w	a4,a5
    458e:	47cd                	li	a5,19
    4590:	f8e7d7e3          	bge	a5,a4,451e <bigfile+0x64>
    4594:	fe442783          	lw	a5,-28(s0)
    4598:	853e                	mv	a0,a5
    459a:	00003097          	auipc	ra,0x3
    459e:	336080e7          	jalr	822(ra) # 78d0 <close>
    45a2:	4581                	li	a1,0
    45a4:	00005517          	auipc	a0,0x5
    45a8:	fec50513          	addi	a0,a0,-20 # 9590 <malloc+0x15a6>
    45ac:	00003097          	auipc	ra,0x3
    45b0:	33c080e7          	jalr	828(ra) # 78e8 <open>
    45b4:	87aa                	mv	a5,a0
    45b6:	fef42223          	sw	a5,-28(s0)
    45ba:	fe442783          	lw	a5,-28(s0)
    45be:	2781                	sext.w	a5,a5
    45c0:	0207d163          	bgez	a5,45e2 <bigfile+0x128>
    45c4:	fd843583          	ld	a1,-40(s0)
    45c8:	00005517          	auipc	a0,0x5
    45cc:	01850513          	addi	a0,a0,24 # 95e0 <malloc+0x15f6>
    45d0:	00004097          	auipc	ra,0x4
    45d4:	828080e7          	jalr	-2008(ra) # 7df8 <printf>
    45d8:	4505                	li	a0,1
    45da:	00003097          	auipc	ra,0x3
    45de:	2ce080e7          	jalr	718(ra) # 78a8 <exit>
    45e2:	fe042423          	sw	zero,-24(s0)
    45e6:	fe042623          	sw	zero,-20(s0)
    45ea:	fe442783          	lw	a5,-28(s0)
    45ee:	12c00613          	li	a2,300
    45f2:	00007597          	auipc	a1,0x7
    45f6:	e7e58593          	addi	a1,a1,-386 # b470 <buf>
    45fa:	853e                	mv	a0,a5
    45fc:	00003097          	auipc	ra,0x3
    4600:	2c4080e7          	jalr	708(ra) # 78c0 <read>
    4604:	87aa                	mv	a5,a0
    4606:	fef42023          	sw	a5,-32(s0)
    460a:	fe042783          	lw	a5,-32(s0)
    460e:	2781                	sext.w	a5,a5
    4610:	0207d163          	bgez	a5,4632 <bigfile+0x178>
    4614:	fd843583          	ld	a1,-40(s0)
    4618:	00005517          	auipc	a0,0x5
    461c:	fe850513          	addi	a0,a0,-24 # 9600 <malloc+0x1616>
    4620:	00003097          	auipc	ra,0x3
    4624:	7d8080e7          	jalr	2008(ra) # 7df8 <printf>
    4628:	4505                	li	a0,1
    462a:	00003097          	auipc	ra,0x3
    462e:	27e080e7          	jalr	638(ra) # 78a8 <exit>
    4632:	fe042783          	lw	a5,-32(s0)
    4636:	2781                	sext.w	a5,a5
    4638:	cbdd                	beqz	a5,46ee <bigfile+0x234>
    463a:	fe042783          	lw	a5,-32(s0)
    463e:	0007871b          	sext.w	a4,a5
    4642:	12c00793          	li	a5,300
    4646:	02f70163          	beq	a4,a5,4668 <bigfile+0x1ae>
    464a:	fd843583          	ld	a1,-40(s0)
    464e:	00005517          	auipc	a0,0x5
    4652:	fd250513          	addi	a0,a0,-46 # 9620 <malloc+0x1636>
    4656:	00003097          	auipc	ra,0x3
    465a:	7a2080e7          	jalr	1954(ra) # 7df8 <printf>
    465e:	4505                	li	a0,1
    4660:	00003097          	auipc	ra,0x3
    4664:	248080e7          	jalr	584(ra) # 78a8 <exit>
    4668:	00007797          	auipc	a5,0x7
    466c:	e0878793          	addi	a5,a5,-504 # b470 <buf>
    4670:	0007c783          	lbu	a5,0(a5)
    4674:	0007869b          	sext.w	a3,a5
    4678:	fec42783          	lw	a5,-20(s0)
    467c:	01f7d71b          	srliw	a4,a5,0x1f
    4680:	9fb9                	addw	a5,a5,a4
    4682:	4017d79b          	sraiw	a5,a5,0x1
    4686:	2781                	sext.w	a5,a5
    4688:	8736                	mv	a4,a3
    468a:	02f71563          	bne	a4,a5,46b4 <bigfile+0x1fa>
    468e:	00007797          	auipc	a5,0x7
    4692:	de278793          	addi	a5,a5,-542 # b470 <buf>
    4696:	12b7c783          	lbu	a5,299(a5)
    469a:	0007869b          	sext.w	a3,a5
    469e:	fec42783          	lw	a5,-20(s0)
    46a2:	01f7d71b          	srliw	a4,a5,0x1f
    46a6:	9fb9                	addw	a5,a5,a4
    46a8:	4017d79b          	sraiw	a5,a5,0x1
    46ac:	2781                	sext.w	a5,a5
    46ae:	8736                	mv	a4,a3
    46b0:	02f70163          	beq	a4,a5,46d2 <bigfile+0x218>
    46b4:	fd843583          	ld	a1,-40(s0)
    46b8:	00005517          	auipc	a0,0x5
    46bc:	f8050513          	addi	a0,a0,-128 # 9638 <malloc+0x164e>
    46c0:	00003097          	auipc	ra,0x3
    46c4:	738080e7          	jalr	1848(ra) # 7df8 <printf>
    46c8:	4505                	li	a0,1
    46ca:	00003097          	auipc	ra,0x3
    46ce:	1de080e7          	jalr	478(ra) # 78a8 <exit>
    46d2:	fe842783          	lw	a5,-24(s0)
    46d6:	873e                	mv	a4,a5
    46d8:	fe042783          	lw	a5,-32(s0)
    46dc:	9fb9                	addw	a5,a5,a4
    46de:	fef42423          	sw	a5,-24(s0)
    46e2:	fec42783          	lw	a5,-20(s0)
    46e6:	2785                	addiw	a5,a5,1
    46e8:	fef42623          	sw	a5,-20(s0)
    46ec:	bdfd                	j	45ea <bigfile+0x130>
    46ee:	0001                	nop
    46f0:	fe442783          	lw	a5,-28(s0)
    46f4:	853e                	mv	a0,a5
    46f6:	00003097          	auipc	ra,0x3
    46fa:	1da080e7          	jalr	474(ra) # 78d0 <close>
    46fe:	fe842783          	lw	a5,-24(s0)
    4702:	0007871b          	sext.w	a4,a5
    4706:	678d                	lui	a5,0x3
    4708:	ee078793          	addi	a5,a5,-288 # 2ee0 <createdelete+0x166>
    470c:	02f70163          	beq	a4,a5,472e <bigfile+0x274>
    4710:	fd843583          	ld	a1,-40(s0)
    4714:	00005517          	auipc	a0,0x5
    4718:	f4450513          	addi	a0,a0,-188 # 9658 <malloc+0x166e>
    471c:	00003097          	auipc	ra,0x3
    4720:	6dc080e7          	jalr	1756(ra) # 7df8 <printf>
    4724:	4505                	li	a0,1
    4726:	00003097          	auipc	ra,0x3
    472a:	182080e7          	jalr	386(ra) # 78a8 <exit>
    472e:	00005517          	auipc	a0,0x5
    4732:	e6250513          	addi	a0,a0,-414 # 9590 <malloc+0x15a6>
    4736:	00003097          	auipc	ra,0x3
    473a:	1c2080e7          	jalr	450(ra) # 78f8 <unlink>
    473e:	0001                	nop
    4740:	70a2                	ld	ra,40(sp)
    4742:	7402                	ld	s0,32(sp)
    4744:	6145                	addi	sp,sp,48
    4746:	8082                	ret

0000000000004748 <fourteen>:
    4748:	7179                	addi	sp,sp,-48
    474a:	f406                	sd	ra,40(sp)
    474c:	f022                	sd	s0,32(sp)
    474e:	1800                	addi	s0,sp,48
    4750:	fca43c23          	sd	a0,-40(s0)
    4754:	00005517          	auipc	a0,0x5
    4758:	f2450513          	addi	a0,a0,-220 # 9678 <malloc+0x168e>
    475c:	00003097          	auipc	ra,0x3
    4760:	1b4080e7          	jalr	436(ra) # 7910 <mkdir>
    4764:	87aa                	mv	a5,a0
    4766:	c385                	beqz	a5,4786 <fourteen+0x3e>
    4768:	fd843583          	ld	a1,-40(s0)
    476c:	00005517          	auipc	a0,0x5
    4770:	f1c50513          	addi	a0,a0,-228 # 9688 <malloc+0x169e>
    4774:	00003097          	auipc	ra,0x3
    4778:	684080e7          	jalr	1668(ra) # 7df8 <printf>
    477c:	4505                	li	a0,1
    477e:	00003097          	auipc	ra,0x3
    4782:	12a080e7          	jalr	298(ra) # 78a8 <exit>
    4786:	00005517          	auipc	a0,0x5
    478a:	f2a50513          	addi	a0,a0,-214 # 96b0 <malloc+0x16c6>
    478e:	00003097          	auipc	ra,0x3
    4792:	182080e7          	jalr	386(ra) # 7910 <mkdir>
    4796:	87aa                	mv	a5,a0
    4798:	c385                	beqz	a5,47b8 <fourteen+0x70>
    479a:	fd843583          	ld	a1,-40(s0)
    479e:	00005517          	auipc	a0,0x5
    47a2:	f3250513          	addi	a0,a0,-206 # 96d0 <malloc+0x16e6>
    47a6:	00003097          	auipc	ra,0x3
    47aa:	652080e7          	jalr	1618(ra) # 7df8 <printf>
    47ae:	4505                	li	a0,1
    47b0:	00003097          	auipc	ra,0x3
    47b4:	0f8080e7          	jalr	248(ra) # 78a8 <exit>
    47b8:	20000593          	li	a1,512
    47bc:	00005517          	auipc	a0,0x5
    47c0:	f4c50513          	addi	a0,a0,-180 # 9708 <malloc+0x171e>
    47c4:	00003097          	auipc	ra,0x3
    47c8:	124080e7          	jalr	292(ra) # 78e8 <open>
    47cc:	87aa                	mv	a5,a0
    47ce:	fef42623          	sw	a5,-20(s0)
    47d2:	fec42783          	lw	a5,-20(s0)
    47d6:	2781                	sext.w	a5,a5
    47d8:	0207d163          	bgez	a5,47fa <fourteen+0xb2>
    47dc:	fd843583          	ld	a1,-40(s0)
    47e0:	00005517          	auipc	a0,0x5
    47e4:	f5850513          	addi	a0,a0,-168 # 9738 <malloc+0x174e>
    47e8:	00003097          	auipc	ra,0x3
    47ec:	610080e7          	jalr	1552(ra) # 7df8 <printf>
    47f0:	4505                	li	a0,1
    47f2:	00003097          	auipc	ra,0x3
    47f6:	0b6080e7          	jalr	182(ra) # 78a8 <exit>
    47fa:	fec42783          	lw	a5,-20(s0)
    47fe:	853e                	mv	a0,a5
    4800:	00003097          	auipc	ra,0x3
    4804:	0d0080e7          	jalr	208(ra) # 78d0 <close>
    4808:	4581                	li	a1,0
    480a:	00005517          	auipc	a0,0x5
    480e:	f7650513          	addi	a0,a0,-138 # 9780 <malloc+0x1796>
    4812:	00003097          	auipc	ra,0x3
    4816:	0d6080e7          	jalr	214(ra) # 78e8 <open>
    481a:	87aa                	mv	a5,a0
    481c:	fef42623          	sw	a5,-20(s0)
    4820:	fec42783          	lw	a5,-20(s0)
    4824:	2781                	sext.w	a5,a5
    4826:	0207d163          	bgez	a5,4848 <fourteen+0x100>
    482a:	fd843583          	ld	a1,-40(s0)
    482e:	00005517          	auipc	a0,0x5
    4832:	f8250513          	addi	a0,a0,-126 # 97b0 <malloc+0x17c6>
    4836:	00003097          	auipc	ra,0x3
    483a:	5c2080e7          	jalr	1474(ra) # 7df8 <printf>
    483e:	4505                	li	a0,1
    4840:	00003097          	auipc	ra,0x3
    4844:	068080e7          	jalr	104(ra) # 78a8 <exit>
    4848:	fec42783          	lw	a5,-20(s0)
    484c:	853e                	mv	a0,a5
    484e:	00003097          	auipc	ra,0x3
    4852:	082080e7          	jalr	130(ra) # 78d0 <close>
    4856:	00005517          	auipc	a0,0x5
    485a:	f9a50513          	addi	a0,a0,-102 # 97f0 <malloc+0x1806>
    485e:	00003097          	auipc	ra,0x3
    4862:	0b2080e7          	jalr	178(ra) # 7910 <mkdir>
    4866:	87aa                	mv	a5,a0
    4868:	e385                	bnez	a5,4888 <fourteen+0x140>
    486a:	fd843583          	ld	a1,-40(s0)
    486e:	00005517          	auipc	a0,0x5
    4872:	fa250513          	addi	a0,a0,-94 # 9810 <malloc+0x1826>
    4876:	00003097          	auipc	ra,0x3
    487a:	582080e7          	jalr	1410(ra) # 7df8 <printf>
    487e:	4505                	li	a0,1
    4880:	00003097          	auipc	ra,0x3
    4884:	028080e7          	jalr	40(ra) # 78a8 <exit>
    4888:	00005517          	auipc	a0,0x5
    488c:	fc050513          	addi	a0,a0,-64 # 9848 <malloc+0x185e>
    4890:	00003097          	auipc	ra,0x3
    4894:	080080e7          	jalr	128(ra) # 7910 <mkdir>
    4898:	87aa                	mv	a5,a0
    489a:	e385                	bnez	a5,48ba <fourteen+0x172>
    489c:	fd843583          	ld	a1,-40(s0)
    48a0:	00005517          	auipc	a0,0x5
    48a4:	fc850513          	addi	a0,a0,-56 # 9868 <malloc+0x187e>
    48a8:	00003097          	auipc	ra,0x3
    48ac:	550080e7          	jalr	1360(ra) # 7df8 <printf>
    48b0:	4505                	li	a0,1
    48b2:	00003097          	auipc	ra,0x3
    48b6:	ff6080e7          	jalr	-10(ra) # 78a8 <exit>
    48ba:	00005517          	auipc	a0,0x5
    48be:	f8e50513          	addi	a0,a0,-114 # 9848 <malloc+0x185e>
    48c2:	00003097          	auipc	ra,0x3
    48c6:	036080e7          	jalr	54(ra) # 78f8 <unlink>
    48ca:	00005517          	auipc	a0,0x5
    48ce:	f2650513          	addi	a0,a0,-218 # 97f0 <malloc+0x1806>
    48d2:	00003097          	auipc	ra,0x3
    48d6:	026080e7          	jalr	38(ra) # 78f8 <unlink>
    48da:	00005517          	auipc	a0,0x5
    48de:	ea650513          	addi	a0,a0,-346 # 9780 <malloc+0x1796>
    48e2:	00003097          	auipc	ra,0x3
    48e6:	016080e7          	jalr	22(ra) # 78f8 <unlink>
    48ea:	00005517          	auipc	a0,0x5
    48ee:	e1e50513          	addi	a0,a0,-482 # 9708 <malloc+0x171e>
    48f2:	00003097          	auipc	ra,0x3
    48f6:	006080e7          	jalr	6(ra) # 78f8 <unlink>
    48fa:	00005517          	auipc	a0,0x5
    48fe:	db650513          	addi	a0,a0,-586 # 96b0 <malloc+0x16c6>
    4902:	00003097          	auipc	ra,0x3
    4906:	ff6080e7          	jalr	-10(ra) # 78f8 <unlink>
    490a:	00005517          	auipc	a0,0x5
    490e:	d6e50513          	addi	a0,a0,-658 # 9678 <malloc+0x168e>
    4912:	00003097          	auipc	ra,0x3
    4916:	fe6080e7          	jalr	-26(ra) # 78f8 <unlink>
    491a:	0001                	nop
    491c:	70a2                	ld	ra,40(sp)
    491e:	7402                	ld	s0,32(sp)
    4920:	6145                	addi	sp,sp,48
    4922:	8082                	ret

0000000000004924 <rmdot>:
    4924:	1101                	addi	sp,sp,-32
    4926:	ec06                	sd	ra,24(sp)
    4928:	e822                	sd	s0,16(sp)
    492a:	1000                	addi	s0,sp,32
    492c:	fea43423          	sd	a0,-24(s0)
    4930:	00005517          	auipc	a0,0x5
    4934:	f7050513          	addi	a0,a0,-144 # 98a0 <malloc+0x18b6>
    4938:	00003097          	auipc	ra,0x3
    493c:	fd8080e7          	jalr	-40(ra) # 7910 <mkdir>
    4940:	87aa                	mv	a5,a0
    4942:	c385                	beqz	a5,4962 <rmdot+0x3e>
    4944:	fe843583          	ld	a1,-24(s0)
    4948:	00005517          	auipc	a0,0x5
    494c:	f6050513          	addi	a0,a0,-160 # 98a8 <malloc+0x18be>
    4950:	00003097          	auipc	ra,0x3
    4954:	4a8080e7          	jalr	1192(ra) # 7df8 <printf>
    4958:	4505                	li	a0,1
    495a:	00003097          	auipc	ra,0x3
    495e:	f4e080e7          	jalr	-178(ra) # 78a8 <exit>
    4962:	00005517          	auipc	a0,0x5
    4966:	f3e50513          	addi	a0,a0,-194 # 98a0 <malloc+0x18b6>
    496a:	00003097          	auipc	ra,0x3
    496e:	fae080e7          	jalr	-82(ra) # 7918 <chdir>
    4972:	87aa                	mv	a5,a0
    4974:	c385                	beqz	a5,4994 <rmdot+0x70>
    4976:	fe843583          	ld	a1,-24(s0)
    497a:	00005517          	auipc	a0,0x5
    497e:	f4650513          	addi	a0,a0,-186 # 98c0 <malloc+0x18d6>
    4982:	00003097          	auipc	ra,0x3
    4986:	476080e7          	jalr	1142(ra) # 7df8 <printf>
    498a:	4505                	li	a0,1
    498c:	00003097          	auipc	ra,0x3
    4990:	f1c080e7          	jalr	-228(ra) # 78a8 <exit>
    4994:	00004517          	auipc	a0,0x4
    4998:	56450513          	addi	a0,a0,1380 # 8ef8 <malloc+0xf0e>
    499c:	00003097          	auipc	ra,0x3
    49a0:	f5c080e7          	jalr	-164(ra) # 78f8 <unlink>
    49a4:	87aa                	mv	a5,a0
    49a6:	e385                	bnez	a5,49c6 <rmdot+0xa2>
    49a8:	fe843583          	ld	a1,-24(s0)
    49ac:	00005517          	auipc	a0,0x5
    49b0:	f2c50513          	addi	a0,a0,-212 # 98d8 <malloc+0x18ee>
    49b4:	00003097          	auipc	ra,0x3
    49b8:	444080e7          	jalr	1092(ra) # 7df8 <printf>
    49bc:	4505                	li	a0,1
    49be:	00003097          	auipc	ra,0x3
    49c2:	eea080e7          	jalr	-278(ra) # 78a8 <exit>
    49c6:	00004517          	auipc	a0,0x4
    49ca:	f8a50513          	addi	a0,a0,-118 # 8950 <malloc+0x966>
    49ce:	00003097          	auipc	ra,0x3
    49d2:	f2a080e7          	jalr	-214(ra) # 78f8 <unlink>
    49d6:	87aa                	mv	a5,a0
    49d8:	e385                	bnez	a5,49f8 <rmdot+0xd4>
    49da:	fe843583          	ld	a1,-24(s0)
    49de:	00005517          	auipc	a0,0x5
    49e2:	f1250513          	addi	a0,a0,-238 # 98f0 <malloc+0x1906>
    49e6:	00003097          	auipc	ra,0x3
    49ea:	412080e7          	jalr	1042(ra) # 7df8 <printf>
    49ee:	4505                	li	a0,1
    49f0:	00003097          	auipc	ra,0x3
    49f4:	eb8080e7          	jalr	-328(ra) # 78a8 <exit>
    49f8:	00004517          	auipc	a0,0x4
    49fc:	c7050513          	addi	a0,a0,-912 # 8668 <malloc+0x67e>
    4a00:	00003097          	auipc	ra,0x3
    4a04:	f18080e7          	jalr	-232(ra) # 7918 <chdir>
    4a08:	87aa                	mv	a5,a0
    4a0a:	c385                	beqz	a5,4a2a <rmdot+0x106>
    4a0c:	fe843583          	ld	a1,-24(s0)
    4a10:	00004517          	auipc	a0,0x4
    4a14:	c6050513          	addi	a0,a0,-928 # 8670 <malloc+0x686>
    4a18:	00003097          	auipc	ra,0x3
    4a1c:	3e0080e7          	jalr	992(ra) # 7df8 <printf>
    4a20:	4505                	li	a0,1
    4a22:	00003097          	auipc	ra,0x3
    4a26:	e86080e7          	jalr	-378(ra) # 78a8 <exit>
    4a2a:	00005517          	auipc	a0,0x5
    4a2e:	ede50513          	addi	a0,a0,-290 # 9908 <malloc+0x191e>
    4a32:	00003097          	auipc	ra,0x3
    4a36:	ec6080e7          	jalr	-314(ra) # 78f8 <unlink>
    4a3a:	87aa                	mv	a5,a0
    4a3c:	e385                	bnez	a5,4a5c <rmdot+0x138>
    4a3e:	fe843583          	ld	a1,-24(s0)
    4a42:	00005517          	auipc	a0,0x5
    4a46:	ece50513          	addi	a0,a0,-306 # 9910 <malloc+0x1926>
    4a4a:	00003097          	auipc	ra,0x3
    4a4e:	3ae080e7          	jalr	942(ra) # 7df8 <printf>
    4a52:	4505                	li	a0,1
    4a54:	00003097          	auipc	ra,0x3
    4a58:	e54080e7          	jalr	-428(ra) # 78a8 <exit>
    4a5c:	00005517          	auipc	a0,0x5
    4a60:	ed450513          	addi	a0,a0,-300 # 9930 <malloc+0x1946>
    4a64:	00003097          	auipc	ra,0x3
    4a68:	e94080e7          	jalr	-364(ra) # 78f8 <unlink>
    4a6c:	87aa                	mv	a5,a0
    4a6e:	e385                	bnez	a5,4a8e <rmdot+0x16a>
    4a70:	fe843583          	ld	a1,-24(s0)
    4a74:	00005517          	auipc	a0,0x5
    4a78:	ec450513          	addi	a0,a0,-316 # 9938 <malloc+0x194e>
    4a7c:	00003097          	auipc	ra,0x3
    4a80:	37c080e7          	jalr	892(ra) # 7df8 <printf>
    4a84:	4505                	li	a0,1
    4a86:	00003097          	auipc	ra,0x3
    4a8a:	e22080e7          	jalr	-478(ra) # 78a8 <exit>
    4a8e:	00005517          	auipc	a0,0x5
    4a92:	e1250513          	addi	a0,a0,-494 # 98a0 <malloc+0x18b6>
    4a96:	00003097          	auipc	ra,0x3
    4a9a:	e62080e7          	jalr	-414(ra) # 78f8 <unlink>
    4a9e:	87aa                	mv	a5,a0
    4aa0:	c385                	beqz	a5,4ac0 <rmdot+0x19c>
    4aa2:	fe843583          	ld	a1,-24(s0)
    4aa6:	00005517          	auipc	a0,0x5
    4aaa:	eb250513          	addi	a0,a0,-334 # 9958 <malloc+0x196e>
    4aae:	00003097          	auipc	ra,0x3
    4ab2:	34a080e7          	jalr	842(ra) # 7df8 <printf>
    4ab6:	4505                	li	a0,1
    4ab8:	00003097          	auipc	ra,0x3
    4abc:	df0080e7          	jalr	-528(ra) # 78a8 <exit>
    4ac0:	0001                	nop
    4ac2:	60e2                	ld	ra,24(sp)
    4ac4:	6442                	ld	s0,16(sp)
    4ac6:	6105                	addi	sp,sp,32
    4ac8:	8082                	ret

0000000000004aca <dirfile>:
    4aca:	7179                	addi	sp,sp,-48
    4acc:	f406                	sd	ra,40(sp)
    4ace:	f022                	sd	s0,32(sp)
    4ad0:	1800                	addi	s0,sp,48
    4ad2:	fca43c23          	sd	a0,-40(s0)
    4ad6:	20000593          	li	a1,512
    4ada:	00005517          	auipc	a0,0x5
    4ade:	e9e50513          	addi	a0,a0,-354 # 9978 <malloc+0x198e>
    4ae2:	00003097          	auipc	ra,0x3
    4ae6:	e06080e7          	jalr	-506(ra) # 78e8 <open>
    4aea:	87aa                	mv	a5,a0
    4aec:	fef42623          	sw	a5,-20(s0)
    4af0:	fec42783          	lw	a5,-20(s0)
    4af4:	2781                	sext.w	a5,a5
    4af6:	0207d163          	bgez	a5,4b18 <dirfile+0x4e>
    4afa:	fd843583          	ld	a1,-40(s0)
    4afe:	00005517          	auipc	a0,0x5
    4b02:	e8250513          	addi	a0,a0,-382 # 9980 <malloc+0x1996>
    4b06:	00003097          	auipc	ra,0x3
    4b0a:	2f2080e7          	jalr	754(ra) # 7df8 <printf>
    4b0e:	4505                	li	a0,1
    4b10:	00003097          	auipc	ra,0x3
    4b14:	d98080e7          	jalr	-616(ra) # 78a8 <exit>
    4b18:	fec42783          	lw	a5,-20(s0)
    4b1c:	853e                	mv	a0,a5
    4b1e:	00003097          	auipc	ra,0x3
    4b22:	db2080e7          	jalr	-590(ra) # 78d0 <close>
    4b26:	00005517          	auipc	a0,0x5
    4b2a:	e5250513          	addi	a0,a0,-430 # 9978 <malloc+0x198e>
    4b2e:	00003097          	auipc	ra,0x3
    4b32:	dea080e7          	jalr	-534(ra) # 7918 <chdir>
    4b36:	87aa                	mv	a5,a0
    4b38:	e385                	bnez	a5,4b58 <dirfile+0x8e>
    4b3a:	fd843583          	ld	a1,-40(s0)
    4b3e:	00005517          	auipc	a0,0x5
    4b42:	e6250513          	addi	a0,a0,-414 # 99a0 <malloc+0x19b6>
    4b46:	00003097          	auipc	ra,0x3
    4b4a:	2b2080e7          	jalr	690(ra) # 7df8 <printf>
    4b4e:	4505                	li	a0,1
    4b50:	00003097          	auipc	ra,0x3
    4b54:	d58080e7          	jalr	-680(ra) # 78a8 <exit>
    4b58:	4581                	li	a1,0
    4b5a:	00005517          	auipc	a0,0x5
    4b5e:	e6650513          	addi	a0,a0,-410 # 99c0 <malloc+0x19d6>
    4b62:	00003097          	auipc	ra,0x3
    4b66:	d86080e7          	jalr	-634(ra) # 78e8 <open>
    4b6a:	87aa                	mv	a5,a0
    4b6c:	fef42623          	sw	a5,-20(s0)
    4b70:	fec42783          	lw	a5,-20(s0)
    4b74:	2781                	sext.w	a5,a5
    4b76:	0207c163          	bltz	a5,4b98 <dirfile+0xce>
    4b7a:	fd843583          	ld	a1,-40(s0)
    4b7e:	00005517          	auipc	a0,0x5
    4b82:	e5250513          	addi	a0,a0,-430 # 99d0 <malloc+0x19e6>
    4b86:	00003097          	auipc	ra,0x3
    4b8a:	272080e7          	jalr	626(ra) # 7df8 <printf>
    4b8e:	4505                	li	a0,1
    4b90:	00003097          	auipc	ra,0x3
    4b94:	d18080e7          	jalr	-744(ra) # 78a8 <exit>
    4b98:	20000593          	li	a1,512
    4b9c:	00005517          	auipc	a0,0x5
    4ba0:	e2450513          	addi	a0,a0,-476 # 99c0 <malloc+0x19d6>
    4ba4:	00003097          	auipc	ra,0x3
    4ba8:	d44080e7          	jalr	-700(ra) # 78e8 <open>
    4bac:	87aa                	mv	a5,a0
    4bae:	fef42623          	sw	a5,-20(s0)
    4bb2:	fec42783          	lw	a5,-20(s0)
    4bb6:	2781                	sext.w	a5,a5
    4bb8:	0207c163          	bltz	a5,4bda <dirfile+0x110>
    4bbc:	fd843583          	ld	a1,-40(s0)
    4bc0:	00005517          	auipc	a0,0x5
    4bc4:	e1050513          	addi	a0,a0,-496 # 99d0 <malloc+0x19e6>
    4bc8:	00003097          	auipc	ra,0x3
    4bcc:	230080e7          	jalr	560(ra) # 7df8 <printf>
    4bd0:	4505                	li	a0,1
    4bd2:	00003097          	auipc	ra,0x3
    4bd6:	cd6080e7          	jalr	-810(ra) # 78a8 <exit>
    4bda:	00005517          	auipc	a0,0x5
    4bde:	de650513          	addi	a0,a0,-538 # 99c0 <malloc+0x19d6>
    4be2:	00003097          	auipc	ra,0x3
    4be6:	d2e080e7          	jalr	-722(ra) # 7910 <mkdir>
    4bea:	87aa                	mv	a5,a0
    4bec:	e385                	bnez	a5,4c0c <dirfile+0x142>
    4bee:	fd843583          	ld	a1,-40(s0)
    4bf2:	00005517          	auipc	a0,0x5
    4bf6:	e0650513          	addi	a0,a0,-506 # 99f8 <malloc+0x1a0e>
    4bfa:	00003097          	auipc	ra,0x3
    4bfe:	1fe080e7          	jalr	510(ra) # 7df8 <printf>
    4c02:	4505                	li	a0,1
    4c04:	00003097          	auipc	ra,0x3
    4c08:	ca4080e7          	jalr	-860(ra) # 78a8 <exit>
    4c0c:	00005517          	auipc	a0,0x5
    4c10:	db450513          	addi	a0,a0,-588 # 99c0 <malloc+0x19d6>
    4c14:	00003097          	auipc	ra,0x3
    4c18:	ce4080e7          	jalr	-796(ra) # 78f8 <unlink>
    4c1c:	87aa                	mv	a5,a0
    4c1e:	e385                	bnez	a5,4c3e <dirfile+0x174>
    4c20:	fd843583          	ld	a1,-40(s0)
    4c24:	00005517          	auipc	a0,0x5
    4c28:	dfc50513          	addi	a0,a0,-516 # 9a20 <malloc+0x1a36>
    4c2c:	00003097          	auipc	ra,0x3
    4c30:	1cc080e7          	jalr	460(ra) # 7df8 <printf>
    4c34:	4505                	li	a0,1
    4c36:	00003097          	auipc	ra,0x3
    4c3a:	c72080e7          	jalr	-910(ra) # 78a8 <exit>
    4c3e:	00005597          	auipc	a1,0x5
    4c42:	d8258593          	addi	a1,a1,-638 # 99c0 <malloc+0x19d6>
    4c46:	00003517          	auipc	a0,0x3
    4c4a:	5aa50513          	addi	a0,a0,1450 # 81f0 <malloc+0x206>
    4c4e:	00003097          	auipc	ra,0x3
    4c52:	cba080e7          	jalr	-838(ra) # 7908 <link>
    4c56:	87aa                	mv	a5,a0
    4c58:	e385                	bnez	a5,4c78 <dirfile+0x1ae>
    4c5a:	fd843583          	ld	a1,-40(s0)
    4c5e:	00005517          	auipc	a0,0x5
    4c62:	dea50513          	addi	a0,a0,-534 # 9a48 <malloc+0x1a5e>
    4c66:	00003097          	auipc	ra,0x3
    4c6a:	192080e7          	jalr	402(ra) # 7df8 <printf>
    4c6e:	4505                	li	a0,1
    4c70:	00003097          	auipc	ra,0x3
    4c74:	c38080e7          	jalr	-968(ra) # 78a8 <exit>
    4c78:	00005517          	auipc	a0,0x5
    4c7c:	d0050513          	addi	a0,a0,-768 # 9978 <malloc+0x198e>
    4c80:	00003097          	auipc	ra,0x3
    4c84:	c78080e7          	jalr	-904(ra) # 78f8 <unlink>
    4c88:	87aa                	mv	a5,a0
    4c8a:	c385                	beqz	a5,4caa <dirfile+0x1e0>
    4c8c:	fd843583          	ld	a1,-40(s0)
    4c90:	00005517          	auipc	a0,0x5
    4c94:	de050513          	addi	a0,a0,-544 # 9a70 <malloc+0x1a86>
    4c98:	00003097          	auipc	ra,0x3
    4c9c:	160080e7          	jalr	352(ra) # 7df8 <printf>
    4ca0:	4505                	li	a0,1
    4ca2:	00003097          	auipc	ra,0x3
    4ca6:	c06080e7          	jalr	-1018(ra) # 78a8 <exit>
    4caa:	4589                	li	a1,2
    4cac:	00004517          	auipc	a0,0x4
    4cb0:	24c50513          	addi	a0,a0,588 # 8ef8 <malloc+0xf0e>
    4cb4:	00003097          	auipc	ra,0x3
    4cb8:	c34080e7          	jalr	-972(ra) # 78e8 <open>
    4cbc:	87aa                	mv	a5,a0
    4cbe:	fef42623          	sw	a5,-20(s0)
    4cc2:	fec42783          	lw	a5,-20(s0)
    4cc6:	2781                	sext.w	a5,a5
    4cc8:	0207c163          	bltz	a5,4cea <dirfile+0x220>
    4ccc:	fd843583          	ld	a1,-40(s0)
    4cd0:	00005517          	auipc	a0,0x5
    4cd4:	dc050513          	addi	a0,a0,-576 # 9a90 <malloc+0x1aa6>
    4cd8:	00003097          	auipc	ra,0x3
    4cdc:	120080e7          	jalr	288(ra) # 7df8 <printf>
    4ce0:	4505                	li	a0,1
    4ce2:	00003097          	auipc	ra,0x3
    4ce6:	bc6080e7          	jalr	-1082(ra) # 78a8 <exit>
    4cea:	4581                	li	a1,0
    4cec:	00004517          	auipc	a0,0x4
    4cf0:	20c50513          	addi	a0,a0,524 # 8ef8 <malloc+0xf0e>
    4cf4:	00003097          	auipc	ra,0x3
    4cf8:	bf4080e7          	jalr	-1036(ra) # 78e8 <open>
    4cfc:	87aa                	mv	a5,a0
    4cfe:	fef42623          	sw	a5,-20(s0)
    4d02:	fec42783          	lw	a5,-20(s0)
    4d06:	4605                	li	a2,1
    4d08:	00003597          	auipc	a1,0x3
    4d0c:	53858593          	addi	a1,a1,1336 # 8240 <malloc+0x256>
    4d10:	853e                	mv	a0,a5
    4d12:	00003097          	auipc	ra,0x3
    4d16:	bb6080e7          	jalr	-1098(ra) # 78c8 <write>
    4d1a:	87aa                	mv	a5,a0
    4d1c:	02f05163          	blez	a5,4d3e <dirfile+0x274>
    4d20:	fd843583          	ld	a1,-40(s0)
    4d24:	00005517          	auipc	a0,0x5
    4d28:	d9450513          	addi	a0,a0,-620 # 9ab8 <malloc+0x1ace>
    4d2c:	00003097          	auipc	ra,0x3
    4d30:	0cc080e7          	jalr	204(ra) # 7df8 <printf>
    4d34:	4505                	li	a0,1
    4d36:	00003097          	auipc	ra,0x3
    4d3a:	b72080e7          	jalr	-1166(ra) # 78a8 <exit>
    4d3e:	fec42783          	lw	a5,-20(s0)
    4d42:	853e                	mv	a0,a5
    4d44:	00003097          	auipc	ra,0x3
    4d48:	b8c080e7          	jalr	-1140(ra) # 78d0 <close>
    4d4c:	0001                	nop
    4d4e:	70a2                	ld	ra,40(sp)
    4d50:	7402                	ld	s0,32(sp)
    4d52:	6145                	addi	sp,sp,48
    4d54:	8082                	ret

0000000000004d56 <iref>:
    4d56:	7179                	addi	sp,sp,-48
    4d58:	f406                	sd	ra,40(sp)
    4d5a:	f022                	sd	s0,32(sp)
    4d5c:	1800                	addi	s0,sp,48
    4d5e:	fca43c23          	sd	a0,-40(s0)
    4d62:	fe042623          	sw	zero,-20(s0)
    4d66:	a231                	j	4e72 <iref+0x11c>
    4d68:	00005517          	auipc	a0,0x5
    4d6c:	d6850513          	addi	a0,a0,-664 # 9ad0 <malloc+0x1ae6>
    4d70:	00003097          	auipc	ra,0x3
    4d74:	ba0080e7          	jalr	-1120(ra) # 7910 <mkdir>
    4d78:	87aa                	mv	a5,a0
    4d7a:	c385                	beqz	a5,4d9a <iref+0x44>
    4d7c:	fd843583          	ld	a1,-40(s0)
    4d80:	00005517          	auipc	a0,0x5
    4d84:	d5850513          	addi	a0,a0,-680 # 9ad8 <malloc+0x1aee>
    4d88:	00003097          	auipc	ra,0x3
    4d8c:	070080e7          	jalr	112(ra) # 7df8 <printf>
    4d90:	4505                	li	a0,1
    4d92:	00003097          	auipc	ra,0x3
    4d96:	b16080e7          	jalr	-1258(ra) # 78a8 <exit>
    4d9a:	00005517          	auipc	a0,0x5
    4d9e:	d3650513          	addi	a0,a0,-714 # 9ad0 <malloc+0x1ae6>
    4da2:	00003097          	auipc	ra,0x3
    4da6:	b76080e7          	jalr	-1162(ra) # 7918 <chdir>
    4daa:	87aa                	mv	a5,a0
    4dac:	c385                	beqz	a5,4dcc <iref+0x76>
    4dae:	fd843583          	ld	a1,-40(s0)
    4db2:	00005517          	auipc	a0,0x5
    4db6:	d3e50513          	addi	a0,a0,-706 # 9af0 <malloc+0x1b06>
    4dba:	00003097          	auipc	ra,0x3
    4dbe:	03e080e7          	jalr	62(ra) # 7df8 <printf>
    4dc2:	4505                	li	a0,1
    4dc4:	00003097          	auipc	ra,0x3
    4dc8:	ae4080e7          	jalr	-1308(ra) # 78a8 <exit>
    4dcc:	00005517          	auipc	a0,0x5
    4dd0:	d3c50513          	addi	a0,a0,-708 # 9b08 <malloc+0x1b1e>
    4dd4:	00003097          	auipc	ra,0x3
    4dd8:	b3c080e7          	jalr	-1220(ra) # 7910 <mkdir>
    4ddc:	00005597          	auipc	a1,0x5
    4de0:	d2c58593          	addi	a1,a1,-724 # 9b08 <malloc+0x1b1e>
    4de4:	00003517          	auipc	a0,0x3
    4de8:	40c50513          	addi	a0,a0,1036 # 81f0 <malloc+0x206>
    4dec:	00003097          	auipc	ra,0x3
    4df0:	b1c080e7          	jalr	-1252(ra) # 7908 <link>
    4df4:	20000593          	li	a1,512
    4df8:	00005517          	auipc	a0,0x5
    4dfc:	d1050513          	addi	a0,a0,-752 # 9b08 <malloc+0x1b1e>
    4e00:	00003097          	auipc	ra,0x3
    4e04:	ae8080e7          	jalr	-1304(ra) # 78e8 <open>
    4e08:	87aa                	mv	a5,a0
    4e0a:	fef42423          	sw	a5,-24(s0)
    4e0e:	fe842783          	lw	a5,-24(s0)
    4e12:	2781                	sext.w	a5,a5
    4e14:	0007c963          	bltz	a5,4e26 <iref+0xd0>
    4e18:	fe842783          	lw	a5,-24(s0)
    4e1c:	853e                	mv	a0,a5
    4e1e:	00003097          	auipc	ra,0x3
    4e22:	ab2080e7          	jalr	-1358(ra) # 78d0 <close>
    4e26:	20000593          	li	a1,512
    4e2a:	00003517          	auipc	a0,0x3
    4e2e:	4ee50513          	addi	a0,a0,1262 # 8318 <malloc+0x32e>
    4e32:	00003097          	auipc	ra,0x3
    4e36:	ab6080e7          	jalr	-1354(ra) # 78e8 <open>
    4e3a:	87aa                	mv	a5,a0
    4e3c:	fef42423          	sw	a5,-24(s0)
    4e40:	fe842783          	lw	a5,-24(s0)
    4e44:	2781                	sext.w	a5,a5
    4e46:	0007c963          	bltz	a5,4e58 <iref+0x102>
    4e4a:	fe842783          	lw	a5,-24(s0)
    4e4e:	853e                	mv	a0,a5
    4e50:	00003097          	auipc	ra,0x3
    4e54:	a80080e7          	jalr	-1408(ra) # 78d0 <close>
    4e58:	00003517          	auipc	a0,0x3
    4e5c:	4c050513          	addi	a0,a0,1216 # 8318 <malloc+0x32e>
    4e60:	00003097          	auipc	ra,0x3
    4e64:	a98080e7          	jalr	-1384(ra) # 78f8 <unlink>
    4e68:	fec42783          	lw	a5,-20(s0)
    4e6c:	2785                	addiw	a5,a5,1
    4e6e:	fef42623          	sw	a5,-20(s0)
    4e72:	fec42783          	lw	a5,-20(s0)
    4e76:	0007871b          	sext.w	a4,a5
    4e7a:	03200793          	li	a5,50
    4e7e:	eee7d5e3          	bge	a5,a4,4d68 <iref+0x12>
    4e82:	fe042623          	sw	zero,-20(s0)
    4e86:	a035                	j	4eb2 <iref+0x15c>
    4e88:	00004517          	auipc	a0,0x4
    4e8c:	ac850513          	addi	a0,a0,-1336 # 8950 <malloc+0x966>
    4e90:	00003097          	auipc	ra,0x3
    4e94:	a88080e7          	jalr	-1400(ra) # 7918 <chdir>
    4e98:	00005517          	auipc	a0,0x5
    4e9c:	c3850513          	addi	a0,a0,-968 # 9ad0 <malloc+0x1ae6>
    4ea0:	00003097          	auipc	ra,0x3
    4ea4:	a58080e7          	jalr	-1448(ra) # 78f8 <unlink>
    4ea8:	fec42783          	lw	a5,-20(s0)
    4eac:	2785                	addiw	a5,a5,1
    4eae:	fef42623          	sw	a5,-20(s0)
    4eb2:	fec42783          	lw	a5,-20(s0)
    4eb6:	0007871b          	sext.w	a4,a5
    4eba:	03200793          	li	a5,50
    4ebe:	fce7d5e3          	bge	a5,a4,4e88 <iref+0x132>
    4ec2:	00003517          	auipc	a0,0x3
    4ec6:	7a650513          	addi	a0,a0,1958 # 8668 <malloc+0x67e>
    4eca:	00003097          	auipc	ra,0x3
    4ece:	a4e080e7          	jalr	-1458(ra) # 7918 <chdir>
    4ed2:	0001                	nop
    4ed4:	70a2                	ld	ra,40(sp)
    4ed6:	7402                	ld	s0,32(sp)
    4ed8:	6145                	addi	sp,sp,48
    4eda:	8082                	ret

0000000000004edc <forktest>:
    4edc:	7179                	addi	sp,sp,-48
    4ede:	f406                	sd	ra,40(sp)
    4ee0:	f022                	sd	s0,32(sp)
    4ee2:	1800                	addi	s0,sp,48
    4ee4:	fca43c23          	sd	a0,-40(s0)
    4ee8:	fe042623          	sw	zero,-20(s0)
    4eec:	a81d                	j	4f22 <forktest+0x46>
    4eee:	00003097          	auipc	ra,0x3
    4ef2:	9b2080e7          	jalr	-1614(ra) # 78a0 <fork>
    4ef6:	87aa                	mv	a5,a0
    4ef8:	fef42423          	sw	a5,-24(s0)
    4efc:	fe842783          	lw	a5,-24(s0)
    4f00:	2781                	sext.w	a5,a5
    4f02:	0207c963          	bltz	a5,4f34 <forktest+0x58>
    4f06:	fe842783          	lw	a5,-24(s0)
    4f0a:	2781                	sext.w	a5,a5
    4f0c:	e791                	bnez	a5,4f18 <forktest+0x3c>
    4f0e:	4501                	li	a0,0
    4f10:	00003097          	auipc	ra,0x3
    4f14:	998080e7          	jalr	-1640(ra) # 78a8 <exit>
    4f18:	fec42783          	lw	a5,-20(s0)
    4f1c:	2785                	addiw	a5,a5,1
    4f1e:	fef42623          	sw	a5,-20(s0)
    4f22:	fec42783          	lw	a5,-20(s0)
    4f26:	0007871b          	sext.w	a4,a5
    4f2a:	3e700793          	li	a5,999
    4f2e:	fce7d0e3          	bge	a5,a4,4eee <forktest+0x12>
    4f32:	a011                	j	4f36 <forktest+0x5a>
    4f34:	0001                	nop
    4f36:	fec42783          	lw	a5,-20(s0)
    4f3a:	2781                	sext.w	a5,a5
    4f3c:	e385                	bnez	a5,4f5c <forktest+0x80>
    4f3e:	fd843583          	ld	a1,-40(s0)
    4f42:	00005517          	auipc	a0,0x5
    4f46:	bce50513          	addi	a0,a0,-1074 # 9b10 <malloc+0x1b26>
    4f4a:	00003097          	auipc	ra,0x3
    4f4e:	eae080e7          	jalr	-338(ra) # 7df8 <printf>
    4f52:	4505                	li	a0,1
    4f54:	00003097          	auipc	ra,0x3
    4f58:	954080e7          	jalr	-1708(ra) # 78a8 <exit>
    4f5c:	fec42783          	lw	a5,-20(s0)
    4f60:	0007871b          	sext.w	a4,a5
    4f64:	3e800793          	li	a5,1000
    4f68:	04f71d63          	bne	a4,a5,4fc2 <forktest+0xe6>
    4f6c:	fd843583          	ld	a1,-40(s0)
    4f70:	00005517          	auipc	a0,0x5
    4f74:	bb850513          	addi	a0,a0,-1096 # 9b28 <malloc+0x1b3e>
    4f78:	00003097          	auipc	ra,0x3
    4f7c:	e80080e7          	jalr	-384(ra) # 7df8 <printf>
    4f80:	4505                	li	a0,1
    4f82:	00003097          	auipc	ra,0x3
    4f86:	926080e7          	jalr	-1754(ra) # 78a8 <exit>
    4f8a:	4501                	li	a0,0
    4f8c:	00003097          	auipc	ra,0x3
    4f90:	924080e7          	jalr	-1756(ra) # 78b0 <wait>
    4f94:	87aa                	mv	a5,a0
    4f96:	0207d163          	bgez	a5,4fb8 <forktest+0xdc>
    4f9a:	fd843583          	ld	a1,-40(s0)
    4f9e:	00005517          	auipc	a0,0x5
    4fa2:	bb250513          	addi	a0,a0,-1102 # 9b50 <malloc+0x1b66>
    4fa6:	00003097          	auipc	ra,0x3
    4faa:	e52080e7          	jalr	-430(ra) # 7df8 <printf>
    4fae:	4505                	li	a0,1
    4fb0:	00003097          	auipc	ra,0x3
    4fb4:	8f8080e7          	jalr	-1800(ra) # 78a8 <exit>
    4fb8:	fec42783          	lw	a5,-20(s0)
    4fbc:	37fd                	addiw	a5,a5,-1
    4fbe:	fef42623          	sw	a5,-20(s0)
    4fc2:	fec42783          	lw	a5,-20(s0)
    4fc6:	2781                	sext.w	a5,a5
    4fc8:	fcf041e3          	bgtz	a5,4f8a <forktest+0xae>
    4fcc:	4501                	li	a0,0
    4fce:	00003097          	auipc	ra,0x3
    4fd2:	8e2080e7          	jalr	-1822(ra) # 78b0 <wait>
    4fd6:	87aa                	mv	a5,a0
    4fd8:	873e                	mv	a4,a5
    4fda:	57fd                	li	a5,-1
    4fdc:	02f70163          	beq	a4,a5,4ffe <forktest+0x122>
    4fe0:	fd843583          	ld	a1,-40(s0)
    4fe4:	00005517          	auipc	a0,0x5
    4fe8:	b8450513          	addi	a0,a0,-1148 # 9b68 <malloc+0x1b7e>
    4fec:	00003097          	auipc	ra,0x3
    4ff0:	e0c080e7          	jalr	-500(ra) # 7df8 <printf>
    4ff4:	4505                	li	a0,1
    4ff6:	00003097          	auipc	ra,0x3
    4ffa:	8b2080e7          	jalr	-1870(ra) # 78a8 <exit>
    4ffe:	0001                	nop
    5000:	70a2                	ld	ra,40(sp)
    5002:	7402                	ld	s0,32(sp)
    5004:	6145                	addi	sp,sp,48
    5006:	8082                	ret

0000000000005008 <sbrkbasic>:
    5008:	715d                	addi	sp,sp,-80
    500a:	e486                	sd	ra,72(sp)
    500c:	e0a2                	sd	s0,64(sp)
    500e:	0880                	addi	s0,sp,80
    5010:	faa43c23          	sd	a0,-72(s0)
    5014:	00003097          	auipc	ra,0x3
    5018:	88c080e7          	jalr	-1908(ra) # 78a0 <fork>
    501c:	87aa                	mv	a5,a0
    501e:	fcf42a23          	sw	a5,-44(s0)
    5022:	fd442783          	lw	a5,-44(s0)
    5026:	2781                	sext.w	a5,a5
    5028:	0007df63          	bgez	a5,5046 <sbrkbasic+0x3e>
    502c:	00005517          	auipc	a0,0x5
    5030:	b5450513          	addi	a0,a0,-1196 # 9b80 <malloc+0x1b96>
    5034:	00003097          	auipc	ra,0x3
    5038:	dc4080e7          	jalr	-572(ra) # 7df8 <printf>
    503c:	4505                	li	a0,1
    503e:	00003097          	auipc	ra,0x3
    5042:	86a080e7          	jalr	-1942(ra) # 78a8 <exit>
    5046:	fd442783          	lw	a5,-44(s0)
    504a:	2781                	sext.w	a5,a5
    504c:	e3b5                	bnez	a5,50b0 <sbrkbasic+0xa8>
    504e:	40000537          	lui	a0,0x40000
    5052:	00003097          	auipc	ra,0x3
    5056:	8de080e7          	jalr	-1826(ra) # 7930 <sbrk>
    505a:	fea43023          	sd	a0,-32(s0)
    505e:	fe043703          	ld	a4,-32(s0)
    5062:	57fd                	li	a5,-1
    5064:	00f71763          	bne	a4,a5,5072 <sbrkbasic+0x6a>
    5068:	4501                	li	a0,0
    506a:	00003097          	auipc	ra,0x3
    506e:	83e080e7          	jalr	-1986(ra) # 78a8 <exit>
    5072:	fe043783          	ld	a5,-32(s0)
    5076:	fcf43c23          	sd	a5,-40(s0)
    507a:	a829                	j	5094 <sbrkbasic+0x8c>
    507c:	fd843783          	ld	a5,-40(s0)
    5080:	06300713          	li	a4,99
    5084:	00e78023          	sb	a4,0(a5)
    5088:	fd843703          	ld	a4,-40(s0)
    508c:	6785                	lui	a5,0x1
    508e:	97ba                	add	a5,a5,a4
    5090:	fcf43c23          	sd	a5,-40(s0)
    5094:	fe043703          	ld	a4,-32(s0)
    5098:	400007b7          	lui	a5,0x40000
    509c:	97ba                	add	a5,a5,a4
    509e:	fd843703          	ld	a4,-40(s0)
    50a2:	fcf76de3          	bltu	a4,a5,507c <sbrkbasic+0x74>
    50a6:	4505                	li	a0,1
    50a8:	00003097          	auipc	ra,0x3
    50ac:	800080e7          	jalr	-2048(ra) # 78a8 <exit>
    50b0:	fc440793          	addi	a5,s0,-60
    50b4:	853e                	mv	a0,a5
    50b6:	00002097          	auipc	ra,0x2
    50ba:	7fa080e7          	jalr	2042(ra) # 78b0 <wait>
    50be:	fc442783          	lw	a5,-60(s0)
    50c2:	873e                	mv	a4,a5
    50c4:	4785                	li	a5,1
    50c6:	02f71163          	bne	a4,a5,50e8 <sbrkbasic+0xe0>
    50ca:	fb843583          	ld	a1,-72(s0)
    50ce:	00005517          	auipc	a0,0x5
    50d2:	ad250513          	addi	a0,a0,-1326 # 9ba0 <malloc+0x1bb6>
    50d6:	00003097          	auipc	ra,0x3
    50da:	d22080e7          	jalr	-734(ra) # 7df8 <printf>
    50de:	4505                	li	a0,1
    50e0:	00002097          	auipc	ra,0x2
    50e4:	7c8080e7          	jalr	1992(ra) # 78a8 <exit>
    50e8:	4501                	li	a0,0
    50ea:	00003097          	auipc	ra,0x3
    50ee:	846080e7          	jalr	-1978(ra) # 7930 <sbrk>
    50f2:	fea43023          	sd	a0,-32(s0)
    50f6:	fe042623          	sw	zero,-20(s0)
    50fa:	a09d                	j	5160 <sbrkbasic+0x158>
    50fc:	4505                	li	a0,1
    50fe:	00003097          	auipc	ra,0x3
    5102:	832080e7          	jalr	-1998(ra) # 7930 <sbrk>
    5106:	fca43c23          	sd	a0,-40(s0)
    510a:	fd843703          	ld	a4,-40(s0)
    510e:	fe043783          	ld	a5,-32(s0)
    5112:	02f70863          	beq	a4,a5,5142 <sbrkbasic+0x13a>
    5116:	fec42783          	lw	a5,-20(s0)
    511a:	fd843703          	ld	a4,-40(s0)
    511e:	fe043683          	ld	a3,-32(s0)
    5122:	863e                	mv	a2,a5
    5124:	fb843583          	ld	a1,-72(s0)
    5128:	00005517          	auipc	a0,0x5
    512c:	a9850513          	addi	a0,a0,-1384 # 9bc0 <malloc+0x1bd6>
    5130:	00003097          	auipc	ra,0x3
    5134:	cc8080e7          	jalr	-824(ra) # 7df8 <printf>
    5138:	4505                	li	a0,1
    513a:	00002097          	auipc	ra,0x2
    513e:	76e080e7          	jalr	1902(ra) # 78a8 <exit>
    5142:	fd843783          	ld	a5,-40(s0)
    5146:	4705                	li	a4,1
    5148:	00e78023          	sb	a4,0(a5) # 40000000 <freep+0x3ffee368>
    514c:	fd843783          	ld	a5,-40(s0)
    5150:	0785                	addi	a5,a5,1
    5152:	fef43023          	sd	a5,-32(s0)
    5156:	fec42783          	lw	a5,-20(s0)
    515a:	2785                	addiw	a5,a5,1
    515c:	fef42623          	sw	a5,-20(s0)
    5160:	fec42783          	lw	a5,-20(s0)
    5164:	0007871b          	sext.w	a4,a5
    5168:	6785                	lui	a5,0x1
    516a:	38778793          	addi	a5,a5,903 # 1387 <openiputtest+0xe9>
    516e:	f8e7d7e3          	bge	a5,a4,50fc <sbrkbasic+0xf4>
    5172:	00002097          	auipc	ra,0x2
    5176:	72e080e7          	jalr	1838(ra) # 78a0 <fork>
    517a:	87aa                	mv	a5,a0
    517c:	fcf42a23          	sw	a5,-44(s0)
    5180:	fd442783          	lw	a5,-44(s0)
    5184:	2781                	sext.w	a5,a5
    5186:	0207d163          	bgez	a5,51a8 <sbrkbasic+0x1a0>
    518a:	fb843583          	ld	a1,-72(s0)
    518e:	00005517          	auipc	a0,0x5
    5192:	a5250513          	addi	a0,a0,-1454 # 9be0 <malloc+0x1bf6>
    5196:	00003097          	auipc	ra,0x3
    519a:	c62080e7          	jalr	-926(ra) # 7df8 <printf>
    519e:	4505                	li	a0,1
    51a0:	00002097          	auipc	ra,0x2
    51a4:	708080e7          	jalr	1800(ra) # 78a8 <exit>
    51a8:	4505                	li	a0,1
    51aa:	00002097          	auipc	ra,0x2
    51ae:	786080e7          	jalr	1926(ra) # 7930 <sbrk>
    51b2:	fca43423          	sd	a0,-56(s0)
    51b6:	4505                	li	a0,1
    51b8:	00002097          	auipc	ra,0x2
    51bc:	778080e7          	jalr	1912(ra) # 7930 <sbrk>
    51c0:	fca43423          	sd	a0,-56(s0)
    51c4:	fe043783          	ld	a5,-32(s0)
    51c8:	0785                	addi	a5,a5,1
    51ca:	fc843703          	ld	a4,-56(s0)
    51ce:	02f70163          	beq	a4,a5,51f0 <sbrkbasic+0x1e8>
    51d2:	fb843583          	ld	a1,-72(s0)
    51d6:	00005517          	auipc	a0,0x5
    51da:	a2a50513          	addi	a0,a0,-1494 # 9c00 <malloc+0x1c16>
    51de:	00003097          	auipc	ra,0x3
    51e2:	c1a080e7          	jalr	-998(ra) # 7df8 <printf>
    51e6:	4505                	li	a0,1
    51e8:	00002097          	auipc	ra,0x2
    51ec:	6c0080e7          	jalr	1728(ra) # 78a8 <exit>
    51f0:	fd442783          	lw	a5,-44(s0)
    51f4:	2781                	sext.w	a5,a5
    51f6:	e791                	bnez	a5,5202 <sbrkbasic+0x1fa>
    51f8:	4501                	li	a0,0
    51fa:	00002097          	auipc	ra,0x2
    51fe:	6ae080e7          	jalr	1710(ra) # 78a8 <exit>
    5202:	fc440793          	addi	a5,s0,-60
    5206:	853e                	mv	a0,a5
    5208:	00002097          	auipc	ra,0x2
    520c:	6a8080e7          	jalr	1704(ra) # 78b0 <wait>
    5210:	fc442783          	lw	a5,-60(s0)
    5214:	853e                	mv	a0,a5
    5216:	00002097          	auipc	ra,0x2
    521a:	692080e7          	jalr	1682(ra) # 78a8 <exit>

000000000000521e <sbrkmuch>:
    521e:	711d                	addi	sp,sp,-96
    5220:	ec86                	sd	ra,88(sp)
    5222:	e8a2                	sd	s0,80(sp)
    5224:	1080                	addi	s0,sp,96
    5226:	faa43423          	sd	a0,-88(s0)
    522a:	4501                	li	a0,0
    522c:	00002097          	auipc	ra,0x2
    5230:	704080e7          	jalr	1796(ra) # 7930 <sbrk>
    5234:	fea43023          	sd	a0,-32(s0)
    5238:	4501                	li	a0,0
    523a:	00002097          	auipc	ra,0x2
    523e:	6f6080e7          	jalr	1782(ra) # 7930 <sbrk>
    5242:	fca43c23          	sd	a0,-40(s0)
    5246:	fd843783          	ld	a5,-40(s0)
    524a:	06400737          	lui	a4,0x6400
    524e:	40f707b3          	sub	a5,a4,a5
    5252:	fcf43823          	sd	a5,-48(s0)
    5256:	fd043783          	ld	a5,-48(s0)
    525a:	2781                	sext.w	a5,a5
    525c:	853e                	mv	a0,a5
    525e:	00002097          	auipc	ra,0x2
    5262:	6d2080e7          	jalr	1746(ra) # 7930 <sbrk>
    5266:	fca43423          	sd	a0,-56(s0)
    526a:	fc843703          	ld	a4,-56(s0)
    526e:	fd843783          	ld	a5,-40(s0)
    5272:	02f70163          	beq	a4,a5,5294 <sbrkmuch+0x76>
    5276:	fa843583          	ld	a1,-88(s0)
    527a:	00005517          	auipc	a0,0x5
    527e:	9a650513          	addi	a0,a0,-1626 # 9c20 <malloc+0x1c36>
    5282:	00003097          	auipc	ra,0x3
    5286:	b76080e7          	jalr	-1162(ra) # 7df8 <printf>
    528a:	4505                	li	a0,1
    528c:	00002097          	auipc	ra,0x2
    5290:	61c080e7          	jalr	1564(ra) # 78a8 <exit>
    5294:	4501                	li	a0,0
    5296:	00002097          	auipc	ra,0x2
    529a:	69a080e7          	jalr	1690(ra) # 7930 <sbrk>
    529e:	fca43023          	sd	a0,-64(s0)
    52a2:	fd843783          	ld	a5,-40(s0)
    52a6:	fef43423          	sd	a5,-24(s0)
    52aa:	a821                	j	52c2 <sbrkmuch+0xa4>
    52ac:	fe843783          	ld	a5,-24(s0)
    52b0:	4705                	li	a4,1
    52b2:	00e78023          	sb	a4,0(a5)
    52b6:	fe843703          	ld	a4,-24(s0)
    52ba:	6785                	lui	a5,0x1
    52bc:	97ba                	add	a5,a5,a4
    52be:	fef43423          	sd	a5,-24(s0)
    52c2:	fe843703          	ld	a4,-24(s0)
    52c6:	fc043783          	ld	a5,-64(s0)
    52ca:	fef761e3          	bltu	a4,a5,52ac <sbrkmuch+0x8e>
    52ce:	064007b7          	lui	a5,0x6400
    52d2:	17fd                	addi	a5,a5,-1 # 63fffff <freep+0x63ee367>
    52d4:	faf43c23          	sd	a5,-72(s0)
    52d8:	fb843783          	ld	a5,-72(s0)
    52dc:	06300713          	li	a4,99
    52e0:	00e78023          	sb	a4,0(a5)
    52e4:	4501                	li	a0,0
    52e6:	00002097          	auipc	ra,0x2
    52ea:	64a080e7          	jalr	1610(ra) # 7930 <sbrk>
    52ee:	fca43c23          	sd	a0,-40(s0)
    52f2:	757d                	lui	a0,0xfffff
    52f4:	00002097          	auipc	ra,0x2
    52f8:	63c080e7          	jalr	1596(ra) # 7930 <sbrk>
    52fc:	faa43823          	sd	a0,-80(s0)
    5300:	fb043703          	ld	a4,-80(s0)
    5304:	57fd                	li	a5,-1
    5306:	02f71163          	bne	a4,a5,5328 <sbrkmuch+0x10a>
    530a:	fa843583          	ld	a1,-88(s0)
    530e:	00005517          	auipc	a0,0x5
    5312:	95a50513          	addi	a0,a0,-1702 # 9c68 <malloc+0x1c7e>
    5316:	00003097          	auipc	ra,0x3
    531a:	ae2080e7          	jalr	-1310(ra) # 7df8 <printf>
    531e:	4505                	li	a0,1
    5320:	00002097          	auipc	ra,0x2
    5324:	588080e7          	jalr	1416(ra) # 78a8 <exit>
    5328:	4501                	li	a0,0
    532a:	00002097          	auipc	ra,0x2
    532e:	606080e7          	jalr	1542(ra) # 7930 <sbrk>
    5332:	faa43823          	sd	a0,-80(s0)
    5336:	fd843703          	ld	a4,-40(s0)
    533a:	77fd                	lui	a5,0xfffff
    533c:	97ba                	add	a5,a5,a4
    533e:	fb043703          	ld	a4,-80(s0)
    5342:	02f70563          	beq	a4,a5,536c <sbrkmuch+0x14e>
    5346:	fb043683          	ld	a3,-80(s0)
    534a:	fd843603          	ld	a2,-40(s0)
    534e:	fa843583          	ld	a1,-88(s0)
    5352:	00005517          	auipc	a0,0x5
    5356:	93650513          	addi	a0,a0,-1738 # 9c88 <malloc+0x1c9e>
    535a:	00003097          	auipc	ra,0x3
    535e:	a9e080e7          	jalr	-1378(ra) # 7df8 <printf>
    5362:	4505                	li	a0,1
    5364:	00002097          	auipc	ra,0x2
    5368:	544080e7          	jalr	1348(ra) # 78a8 <exit>
    536c:	4501                	li	a0,0
    536e:	00002097          	auipc	ra,0x2
    5372:	5c2080e7          	jalr	1474(ra) # 7930 <sbrk>
    5376:	fca43c23          	sd	a0,-40(s0)
    537a:	6505                	lui	a0,0x1
    537c:	00002097          	auipc	ra,0x2
    5380:	5b4080e7          	jalr	1460(ra) # 7930 <sbrk>
    5384:	faa43823          	sd	a0,-80(s0)
    5388:	fb043703          	ld	a4,-80(s0)
    538c:	fd843783          	ld	a5,-40(s0)
    5390:	00f71e63          	bne	a4,a5,53ac <sbrkmuch+0x18e>
    5394:	4501                	li	a0,0
    5396:	00002097          	auipc	ra,0x2
    539a:	59a080e7          	jalr	1434(ra) # 7930 <sbrk>
    539e:	86aa                	mv	a3,a0
    53a0:	fd843703          	ld	a4,-40(s0)
    53a4:	6785                	lui	a5,0x1
    53a6:	97ba                	add	a5,a5,a4
    53a8:	02f68563          	beq	a3,a5,53d2 <sbrkmuch+0x1b4>
    53ac:	fb043683          	ld	a3,-80(s0)
    53b0:	fd843603          	ld	a2,-40(s0)
    53b4:	fa843583          	ld	a1,-88(s0)
    53b8:	00005517          	auipc	a0,0x5
    53bc:	91050513          	addi	a0,a0,-1776 # 9cc8 <malloc+0x1cde>
    53c0:	00003097          	auipc	ra,0x3
    53c4:	a38080e7          	jalr	-1480(ra) # 7df8 <printf>
    53c8:	4505                	li	a0,1
    53ca:	00002097          	auipc	ra,0x2
    53ce:	4de080e7          	jalr	1246(ra) # 78a8 <exit>
    53d2:	fb843783          	ld	a5,-72(s0)
    53d6:	0007c783          	lbu	a5,0(a5) # 1000 <truncate3+0x1b2>
    53da:	873e                	mv	a4,a5
    53dc:	06300793          	li	a5,99
    53e0:	02f71163          	bne	a4,a5,5402 <sbrkmuch+0x1e4>
    53e4:	fa843583          	ld	a1,-88(s0)
    53e8:	00005517          	auipc	a0,0x5
    53ec:	91050513          	addi	a0,a0,-1776 # 9cf8 <malloc+0x1d0e>
    53f0:	00003097          	auipc	ra,0x3
    53f4:	a08080e7          	jalr	-1528(ra) # 7df8 <printf>
    53f8:	4505                	li	a0,1
    53fa:	00002097          	auipc	ra,0x2
    53fe:	4ae080e7          	jalr	1198(ra) # 78a8 <exit>
    5402:	4501                	li	a0,0
    5404:	00002097          	auipc	ra,0x2
    5408:	52c080e7          	jalr	1324(ra) # 7930 <sbrk>
    540c:	fca43c23          	sd	a0,-40(s0)
    5410:	4501                	li	a0,0
    5412:	00002097          	auipc	ra,0x2
    5416:	51e080e7          	jalr	1310(ra) # 7930 <sbrk>
    541a:	872a                	mv	a4,a0
    541c:	fe043783          	ld	a5,-32(s0)
    5420:	8f99                	sub	a5,a5,a4
    5422:	2781                	sext.w	a5,a5
    5424:	853e                	mv	a0,a5
    5426:	00002097          	auipc	ra,0x2
    542a:	50a080e7          	jalr	1290(ra) # 7930 <sbrk>
    542e:	faa43823          	sd	a0,-80(s0)
    5432:	fb043703          	ld	a4,-80(s0)
    5436:	fd843783          	ld	a5,-40(s0)
    543a:	02f70563          	beq	a4,a5,5464 <sbrkmuch+0x246>
    543e:	fb043683          	ld	a3,-80(s0)
    5442:	fd843603          	ld	a2,-40(s0)
    5446:	fa843583          	ld	a1,-88(s0)
    544a:	00005517          	auipc	a0,0x5
    544e:	8e650513          	addi	a0,a0,-1818 # 9d30 <malloc+0x1d46>
    5452:	00003097          	auipc	ra,0x3
    5456:	9a6080e7          	jalr	-1626(ra) # 7df8 <printf>
    545a:	4505                	li	a0,1
    545c:	00002097          	auipc	ra,0x2
    5460:	44c080e7          	jalr	1100(ra) # 78a8 <exit>
    5464:	0001                	nop
    5466:	60e6                	ld	ra,88(sp)
    5468:	6446                	ld	s0,80(sp)
    546a:	6125                	addi	sp,sp,96
    546c:	8082                	ret

000000000000546e <kernmem>:
    546e:	7179                	addi	sp,sp,-48
    5470:	f406                	sd	ra,40(sp)
    5472:	f022                	sd	s0,32(sp)
    5474:	1800                	addi	s0,sp,48
    5476:	fca43c23          	sd	a0,-40(s0)
    547a:	4785                	li	a5,1
    547c:	07fe                	slli	a5,a5,0x1f
    547e:	fef43423          	sd	a5,-24(s0)
    5482:	a04d                	j	5524 <kernmem+0xb6>
    5484:	00002097          	auipc	ra,0x2
    5488:	41c080e7          	jalr	1052(ra) # 78a0 <fork>
    548c:	87aa                	mv	a5,a0
    548e:	fef42223          	sw	a5,-28(s0)
    5492:	fe442783          	lw	a5,-28(s0)
    5496:	2781                	sext.w	a5,a5
    5498:	0207d163          	bgez	a5,54ba <kernmem+0x4c>
    549c:	fd843583          	ld	a1,-40(s0)
    54a0:	00003517          	auipc	a0,0x3
    54a4:	0d050513          	addi	a0,a0,208 # 8570 <malloc+0x586>
    54a8:	00003097          	auipc	ra,0x3
    54ac:	950080e7          	jalr	-1712(ra) # 7df8 <printf>
    54b0:	4505                	li	a0,1
    54b2:	00002097          	auipc	ra,0x2
    54b6:	3f6080e7          	jalr	1014(ra) # 78a8 <exit>
    54ba:	fe442783          	lw	a5,-28(s0)
    54be:	2781                	sext.w	a5,a5
    54c0:	eb85                	bnez	a5,54f0 <kernmem+0x82>
    54c2:	fe843783          	ld	a5,-24(s0)
    54c6:	0007c783          	lbu	a5,0(a5)
    54ca:	2781                	sext.w	a5,a5
    54cc:	86be                	mv	a3,a5
    54ce:	fe843603          	ld	a2,-24(s0)
    54d2:	fd843583          	ld	a1,-40(s0)
    54d6:	00005517          	auipc	a0,0x5
    54da:	88250513          	addi	a0,a0,-1918 # 9d58 <malloc+0x1d6e>
    54de:	00003097          	auipc	ra,0x3
    54e2:	91a080e7          	jalr	-1766(ra) # 7df8 <printf>
    54e6:	4505                	li	a0,1
    54e8:	00002097          	auipc	ra,0x2
    54ec:	3c0080e7          	jalr	960(ra) # 78a8 <exit>
    54f0:	fe040793          	addi	a5,s0,-32
    54f4:	853e                	mv	a0,a5
    54f6:	00002097          	auipc	ra,0x2
    54fa:	3ba080e7          	jalr	954(ra) # 78b0 <wait>
    54fe:	fe042783          	lw	a5,-32(s0)
    5502:	873e                	mv	a4,a5
    5504:	57fd                	li	a5,-1
    5506:	00f70763          	beq	a4,a5,5514 <kernmem+0xa6>
    550a:	4505                	li	a0,1
    550c:	00002097          	auipc	ra,0x2
    5510:	39c080e7          	jalr	924(ra) # 78a8 <exit>
    5514:	fe843703          	ld	a4,-24(s0)
    5518:	67b1                	lui	a5,0xc
    551a:	35078793          	addi	a5,a5,848 # c350 <buf+0xee0>
    551e:	97ba                	add	a5,a5,a4
    5520:	fef43423          	sd	a5,-24(s0)
    5524:	fe843703          	ld	a4,-24(s0)
    5528:	1003d7b7          	lui	a5,0x1003d
    552c:	078e                	slli	a5,a5,0x3
    552e:	47f78793          	addi	a5,a5,1151 # 1003d47f <freep+0x1002b7e7>
    5532:	f4e7f9e3          	bgeu	a5,a4,5484 <kernmem+0x16>
    5536:	0001                	nop
    5538:	0001                	nop
    553a:	70a2                	ld	ra,40(sp)
    553c:	7402                	ld	s0,32(sp)
    553e:	6145                	addi	sp,sp,48
    5540:	8082                	ret

0000000000005542 <MAXVAplus>:
    5542:	7139                	addi	sp,sp,-64
    5544:	fc06                	sd	ra,56(sp)
    5546:	f822                	sd	s0,48(sp)
    5548:	0080                	addi	s0,sp,64
    554a:	fca43423          	sd	a0,-56(s0)
    554e:	4785                	li	a5,1
    5550:	179a                	slli	a5,a5,0x26
    5552:	fef43023          	sd	a5,-32(s0)
    5556:	a045                	j	55f6 <MAXVAplus+0xb4>
    5558:	00002097          	auipc	ra,0x2
    555c:	348080e7          	jalr	840(ra) # 78a0 <fork>
    5560:	87aa                	mv	a5,a0
    5562:	fef42623          	sw	a5,-20(s0)
    5566:	fec42783          	lw	a5,-20(s0)
    556a:	2781                	sext.w	a5,a5
    556c:	0207d163          	bgez	a5,558e <MAXVAplus+0x4c>
    5570:	fc843583          	ld	a1,-56(s0)
    5574:	00003517          	auipc	a0,0x3
    5578:	ffc50513          	addi	a0,a0,-4 # 8570 <malloc+0x586>
    557c:	00003097          	auipc	ra,0x3
    5580:	87c080e7          	jalr	-1924(ra) # 7df8 <printf>
    5584:	4505                	li	a0,1
    5586:	00002097          	auipc	ra,0x2
    558a:	322080e7          	jalr	802(ra) # 78a8 <exit>
    558e:	fec42783          	lw	a5,-20(s0)
    5592:	2781                	sext.w	a5,a5
    5594:	eb95                	bnez	a5,55c8 <MAXVAplus+0x86>
    5596:	fe043783          	ld	a5,-32(s0)
    559a:	873e                	mv	a4,a5
    559c:	06300793          	li	a5,99
    55a0:	00f70023          	sb	a5,0(a4) # 6400000 <freep+0x63ee368>
    55a4:	fe043783          	ld	a5,-32(s0)
    55a8:	863e                	mv	a2,a5
    55aa:	fc843583          	ld	a1,-56(s0)
    55ae:	00004517          	auipc	a0,0x4
    55b2:	7ca50513          	addi	a0,a0,1994 # 9d78 <malloc+0x1d8e>
    55b6:	00003097          	auipc	ra,0x3
    55ba:	842080e7          	jalr	-1982(ra) # 7df8 <printf>
    55be:	4505                	li	a0,1
    55c0:	00002097          	auipc	ra,0x2
    55c4:	2e8080e7          	jalr	744(ra) # 78a8 <exit>
    55c8:	fdc40793          	addi	a5,s0,-36
    55cc:	853e                	mv	a0,a5
    55ce:	00002097          	auipc	ra,0x2
    55d2:	2e2080e7          	jalr	738(ra) # 78b0 <wait>
    55d6:	fdc42783          	lw	a5,-36(s0)
    55da:	873e                	mv	a4,a5
    55dc:	57fd                	li	a5,-1
    55de:	00f70763          	beq	a4,a5,55ec <MAXVAplus+0xaa>
    55e2:	4505                	li	a0,1
    55e4:	00002097          	auipc	ra,0x2
    55e8:	2c4080e7          	jalr	708(ra) # 78a8 <exit>
    55ec:	fe043783          	ld	a5,-32(s0)
    55f0:	0786                	slli	a5,a5,0x1
    55f2:	fef43023          	sd	a5,-32(s0)
    55f6:	fe043783          	ld	a5,-32(s0)
    55fa:	ffb9                	bnez	a5,5558 <MAXVAplus+0x16>
    55fc:	0001                	nop
    55fe:	0001                	nop
    5600:	70e2                	ld	ra,56(sp)
    5602:	7442                	ld	s0,48(sp)
    5604:	6121                	addi	sp,sp,64
    5606:	8082                	ret

0000000000005608 <sbrkfail>:
    5608:	7119                	addi	sp,sp,-128
    560a:	fc86                	sd	ra,120(sp)
    560c:	f8a2                	sd	s0,112(sp)
    560e:	0100                	addi	s0,sp,128
    5610:	f8a43423          	sd	a0,-120(s0)
    5614:	fc040793          	addi	a5,s0,-64
    5618:	853e                	mv	a0,a5
    561a:	00002097          	auipc	ra,0x2
    561e:	29e080e7          	jalr	670(ra) # 78b8 <pipe>
    5622:	87aa                	mv	a5,a0
    5624:	c385                	beqz	a5,5644 <sbrkfail+0x3c>
    5626:	f8843583          	ld	a1,-120(s0)
    562a:	00003517          	auipc	a0,0x3
    562e:	3de50513          	addi	a0,a0,990 # 8a08 <malloc+0xa1e>
    5632:	00002097          	auipc	ra,0x2
    5636:	7c6080e7          	jalr	1990(ra) # 7df8 <printf>
    563a:	4505                	li	a0,1
    563c:	00002097          	auipc	ra,0x2
    5640:	26c080e7          	jalr	620(ra) # 78a8 <exit>
    5644:	fe042623          	sw	zero,-20(s0)
    5648:	a075                	j	56f4 <sbrkfail+0xec>
    564a:	00002097          	auipc	ra,0x2
    564e:	256080e7          	jalr	598(ra) # 78a0 <fork>
    5652:	87aa                	mv	a5,a0
    5654:	873e                	mv	a4,a5
    5656:	fec42783          	lw	a5,-20(s0)
    565a:	078a                	slli	a5,a5,0x2
    565c:	17c1                	addi	a5,a5,-16
    565e:	97a2                	add	a5,a5,s0
    5660:	fae7a023          	sw	a4,-96(a5)
    5664:	fec42783          	lw	a5,-20(s0)
    5668:	078a                	slli	a5,a5,0x2
    566a:	17c1                	addi	a5,a5,-16
    566c:	97a2                	add	a5,a5,s0
    566e:	fa07a783          	lw	a5,-96(a5)
    5672:	e7b1                	bnez	a5,56be <sbrkfail+0xb6>
    5674:	4501                	li	a0,0
    5676:	00002097          	auipc	ra,0x2
    567a:	2ba080e7          	jalr	698(ra) # 7930 <sbrk>
    567e:	87aa                	mv	a5,a0
    5680:	2781                	sext.w	a5,a5
    5682:	06400737          	lui	a4,0x6400
    5686:	40f707bb          	subw	a5,a4,a5
    568a:	2781                	sext.w	a5,a5
    568c:	2781                	sext.w	a5,a5
    568e:	853e                	mv	a0,a5
    5690:	00002097          	auipc	ra,0x2
    5694:	2a0080e7          	jalr	672(ra) # 7930 <sbrk>
    5698:	fc442783          	lw	a5,-60(s0)
    569c:	4605                	li	a2,1
    569e:	00003597          	auipc	a1,0x3
    56a2:	ba258593          	addi	a1,a1,-1118 # 8240 <malloc+0x256>
    56a6:	853e                	mv	a0,a5
    56a8:	00002097          	auipc	ra,0x2
    56ac:	220080e7          	jalr	544(ra) # 78c8 <write>
    56b0:	3e800513          	li	a0,1000
    56b4:	00002097          	auipc	ra,0x2
    56b8:	284080e7          	jalr	644(ra) # 7938 <sleep>
    56bc:	bfd5                	j	56b0 <sbrkfail+0xa8>
    56be:	fec42783          	lw	a5,-20(s0)
    56c2:	078a                	slli	a5,a5,0x2
    56c4:	17c1                	addi	a5,a5,-16
    56c6:	97a2                	add	a5,a5,s0
    56c8:	fa07a783          	lw	a5,-96(a5)
    56cc:	873e                	mv	a4,a5
    56ce:	57fd                	li	a5,-1
    56d0:	00f70d63          	beq	a4,a5,56ea <sbrkfail+0xe2>
    56d4:	fc042783          	lw	a5,-64(s0)
    56d8:	fbf40713          	addi	a4,s0,-65
    56dc:	4605                	li	a2,1
    56de:	85ba                	mv	a1,a4
    56e0:	853e                	mv	a0,a5
    56e2:	00002097          	auipc	ra,0x2
    56e6:	1de080e7          	jalr	478(ra) # 78c0 <read>
    56ea:	fec42783          	lw	a5,-20(s0)
    56ee:	2785                	addiw	a5,a5,1
    56f0:	fef42623          	sw	a5,-20(s0)
    56f4:	fec42783          	lw	a5,-20(s0)
    56f8:	873e                	mv	a4,a5
    56fa:	47a5                	li	a5,9
    56fc:	f4e7f7e3          	bgeu	a5,a4,564a <sbrkfail+0x42>
    5700:	6505                	lui	a0,0x1
    5702:	00002097          	auipc	ra,0x2
    5706:	22e080e7          	jalr	558(ra) # 7930 <sbrk>
    570a:	fea43023          	sd	a0,-32(s0)
    570e:	fe042623          	sw	zero,-20(s0)
    5712:	a0a1                	j	575a <sbrkfail+0x152>
    5714:	fec42783          	lw	a5,-20(s0)
    5718:	078a                	slli	a5,a5,0x2
    571a:	17c1                	addi	a5,a5,-16
    571c:	97a2                	add	a5,a5,s0
    571e:	fa07a783          	lw	a5,-96(a5)
    5722:	873e                	mv	a4,a5
    5724:	57fd                	li	a5,-1
    5726:	02f70463          	beq	a4,a5,574e <sbrkfail+0x146>
    572a:	fec42783          	lw	a5,-20(s0)
    572e:	078a                	slli	a5,a5,0x2
    5730:	17c1                	addi	a5,a5,-16
    5732:	97a2                	add	a5,a5,s0
    5734:	fa07a783          	lw	a5,-96(a5)
    5738:	853e                	mv	a0,a5
    573a:	00002097          	auipc	ra,0x2
    573e:	19e080e7          	jalr	414(ra) # 78d8 <kill>
    5742:	4501                	li	a0,0
    5744:	00002097          	auipc	ra,0x2
    5748:	16c080e7          	jalr	364(ra) # 78b0 <wait>
    574c:	a011                	j	5750 <sbrkfail+0x148>
    574e:	0001                	nop
    5750:	fec42783          	lw	a5,-20(s0)
    5754:	2785                	addiw	a5,a5,1
    5756:	fef42623          	sw	a5,-20(s0)
    575a:	fec42783          	lw	a5,-20(s0)
    575e:	873e                	mv	a4,a5
    5760:	47a5                	li	a5,9
    5762:	fae7f9e3          	bgeu	a5,a4,5714 <sbrkfail+0x10c>
    5766:	fe043703          	ld	a4,-32(s0)
    576a:	57fd                	li	a5,-1
    576c:	02f71163          	bne	a4,a5,578e <sbrkfail+0x186>
    5770:	f8843583          	ld	a1,-120(s0)
    5774:	00004517          	auipc	a0,0x4
    5778:	61c50513          	addi	a0,a0,1564 # 9d90 <malloc+0x1da6>
    577c:	00002097          	auipc	ra,0x2
    5780:	67c080e7          	jalr	1660(ra) # 7df8 <printf>
    5784:	4505                	li	a0,1
    5786:	00002097          	auipc	ra,0x2
    578a:	122080e7          	jalr	290(ra) # 78a8 <exit>
    578e:	00002097          	auipc	ra,0x2
    5792:	112080e7          	jalr	274(ra) # 78a0 <fork>
    5796:	87aa                	mv	a5,a0
    5798:	fcf42e23          	sw	a5,-36(s0)
    579c:	fdc42783          	lw	a5,-36(s0)
    57a0:	2781                	sext.w	a5,a5
    57a2:	0207d163          	bgez	a5,57c4 <sbrkfail+0x1bc>
    57a6:	f8843583          	ld	a1,-120(s0)
    57aa:	00003517          	auipc	a0,0x3
    57ae:	dc650513          	addi	a0,a0,-570 # 8570 <malloc+0x586>
    57b2:	00002097          	auipc	ra,0x2
    57b6:	646080e7          	jalr	1606(ra) # 7df8 <printf>
    57ba:	4505                	li	a0,1
    57bc:	00002097          	auipc	ra,0x2
    57c0:	0ec080e7          	jalr	236(ra) # 78a8 <exit>
    57c4:	fdc42783          	lw	a5,-36(s0)
    57c8:	2781                	sext.w	a5,a5
    57ca:	e3c9                	bnez	a5,584c <sbrkfail+0x244>
    57cc:	4501                	li	a0,0
    57ce:	00002097          	auipc	ra,0x2
    57d2:	162080e7          	jalr	354(ra) # 7930 <sbrk>
    57d6:	fca43823          	sd	a0,-48(s0)
    57da:	3e800537          	lui	a0,0x3e800
    57de:	00002097          	auipc	ra,0x2
    57e2:	152080e7          	jalr	338(ra) # 7930 <sbrk>
    57e6:	fe042423          	sw	zero,-24(s0)
    57ea:	fe042623          	sw	zero,-20(s0)
    57ee:	a02d                	j	5818 <sbrkfail+0x210>
    57f0:	fec42783          	lw	a5,-20(s0)
    57f4:	fd043703          	ld	a4,-48(s0)
    57f8:	97ba                	add	a5,a5,a4
    57fa:	0007c783          	lbu	a5,0(a5)
    57fe:	2781                	sext.w	a5,a5
    5800:	fe842703          	lw	a4,-24(s0)
    5804:	9fb9                	addw	a5,a5,a4
    5806:	fef42423          	sw	a5,-24(s0)
    580a:	fec42783          	lw	a5,-20(s0)
    580e:	873e                	mv	a4,a5
    5810:	6785                	lui	a5,0x1
    5812:	9fb9                	addw	a5,a5,a4
    5814:	fef42623          	sw	a5,-20(s0)
    5818:	fec42783          	lw	a5,-20(s0)
    581c:	0007871b          	sext.w	a4,a5
    5820:	3e8007b7          	lui	a5,0x3e800
    5824:	fcf746e3          	blt	a4,a5,57f0 <sbrkfail+0x1e8>
    5828:	fe842783          	lw	a5,-24(s0)
    582c:	863e                	mv	a2,a5
    582e:	f8843583          	ld	a1,-120(s0)
    5832:	00004517          	auipc	a0,0x4
    5836:	57e50513          	addi	a0,a0,1406 # 9db0 <malloc+0x1dc6>
    583a:	00002097          	auipc	ra,0x2
    583e:	5be080e7          	jalr	1470(ra) # 7df8 <printf>
    5842:	4505                	li	a0,1
    5844:	00002097          	auipc	ra,0x2
    5848:	064080e7          	jalr	100(ra) # 78a8 <exit>
    584c:	fcc40793          	addi	a5,s0,-52
    5850:	853e                	mv	a0,a5
    5852:	00002097          	auipc	ra,0x2
    5856:	05e080e7          	jalr	94(ra) # 78b0 <wait>
    585a:	fcc42783          	lw	a5,-52(s0)
    585e:	873e                	mv	a4,a5
    5860:	57fd                	li	a5,-1
    5862:	00f70d63          	beq	a4,a5,587c <sbrkfail+0x274>
    5866:	fcc42783          	lw	a5,-52(s0)
    586a:	873e                	mv	a4,a5
    586c:	4789                	li	a5,2
    586e:	00f70763          	beq	a4,a5,587c <sbrkfail+0x274>
    5872:	4505                	li	a0,1
    5874:	00002097          	auipc	ra,0x2
    5878:	034080e7          	jalr	52(ra) # 78a8 <exit>
    587c:	0001                	nop
    587e:	70e6                	ld	ra,120(sp)
    5880:	7446                	ld	s0,112(sp)
    5882:	6109                	addi	sp,sp,128
    5884:	8082                	ret

0000000000005886 <sbrkarg>:
    5886:	7179                	addi	sp,sp,-48
    5888:	f406                	sd	ra,40(sp)
    588a:	f022                	sd	s0,32(sp)
    588c:	1800                	addi	s0,sp,48
    588e:	fca43c23          	sd	a0,-40(s0)
    5892:	6505                	lui	a0,0x1
    5894:	00002097          	auipc	ra,0x2
    5898:	09c080e7          	jalr	156(ra) # 7930 <sbrk>
    589c:	fea43423          	sd	a0,-24(s0)
    58a0:	20100593          	li	a1,513
    58a4:	00004517          	auipc	a0,0x4
    58a8:	53c50513          	addi	a0,a0,1340 # 9de0 <malloc+0x1df6>
    58ac:	00002097          	auipc	ra,0x2
    58b0:	03c080e7          	jalr	60(ra) # 78e8 <open>
    58b4:	87aa                	mv	a5,a0
    58b6:	fef42223          	sw	a5,-28(s0)
    58ba:	00004517          	auipc	a0,0x4
    58be:	52650513          	addi	a0,a0,1318 # 9de0 <malloc+0x1df6>
    58c2:	00002097          	auipc	ra,0x2
    58c6:	036080e7          	jalr	54(ra) # 78f8 <unlink>
    58ca:	fe442783          	lw	a5,-28(s0)
    58ce:	2781                	sext.w	a5,a5
    58d0:	0207d163          	bgez	a5,58f2 <sbrkarg+0x6c>
    58d4:	fd843583          	ld	a1,-40(s0)
    58d8:	00004517          	auipc	a0,0x4
    58dc:	51050513          	addi	a0,a0,1296 # 9de8 <malloc+0x1dfe>
    58e0:	00002097          	auipc	ra,0x2
    58e4:	518080e7          	jalr	1304(ra) # 7df8 <printf>
    58e8:	4505                	li	a0,1
    58ea:	00002097          	auipc	ra,0x2
    58ee:	fbe080e7          	jalr	-66(ra) # 78a8 <exit>
    58f2:	fe442783          	lw	a5,-28(s0)
    58f6:	6605                	lui	a2,0x1
    58f8:	fe843583          	ld	a1,-24(s0)
    58fc:	853e                	mv	a0,a5
    58fe:	00002097          	auipc	ra,0x2
    5902:	fca080e7          	jalr	-54(ra) # 78c8 <write>
    5906:	87aa                	mv	a5,a0
    5908:	fef42023          	sw	a5,-32(s0)
    590c:	fe042783          	lw	a5,-32(s0)
    5910:	2781                	sext.w	a5,a5
    5912:	0207d163          	bgez	a5,5934 <sbrkarg+0xae>
    5916:	fd843583          	ld	a1,-40(s0)
    591a:	00004517          	auipc	a0,0x4
    591e:	4e650513          	addi	a0,a0,1254 # 9e00 <malloc+0x1e16>
    5922:	00002097          	auipc	ra,0x2
    5926:	4d6080e7          	jalr	1238(ra) # 7df8 <printf>
    592a:	4505                	li	a0,1
    592c:	00002097          	auipc	ra,0x2
    5930:	f7c080e7          	jalr	-132(ra) # 78a8 <exit>
    5934:	fe442783          	lw	a5,-28(s0)
    5938:	853e                	mv	a0,a5
    593a:	00002097          	auipc	ra,0x2
    593e:	f96080e7          	jalr	-106(ra) # 78d0 <close>
    5942:	6505                	lui	a0,0x1
    5944:	00002097          	auipc	ra,0x2
    5948:	fec080e7          	jalr	-20(ra) # 7930 <sbrk>
    594c:	fea43423          	sd	a0,-24(s0)
    5950:	fe843503          	ld	a0,-24(s0)
    5954:	00002097          	auipc	ra,0x2
    5958:	f64080e7          	jalr	-156(ra) # 78b8 <pipe>
    595c:	87aa                	mv	a5,a0
    595e:	c385                	beqz	a5,597e <sbrkarg+0xf8>
    5960:	fd843583          	ld	a1,-40(s0)
    5964:	00003517          	auipc	a0,0x3
    5968:	0a450513          	addi	a0,a0,164 # 8a08 <malloc+0xa1e>
    596c:	00002097          	auipc	ra,0x2
    5970:	48c080e7          	jalr	1164(ra) # 7df8 <printf>
    5974:	4505                	li	a0,1
    5976:	00002097          	auipc	ra,0x2
    597a:	f32080e7          	jalr	-206(ra) # 78a8 <exit>
    597e:	0001                	nop
    5980:	70a2                	ld	ra,40(sp)
    5982:	7402                	ld	s0,32(sp)
    5984:	6145                	addi	sp,sp,48
    5986:	8082                	ret

0000000000005988 <validatetest>:
    5988:	7179                	addi	sp,sp,-48
    598a:	f406                	sd	ra,40(sp)
    598c:	f022                	sd	s0,32(sp)
    598e:	1800                	addi	s0,sp,48
    5990:	fca43c23          	sd	a0,-40(s0)
    5994:	001137b7          	lui	a5,0x113
    5998:	fef42223          	sw	a5,-28(s0)
    599c:	fe043423          	sd	zero,-24(s0)
    59a0:	a0b1                	j	59ec <validatetest+0x64>
    59a2:	fe843783          	ld	a5,-24(s0)
    59a6:	85be                	mv	a1,a5
    59a8:	00004517          	auipc	a0,0x4
    59ac:	47050513          	addi	a0,a0,1136 # 9e18 <malloc+0x1e2e>
    59b0:	00002097          	auipc	ra,0x2
    59b4:	f58080e7          	jalr	-168(ra) # 7908 <link>
    59b8:	87aa                	mv	a5,a0
    59ba:	873e                	mv	a4,a5
    59bc:	57fd                	li	a5,-1
    59be:	02f70163          	beq	a4,a5,59e0 <validatetest+0x58>
    59c2:	fd843583          	ld	a1,-40(s0)
    59c6:	00004517          	auipc	a0,0x4
    59ca:	46250513          	addi	a0,a0,1122 # 9e28 <malloc+0x1e3e>
    59ce:	00002097          	auipc	ra,0x2
    59d2:	42a080e7          	jalr	1066(ra) # 7df8 <printf>
    59d6:	4505                	li	a0,1
    59d8:	00002097          	auipc	ra,0x2
    59dc:	ed0080e7          	jalr	-304(ra) # 78a8 <exit>
    59e0:	fe843703          	ld	a4,-24(s0)
    59e4:	6785                	lui	a5,0x1
    59e6:	97ba                	add	a5,a5,a4
    59e8:	fef43423          	sd	a5,-24(s0)
    59ec:	fe442783          	lw	a5,-28(s0)
    59f0:	1782                	slli	a5,a5,0x20
    59f2:	9381                	srli	a5,a5,0x20
    59f4:	fe843703          	ld	a4,-24(s0)
    59f8:	fae7f5e3          	bgeu	a5,a4,59a2 <validatetest+0x1a>
    59fc:	0001                	nop
    59fe:	0001                	nop
    5a00:	70a2                	ld	ra,40(sp)
    5a02:	7402                	ld	s0,32(sp)
    5a04:	6145                	addi	sp,sp,48
    5a06:	8082                	ret

0000000000005a08 <bsstest>:
    5a08:	7179                	addi	sp,sp,-48
    5a0a:	f406                	sd	ra,40(sp)
    5a0c:	f022                	sd	s0,32(sp)
    5a0e:	1800                	addi	s0,sp,48
    5a10:	fca43c23          	sd	a0,-40(s0)
    5a14:	fe042623          	sw	zero,-20(s0)
    5a18:	a83d                	j	5a56 <bsstest+0x4e>
    5a1a:	00009717          	auipc	a4,0x9
    5a1e:	a5670713          	addi	a4,a4,-1450 # e470 <uninit>
    5a22:	fec42783          	lw	a5,-20(s0)
    5a26:	97ba                	add	a5,a5,a4
    5a28:	0007c783          	lbu	a5,0(a5) # 1000 <truncate3+0x1b2>
    5a2c:	c385                	beqz	a5,5a4c <bsstest+0x44>
    5a2e:	fd843583          	ld	a1,-40(s0)
    5a32:	00004517          	auipc	a0,0x4
    5a36:	41650513          	addi	a0,a0,1046 # 9e48 <malloc+0x1e5e>
    5a3a:	00002097          	auipc	ra,0x2
    5a3e:	3be080e7          	jalr	958(ra) # 7df8 <printf>
    5a42:	4505                	li	a0,1
    5a44:	00002097          	auipc	ra,0x2
    5a48:	e64080e7          	jalr	-412(ra) # 78a8 <exit>
    5a4c:	fec42783          	lw	a5,-20(s0)
    5a50:	2785                	addiw	a5,a5,1
    5a52:	fef42623          	sw	a5,-20(s0)
    5a56:	fec42783          	lw	a5,-20(s0)
    5a5a:	873e                	mv	a4,a5
    5a5c:	6789                	lui	a5,0x2
    5a5e:	70f78793          	addi	a5,a5,1807 # 270f <reparent2+0x7f>
    5a62:	fae7fce3          	bgeu	a5,a4,5a1a <bsstest+0x12>
    5a66:	0001                	nop
    5a68:	0001                	nop
    5a6a:	70a2                	ld	ra,40(sp)
    5a6c:	7402                	ld	s0,32(sp)
    5a6e:	6145                	addi	sp,sp,48
    5a70:	8082                	ret

0000000000005a72 <bigargtest>:
    5a72:	7179                	addi	sp,sp,-48
    5a74:	f406                	sd	ra,40(sp)
    5a76:	f022                	sd	s0,32(sp)
    5a78:	1800                	addi	s0,sp,48
    5a7a:	fca43c23          	sd	a0,-40(s0)
    5a7e:	00004517          	auipc	a0,0x4
    5a82:	3e250513          	addi	a0,a0,994 # 9e60 <malloc+0x1e76>
    5a86:	00002097          	auipc	ra,0x2
    5a8a:	e72080e7          	jalr	-398(ra) # 78f8 <unlink>
    5a8e:	00002097          	auipc	ra,0x2
    5a92:	e12080e7          	jalr	-494(ra) # 78a0 <fork>
    5a96:	87aa                	mv	a5,a0
    5a98:	fef42423          	sw	a5,-24(s0)
    5a9c:	fe842783          	lw	a5,-24(s0)
    5aa0:	2781                	sext.w	a5,a5
    5aa2:	ebc1                	bnez	a5,5b32 <bigargtest+0xc0>
    5aa4:	fe042623          	sw	zero,-20(s0)
    5aa8:	a01d                	j	5ace <bigargtest+0x5c>
    5aaa:	0000c717          	auipc	a4,0xc
    5aae:	0de70713          	addi	a4,a4,222 # 11b88 <args.1>
    5ab2:	fec42783          	lw	a5,-20(s0)
    5ab6:	078e                	slli	a5,a5,0x3
    5ab8:	97ba                	add	a5,a5,a4
    5aba:	00004717          	auipc	a4,0x4
    5abe:	3b670713          	addi	a4,a4,950 # 9e70 <malloc+0x1e86>
    5ac2:	e398                	sd	a4,0(a5)
    5ac4:	fec42783          	lw	a5,-20(s0)
    5ac8:	2785                	addiw	a5,a5,1
    5aca:	fef42623          	sw	a5,-20(s0)
    5ace:	fec42783          	lw	a5,-20(s0)
    5ad2:	0007871b          	sext.w	a4,a5
    5ad6:	47f9                	li	a5,30
    5ad8:	fce7d9e3          	bge	a5,a4,5aaa <bigargtest+0x38>
    5adc:	0000c797          	auipc	a5,0xc
    5ae0:	0ac78793          	addi	a5,a5,172 # 11b88 <args.1>
    5ae4:	0e07bc23          	sd	zero,248(a5)
    5ae8:	0000c597          	auipc	a1,0xc
    5aec:	0a058593          	addi	a1,a1,160 # 11b88 <args.1>
    5af0:	00003517          	auipc	a0,0x3
    5af4:	86050513          	addi	a0,a0,-1952 # 8350 <malloc+0x366>
    5af8:	00002097          	auipc	ra,0x2
    5afc:	de8080e7          	jalr	-536(ra) # 78e0 <exec>
    5b00:	20000593          	li	a1,512
    5b04:	00004517          	auipc	a0,0x4
    5b08:	35c50513          	addi	a0,a0,860 # 9e60 <malloc+0x1e76>
    5b0c:	00002097          	auipc	ra,0x2
    5b10:	ddc080e7          	jalr	-548(ra) # 78e8 <open>
    5b14:	87aa                	mv	a5,a0
    5b16:	fef42223          	sw	a5,-28(s0)
    5b1a:	fe442783          	lw	a5,-28(s0)
    5b1e:	853e                	mv	a0,a5
    5b20:	00002097          	auipc	ra,0x2
    5b24:	db0080e7          	jalr	-592(ra) # 78d0 <close>
    5b28:	4501                	li	a0,0
    5b2a:	00002097          	auipc	ra,0x2
    5b2e:	d7e080e7          	jalr	-642(ra) # 78a8 <exit>
    5b32:	fe842783          	lw	a5,-24(s0)
    5b36:	2781                	sext.w	a5,a5
    5b38:	0207d163          	bgez	a5,5b5a <bigargtest+0xe8>
    5b3c:	fd843583          	ld	a1,-40(s0)
    5b40:	00004517          	auipc	a0,0x4
    5b44:	41050513          	addi	a0,a0,1040 # 9f50 <malloc+0x1f66>
    5b48:	00002097          	auipc	ra,0x2
    5b4c:	2b0080e7          	jalr	688(ra) # 7df8 <printf>
    5b50:	4505                	li	a0,1
    5b52:	00002097          	auipc	ra,0x2
    5b56:	d56080e7          	jalr	-682(ra) # 78a8 <exit>
    5b5a:	fe040793          	addi	a5,s0,-32
    5b5e:	853e                	mv	a0,a5
    5b60:	00002097          	auipc	ra,0x2
    5b64:	d50080e7          	jalr	-688(ra) # 78b0 <wait>
    5b68:	fe042783          	lw	a5,-32(s0)
    5b6c:	cb81                	beqz	a5,5b7c <bigargtest+0x10a>
    5b6e:	fe042783          	lw	a5,-32(s0)
    5b72:	853e                	mv	a0,a5
    5b74:	00002097          	auipc	ra,0x2
    5b78:	d34080e7          	jalr	-716(ra) # 78a8 <exit>
    5b7c:	4581                	li	a1,0
    5b7e:	00004517          	auipc	a0,0x4
    5b82:	2e250513          	addi	a0,a0,738 # 9e60 <malloc+0x1e76>
    5b86:	00002097          	auipc	ra,0x2
    5b8a:	d62080e7          	jalr	-670(ra) # 78e8 <open>
    5b8e:	87aa                	mv	a5,a0
    5b90:	fef42223          	sw	a5,-28(s0)
    5b94:	fe442783          	lw	a5,-28(s0)
    5b98:	2781                	sext.w	a5,a5
    5b9a:	0207d163          	bgez	a5,5bbc <bigargtest+0x14a>
    5b9e:	fd843583          	ld	a1,-40(s0)
    5ba2:	00004517          	auipc	a0,0x4
    5ba6:	3ce50513          	addi	a0,a0,974 # 9f70 <malloc+0x1f86>
    5baa:	00002097          	auipc	ra,0x2
    5bae:	24e080e7          	jalr	590(ra) # 7df8 <printf>
    5bb2:	4505                	li	a0,1
    5bb4:	00002097          	auipc	ra,0x2
    5bb8:	cf4080e7          	jalr	-780(ra) # 78a8 <exit>
    5bbc:	fe442783          	lw	a5,-28(s0)
    5bc0:	853e                	mv	a0,a5
    5bc2:	00002097          	auipc	ra,0x2
    5bc6:	d0e080e7          	jalr	-754(ra) # 78d0 <close>
    5bca:	0001                	nop
    5bcc:	70a2                	ld	ra,40(sp)
    5bce:	7402                	ld	s0,32(sp)
    5bd0:	6145                	addi	sp,sp,48
    5bd2:	8082                	ret

0000000000005bd4 <fsfull>:
    5bd4:	7159                	addi	sp,sp,-112
    5bd6:	f486                	sd	ra,104(sp)
    5bd8:	f0a2                	sd	s0,96(sp)
    5bda:	1880                	addi	s0,sp,112
    5bdc:	fe042423          	sw	zero,-24(s0)
    5be0:	00004517          	auipc	a0,0x4
    5be4:	3b050513          	addi	a0,a0,944 # 9f90 <malloc+0x1fa6>
    5be8:	00002097          	auipc	ra,0x2
    5bec:	210080e7          	jalr	528(ra) # 7df8 <printf>
    5bf0:	fe042623          	sw	zero,-20(s0)
    5bf4:	06600793          	li	a5,102
    5bf8:	f8f40c23          	sb	a5,-104(s0)
    5bfc:	fec42783          	lw	a5,-20(s0)
    5c00:	873e                	mv	a4,a5
    5c02:	3e800793          	li	a5,1000
    5c06:	02f747bb          	divw	a5,a4,a5
    5c0a:	2781                	sext.w	a5,a5
    5c0c:	0ff7f793          	zext.b	a5,a5
    5c10:	0307879b          	addiw	a5,a5,48
    5c14:	0ff7f793          	zext.b	a5,a5
    5c18:	f8f40ca3          	sb	a5,-103(s0)
    5c1c:	fec42783          	lw	a5,-20(s0)
    5c20:	873e                	mv	a4,a5
    5c22:	3e800793          	li	a5,1000
    5c26:	02f767bb          	remw	a5,a4,a5
    5c2a:	2781                	sext.w	a5,a5
    5c2c:	873e                	mv	a4,a5
    5c2e:	06400793          	li	a5,100
    5c32:	02f747bb          	divw	a5,a4,a5
    5c36:	2781                	sext.w	a5,a5
    5c38:	0ff7f793          	zext.b	a5,a5
    5c3c:	0307879b          	addiw	a5,a5,48
    5c40:	0ff7f793          	zext.b	a5,a5
    5c44:	f8f40d23          	sb	a5,-102(s0)
    5c48:	fec42783          	lw	a5,-20(s0)
    5c4c:	873e                	mv	a4,a5
    5c4e:	06400793          	li	a5,100
    5c52:	02f767bb          	remw	a5,a4,a5
    5c56:	2781                	sext.w	a5,a5
    5c58:	873e                	mv	a4,a5
    5c5a:	47a9                	li	a5,10
    5c5c:	02f747bb          	divw	a5,a4,a5
    5c60:	2781                	sext.w	a5,a5
    5c62:	0ff7f793          	zext.b	a5,a5
    5c66:	0307879b          	addiw	a5,a5,48
    5c6a:	0ff7f793          	zext.b	a5,a5
    5c6e:	f8f40da3          	sb	a5,-101(s0)
    5c72:	fec42783          	lw	a5,-20(s0)
    5c76:	873e                	mv	a4,a5
    5c78:	47a9                	li	a5,10
    5c7a:	02f767bb          	remw	a5,a4,a5
    5c7e:	2781                	sext.w	a5,a5
    5c80:	0ff7f793          	zext.b	a5,a5
    5c84:	0307879b          	addiw	a5,a5,48
    5c88:	0ff7f793          	zext.b	a5,a5
    5c8c:	f8f40e23          	sb	a5,-100(s0)
    5c90:	f8040ea3          	sb	zero,-99(s0)
    5c94:	f9840793          	addi	a5,s0,-104
    5c98:	85be                	mv	a1,a5
    5c9a:	00004517          	auipc	a0,0x4
    5c9e:	30650513          	addi	a0,a0,774 # 9fa0 <malloc+0x1fb6>
    5ca2:	00002097          	auipc	ra,0x2
    5ca6:	156080e7          	jalr	342(ra) # 7df8 <printf>
    5caa:	f9840793          	addi	a5,s0,-104
    5cae:	20200593          	li	a1,514
    5cb2:	853e                	mv	a0,a5
    5cb4:	00002097          	auipc	ra,0x2
    5cb8:	c34080e7          	jalr	-972(ra) # 78e8 <open>
    5cbc:	87aa                	mv	a5,a0
    5cbe:	fef42023          	sw	a5,-32(s0)
    5cc2:	fe042783          	lw	a5,-32(s0)
    5cc6:	2781                	sext.w	a5,a5
    5cc8:	0007de63          	bgez	a5,5ce4 <fsfull+0x110>
    5ccc:	f9840793          	addi	a5,s0,-104
    5cd0:	85be                	mv	a1,a5
    5cd2:	00004517          	auipc	a0,0x4
    5cd6:	2de50513          	addi	a0,a0,734 # 9fb0 <malloc+0x1fc6>
    5cda:	00002097          	auipc	ra,0x2
    5cde:	11e080e7          	jalr	286(ra) # 7df8 <printf>
    5ce2:	a079                	j	5d70 <fsfull+0x19c>
    5ce4:	fe042223          	sw	zero,-28(s0)
    5ce8:	fe042783          	lw	a5,-32(s0)
    5cec:	40000613          	li	a2,1024
    5cf0:	00005597          	auipc	a1,0x5
    5cf4:	78058593          	addi	a1,a1,1920 # b470 <buf>
    5cf8:	853e                	mv	a0,a5
    5cfa:	00002097          	auipc	ra,0x2
    5cfe:	bce080e7          	jalr	-1074(ra) # 78c8 <write>
    5d02:	87aa                	mv	a5,a0
    5d04:	fcf42e23          	sw	a5,-36(s0)
    5d08:	fdc42783          	lw	a5,-36(s0)
    5d0c:	0007871b          	sext.w	a4,a5
    5d10:	3ff00793          	li	a5,1023
    5d14:	02e7d063          	bge	a5,a4,5d34 <fsfull+0x160>
    5d18:	fe442783          	lw	a5,-28(s0)
    5d1c:	873e                	mv	a4,a5
    5d1e:	fdc42783          	lw	a5,-36(s0)
    5d22:	9fb9                	addw	a5,a5,a4
    5d24:	fef42223          	sw	a5,-28(s0)
    5d28:	fe842783          	lw	a5,-24(s0)
    5d2c:	2785                	addiw	a5,a5,1
    5d2e:	fef42423          	sw	a5,-24(s0)
    5d32:	bf5d                	j	5ce8 <fsfull+0x114>
    5d34:	0001                	nop
    5d36:	fe442783          	lw	a5,-28(s0)
    5d3a:	85be                	mv	a1,a5
    5d3c:	00004517          	auipc	a0,0x4
    5d40:	28450513          	addi	a0,a0,644 # 9fc0 <malloc+0x1fd6>
    5d44:	00002097          	auipc	ra,0x2
    5d48:	0b4080e7          	jalr	180(ra) # 7df8 <printf>
    5d4c:	fe042783          	lw	a5,-32(s0)
    5d50:	853e                	mv	a0,a5
    5d52:	00002097          	auipc	ra,0x2
    5d56:	b7e080e7          	jalr	-1154(ra) # 78d0 <close>
    5d5a:	fe442783          	lw	a5,-28(s0)
    5d5e:	2781                	sext.w	a5,a5
    5d60:	c799                	beqz	a5,5d6e <fsfull+0x19a>
    5d62:	fec42783          	lw	a5,-20(s0)
    5d66:	2785                	addiw	a5,a5,1
    5d68:	fef42623          	sw	a5,-20(s0)
    5d6c:	b561                	j	5bf4 <fsfull+0x20>
    5d6e:	0001                	nop
    5d70:	a86d                	j	5e2a <fsfull+0x256>
    5d72:	06600793          	li	a5,102
    5d76:	f8f40c23          	sb	a5,-104(s0)
    5d7a:	fec42783          	lw	a5,-20(s0)
    5d7e:	873e                	mv	a4,a5
    5d80:	3e800793          	li	a5,1000
    5d84:	02f747bb          	divw	a5,a4,a5
    5d88:	2781                	sext.w	a5,a5
    5d8a:	0ff7f793          	zext.b	a5,a5
    5d8e:	0307879b          	addiw	a5,a5,48
    5d92:	0ff7f793          	zext.b	a5,a5
    5d96:	f8f40ca3          	sb	a5,-103(s0)
    5d9a:	fec42783          	lw	a5,-20(s0)
    5d9e:	873e                	mv	a4,a5
    5da0:	3e800793          	li	a5,1000
    5da4:	02f767bb          	remw	a5,a4,a5
    5da8:	2781                	sext.w	a5,a5
    5daa:	873e                	mv	a4,a5
    5dac:	06400793          	li	a5,100
    5db0:	02f747bb          	divw	a5,a4,a5
    5db4:	2781                	sext.w	a5,a5
    5db6:	0ff7f793          	zext.b	a5,a5
    5dba:	0307879b          	addiw	a5,a5,48
    5dbe:	0ff7f793          	zext.b	a5,a5
    5dc2:	f8f40d23          	sb	a5,-102(s0)
    5dc6:	fec42783          	lw	a5,-20(s0)
    5dca:	873e                	mv	a4,a5
    5dcc:	06400793          	li	a5,100
    5dd0:	02f767bb          	remw	a5,a4,a5
    5dd4:	2781                	sext.w	a5,a5
    5dd6:	873e                	mv	a4,a5
    5dd8:	47a9                	li	a5,10
    5dda:	02f747bb          	divw	a5,a4,a5
    5dde:	2781                	sext.w	a5,a5
    5de0:	0ff7f793          	zext.b	a5,a5
    5de4:	0307879b          	addiw	a5,a5,48
    5de8:	0ff7f793          	zext.b	a5,a5
    5dec:	f8f40da3          	sb	a5,-101(s0)
    5df0:	fec42783          	lw	a5,-20(s0)
    5df4:	873e                	mv	a4,a5
    5df6:	47a9                	li	a5,10
    5df8:	02f767bb          	remw	a5,a4,a5
    5dfc:	2781                	sext.w	a5,a5
    5dfe:	0ff7f793          	zext.b	a5,a5
    5e02:	0307879b          	addiw	a5,a5,48
    5e06:	0ff7f793          	zext.b	a5,a5
    5e0a:	f8f40e23          	sb	a5,-100(s0)
    5e0e:	f8040ea3          	sb	zero,-99(s0)
    5e12:	f9840793          	addi	a5,s0,-104
    5e16:	853e                	mv	a0,a5
    5e18:	00002097          	auipc	ra,0x2
    5e1c:	ae0080e7          	jalr	-1312(ra) # 78f8 <unlink>
    5e20:	fec42783          	lw	a5,-20(s0)
    5e24:	37fd                	addiw	a5,a5,-1
    5e26:	fef42623          	sw	a5,-20(s0)
    5e2a:	fec42783          	lw	a5,-20(s0)
    5e2e:	2781                	sext.w	a5,a5
    5e30:	f407d1e3          	bgez	a5,5d72 <fsfull+0x19e>
    5e34:	00004517          	auipc	a0,0x4
    5e38:	19c50513          	addi	a0,a0,412 # 9fd0 <malloc+0x1fe6>
    5e3c:	00002097          	auipc	ra,0x2
    5e40:	fbc080e7          	jalr	-68(ra) # 7df8 <printf>
    5e44:	0001                	nop
    5e46:	70a6                	ld	ra,104(sp)
    5e48:	7406                	ld	s0,96(sp)
    5e4a:	6165                	addi	sp,sp,112
    5e4c:	8082                	ret

0000000000005e4e <argptest>:
    5e4e:	7179                	addi	sp,sp,-48
    5e50:	f406                	sd	ra,40(sp)
    5e52:	f022                	sd	s0,32(sp)
    5e54:	1800                	addi	s0,sp,48
    5e56:	fca43c23          	sd	a0,-40(s0)
    5e5a:	4581                	li	a1,0
    5e5c:	00004517          	auipc	a0,0x4
    5e60:	18c50513          	addi	a0,a0,396 # 9fe8 <malloc+0x1ffe>
    5e64:	00002097          	auipc	ra,0x2
    5e68:	a84080e7          	jalr	-1404(ra) # 78e8 <open>
    5e6c:	87aa                	mv	a5,a0
    5e6e:	fef42623          	sw	a5,-20(s0)
    5e72:	fec42783          	lw	a5,-20(s0)
    5e76:	2781                	sext.w	a5,a5
    5e78:	0207d163          	bgez	a5,5e9a <argptest+0x4c>
    5e7c:	fd843583          	ld	a1,-40(s0)
    5e80:	00002517          	auipc	a0,0x2
    5e84:	70850513          	addi	a0,a0,1800 # 8588 <malloc+0x59e>
    5e88:	00002097          	auipc	ra,0x2
    5e8c:	f70080e7          	jalr	-144(ra) # 7df8 <printf>
    5e90:	4505                	li	a0,1
    5e92:	00002097          	auipc	ra,0x2
    5e96:	a16080e7          	jalr	-1514(ra) # 78a8 <exit>
    5e9a:	4501                	li	a0,0
    5e9c:	00002097          	auipc	ra,0x2
    5ea0:	a94080e7          	jalr	-1388(ra) # 7930 <sbrk>
    5ea4:	87aa                	mv	a5,a0
    5ea6:	fff78713          	addi	a4,a5,-1
    5eaa:	fec42783          	lw	a5,-20(s0)
    5eae:	567d                	li	a2,-1
    5eb0:	85ba                	mv	a1,a4
    5eb2:	853e                	mv	a0,a5
    5eb4:	00002097          	auipc	ra,0x2
    5eb8:	a0c080e7          	jalr	-1524(ra) # 78c0 <read>
    5ebc:	fec42783          	lw	a5,-20(s0)
    5ec0:	853e                	mv	a0,a5
    5ec2:	00002097          	auipc	ra,0x2
    5ec6:	a0e080e7          	jalr	-1522(ra) # 78d0 <close>
    5eca:	0001                	nop
    5ecc:	70a2                	ld	ra,40(sp)
    5ece:	7402                	ld	s0,32(sp)
    5ed0:	6145                	addi	sp,sp,48
    5ed2:	8082                	ret

0000000000005ed4 <stacktest>:
    5ed4:	7139                	addi	sp,sp,-64
    5ed6:	fc06                	sd	ra,56(sp)
    5ed8:	f822                	sd	s0,48(sp)
    5eda:	0080                	addi	s0,sp,64
    5edc:	fca43423          	sd	a0,-56(s0)
    5ee0:	00002097          	auipc	ra,0x2
    5ee4:	9c0080e7          	jalr	-1600(ra) # 78a0 <fork>
    5ee8:	87aa                	mv	a5,a0
    5eea:	fef42623          	sw	a5,-20(s0)
    5eee:	fec42783          	lw	a5,-20(s0)
    5ef2:	2781                	sext.w	a5,a5
    5ef4:	e3b9                	bnez	a5,5f3a <stacktest+0x66>
    5ef6:	ffffa097          	auipc	ra,0xffffa
    5efa:	10a080e7          	jalr	266(ra) # 0 <r_sp>
    5efe:	87aa                	mv	a5,a0
    5f00:	fef43023          	sd	a5,-32(s0)
    5f04:	fe043703          	ld	a4,-32(s0)
    5f08:	77fd                	lui	a5,0xfffff
    5f0a:	97ba                	add	a5,a5,a4
    5f0c:	fef43023          	sd	a5,-32(s0)
    5f10:	fe043783          	ld	a5,-32(s0)
    5f14:	0007c783          	lbu	a5,0(a5) # fffffffffffff000 <freep+0xfffffffffffed368>
    5f18:	2781                	sext.w	a5,a5
    5f1a:	863e                	mv	a2,a5
    5f1c:	fc843583          	ld	a1,-56(s0)
    5f20:	00004517          	auipc	a0,0x4
    5f24:	0d050513          	addi	a0,a0,208 # 9ff0 <malloc+0x2006>
    5f28:	00002097          	auipc	ra,0x2
    5f2c:	ed0080e7          	jalr	-304(ra) # 7df8 <printf>
    5f30:	4505                	li	a0,1
    5f32:	00002097          	auipc	ra,0x2
    5f36:	976080e7          	jalr	-1674(ra) # 78a8 <exit>
    5f3a:	fec42783          	lw	a5,-20(s0)
    5f3e:	2781                	sext.w	a5,a5
    5f40:	0207d163          	bgez	a5,5f62 <stacktest+0x8e>
    5f44:	fc843583          	ld	a1,-56(s0)
    5f48:	00002517          	auipc	a0,0x2
    5f4c:	62850513          	addi	a0,a0,1576 # 8570 <malloc+0x586>
    5f50:	00002097          	auipc	ra,0x2
    5f54:	ea8080e7          	jalr	-344(ra) # 7df8 <printf>
    5f58:	4505                	li	a0,1
    5f5a:	00002097          	auipc	ra,0x2
    5f5e:	94e080e7          	jalr	-1714(ra) # 78a8 <exit>
    5f62:	fdc40793          	addi	a5,s0,-36
    5f66:	853e                	mv	a0,a5
    5f68:	00002097          	auipc	ra,0x2
    5f6c:	948080e7          	jalr	-1720(ra) # 78b0 <wait>
    5f70:	fdc42783          	lw	a5,-36(s0)
    5f74:	873e                	mv	a4,a5
    5f76:	57fd                	li	a5,-1
    5f78:	00f71763          	bne	a4,a5,5f86 <stacktest+0xb2>
    5f7c:	4501                	li	a0,0
    5f7e:	00002097          	auipc	ra,0x2
    5f82:	92a080e7          	jalr	-1750(ra) # 78a8 <exit>
    5f86:	fdc42783          	lw	a5,-36(s0)
    5f8a:	853e                	mv	a0,a5
    5f8c:	00002097          	auipc	ra,0x2
    5f90:	91c080e7          	jalr	-1764(ra) # 78a8 <exit>

0000000000005f94 <textwrite>:
    5f94:	7139                	addi	sp,sp,-64
    5f96:	fc06                	sd	ra,56(sp)
    5f98:	f822                	sd	s0,48(sp)
    5f9a:	0080                	addi	s0,sp,64
    5f9c:	fca43423          	sd	a0,-56(s0)
    5fa0:	00002097          	auipc	ra,0x2
    5fa4:	900080e7          	jalr	-1792(ra) # 78a0 <fork>
    5fa8:	87aa                	mv	a5,a0
    5faa:	fef42623          	sw	a5,-20(s0)
    5fae:	fec42783          	lw	a5,-20(s0)
    5fb2:	2781                	sext.w	a5,a5
    5fb4:	ef81                	bnez	a5,5fcc <textwrite+0x38>
    5fb6:	fe043023          	sd	zero,-32(s0)
    5fba:	fe043783          	ld	a5,-32(s0)
    5fbe:	4729                	li	a4,10
    5fc0:	c398                	sw	a4,0(a5)
    5fc2:	4505                	li	a0,1
    5fc4:	00002097          	auipc	ra,0x2
    5fc8:	8e4080e7          	jalr	-1820(ra) # 78a8 <exit>
    5fcc:	fec42783          	lw	a5,-20(s0)
    5fd0:	2781                	sext.w	a5,a5
    5fd2:	0207d163          	bgez	a5,5ff4 <textwrite+0x60>
    5fd6:	fc843583          	ld	a1,-56(s0)
    5fda:	00002517          	auipc	a0,0x2
    5fde:	59650513          	addi	a0,a0,1430 # 8570 <malloc+0x586>
    5fe2:	00002097          	auipc	ra,0x2
    5fe6:	e16080e7          	jalr	-490(ra) # 7df8 <printf>
    5fea:	4505                	li	a0,1
    5fec:	00002097          	auipc	ra,0x2
    5ff0:	8bc080e7          	jalr	-1860(ra) # 78a8 <exit>
    5ff4:	fdc40793          	addi	a5,s0,-36
    5ff8:	853e                	mv	a0,a5
    5ffa:	00002097          	auipc	ra,0x2
    5ffe:	8b6080e7          	jalr	-1866(ra) # 78b0 <wait>
    6002:	fdc42783          	lw	a5,-36(s0)
    6006:	873e                	mv	a4,a5
    6008:	57fd                	li	a5,-1
    600a:	00f71763          	bne	a4,a5,6018 <textwrite+0x84>
    600e:	4501                	li	a0,0
    6010:	00002097          	auipc	ra,0x2
    6014:	898080e7          	jalr	-1896(ra) # 78a8 <exit>
    6018:	fdc42783          	lw	a5,-36(s0)
    601c:	853e                	mv	a0,a5
    601e:	00002097          	auipc	ra,0x2
    6022:	88a080e7          	jalr	-1910(ra) # 78a8 <exit>

0000000000006026 <pgbug>:
    6026:	7179                	addi	sp,sp,-48
    6028:	f406                	sd	ra,40(sp)
    602a:	f022                	sd	s0,32(sp)
    602c:	1800                	addi	s0,sp,48
    602e:	fca43c23          	sd	a0,-40(s0)
    6032:	fe043423          	sd	zero,-24(s0)
    6036:	00005797          	auipc	a5,0x5
    603a:	fca78793          	addi	a5,a5,-54 # b000 <big>
    603e:	639c                	ld	a5,0(a5)
    6040:	fe840713          	addi	a4,s0,-24
    6044:	85ba                	mv	a1,a4
    6046:	853e                	mv	a0,a5
    6048:	00002097          	auipc	ra,0x2
    604c:	898080e7          	jalr	-1896(ra) # 78e0 <exec>
    6050:	00005797          	auipc	a5,0x5
    6054:	fb078793          	addi	a5,a5,-80 # b000 <big>
    6058:	639c                	ld	a5,0(a5)
    605a:	853e                	mv	a0,a5
    605c:	00002097          	auipc	ra,0x2
    6060:	85c080e7          	jalr	-1956(ra) # 78b8 <pipe>
    6064:	4501                	li	a0,0
    6066:	00002097          	auipc	ra,0x2
    606a:	842080e7          	jalr	-1982(ra) # 78a8 <exit>

000000000000606e <sbrkbugs>:
    606e:	7179                	addi	sp,sp,-48
    6070:	f406                	sd	ra,40(sp)
    6072:	f022                	sd	s0,32(sp)
    6074:	1800                	addi	s0,sp,48
    6076:	fca43c23          	sd	a0,-40(s0)
    607a:	00002097          	auipc	ra,0x2
    607e:	826080e7          	jalr	-2010(ra) # 78a0 <fork>
    6082:	87aa                	mv	a5,a0
    6084:	fef42623          	sw	a5,-20(s0)
    6088:	fec42783          	lw	a5,-20(s0)
    608c:	2781                	sext.w	a5,a5
    608e:	0007df63          	bgez	a5,60ac <sbrkbugs+0x3e>
    6092:	00002517          	auipc	a0,0x2
    6096:	2ae50513          	addi	a0,a0,686 # 8340 <malloc+0x356>
    609a:	00002097          	auipc	ra,0x2
    609e:	d5e080e7          	jalr	-674(ra) # 7df8 <printf>
    60a2:	4505                	li	a0,1
    60a4:	00002097          	auipc	ra,0x2
    60a8:	804080e7          	jalr	-2044(ra) # 78a8 <exit>
    60ac:	fec42783          	lw	a5,-20(s0)
    60b0:	2781                	sext.w	a5,a5
    60b2:	eb85                	bnez	a5,60e2 <sbrkbugs+0x74>
    60b4:	4501                	li	a0,0
    60b6:	00002097          	auipc	ra,0x2
    60ba:	87a080e7          	jalr	-1926(ra) # 7930 <sbrk>
    60be:	87aa                	mv	a5,a0
    60c0:	fef42223          	sw	a5,-28(s0)
    60c4:	fe442783          	lw	a5,-28(s0)
    60c8:	40f007bb          	negw	a5,a5
    60cc:	2781                	sext.w	a5,a5
    60ce:	853e                	mv	a0,a5
    60d0:	00002097          	auipc	ra,0x2
    60d4:	860080e7          	jalr	-1952(ra) # 7930 <sbrk>
    60d8:	4501                	li	a0,0
    60da:	00001097          	auipc	ra,0x1
    60de:	7ce080e7          	jalr	1998(ra) # 78a8 <exit>
    60e2:	4501                	li	a0,0
    60e4:	00001097          	auipc	ra,0x1
    60e8:	7cc080e7          	jalr	1996(ra) # 78b0 <wait>
    60ec:	00001097          	auipc	ra,0x1
    60f0:	7b4080e7          	jalr	1972(ra) # 78a0 <fork>
    60f4:	87aa                	mv	a5,a0
    60f6:	fef42623          	sw	a5,-20(s0)
    60fa:	fec42783          	lw	a5,-20(s0)
    60fe:	2781                	sext.w	a5,a5
    6100:	0007df63          	bgez	a5,611e <sbrkbugs+0xb0>
    6104:	00002517          	auipc	a0,0x2
    6108:	23c50513          	addi	a0,a0,572 # 8340 <malloc+0x356>
    610c:	00002097          	auipc	ra,0x2
    6110:	cec080e7          	jalr	-788(ra) # 7df8 <printf>
    6114:	4505                	li	a0,1
    6116:	00001097          	auipc	ra,0x1
    611a:	792080e7          	jalr	1938(ra) # 78a8 <exit>
    611e:	fec42783          	lw	a5,-20(s0)
    6122:	2781                	sext.w	a5,a5
    6124:	eb95                	bnez	a5,6158 <sbrkbugs+0xea>
    6126:	4501                	li	a0,0
    6128:	00002097          	auipc	ra,0x2
    612c:	808080e7          	jalr	-2040(ra) # 7930 <sbrk>
    6130:	87aa                	mv	a5,a0
    6132:	fef42423          	sw	a5,-24(s0)
    6136:	6785                	lui	a5,0x1
    6138:	dac7879b          	addiw	a5,a5,-596 # dac <truncate2+0x4c>
    613c:	fe842703          	lw	a4,-24(s0)
    6140:	9f99                	subw	a5,a5,a4
    6142:	2781                	sext.w	a5,a5
    6144:	853e                	mv	a0,a5
    6146:	00001097          	auipc	ra,0x1
    614a:	7ea080e7          	jalr	2026(ra) # 7930 <sbrk>
    614e:	4501                	li	a0,0
    6150:	00001097          	auipc	ra,0x1
    6154:	758080e7          	jalr	1880(ra) # 78a8 <exit>
    6158:	4501                	li	a0,0
    615a:	00001097          	auipc	ra,0x1
    615e:	756080e7          	jalr	1878(ra) # 78b0 <wait>
    6162:	00001097          	auipc	ra,0x1
    6166:	73e080e7          	jalr	1854(ra) # 78a0 <fork>
    616a:	87aa                	mv	a5,a0
    616c:	fef42623          	sw	a5,-20(s0)
    6170:	fec42783          	lw	a5,-20(s0)
    6174:	2781                	sext.w	a5,a5
    6176:	0007df63          	bgez	a5,6194 <sbrkbugs+0x126>
    617a:	00002517          	auipc	a0,0x2
    617e:	1c650513          	addi	a0,a0,454 # 8340 <malloc+0x356>
    6182:	00002097          	auipc	ra,0x2
    6186:	c76080e7          	jalr	-906(ra) # 7df8 <printf>
    618a:	4505                	li	a0,1
    618c:	00001097          	auipc	ra,0x1
    6190:	71c080e7          	jalr	1820(ra) # 78a8 <exit>
    6194:	fec42783          	lw	a5,-20(s0)
    6198:	2781                	sext.w	a5,a5
    619a:	ef95                	bnez	a5,61d6 <sbrkbugs+0x168>
    619c:	4501                	li	a0,0
    619e:	00001097          	auipc	ra,0x1
    61a2:	792080e7          	jalr	1938(ra) # 7930 <sbrk>
    61a6:	87aa                	mv	a5,a0
    61a8:	2781                	sext.w	a5,a5
    61aa:	672d                	lui	a4,0xb
    61ac:	8007071b          	addiw	a4,a4,-2048 # a800 <malloc+0x2816>
    61b0:	40f707bb          	subw	a5,a4,a5
    61b4:	2781                	sext.w	a5,a5
    61b6:	2781                	sext.w	a5,a5
    61b8:	853e                	mv	a0,a5
    61ba:	00001097          	auipc	ra,0x1
    61be:	776080e7          	jalr	1910(ra) # 7930 <sbrk>
    61c2:	5559                	li	a0,-10
    61c4:	00001097          	auipc	ra,0x1
    61c8:	76c080e7          	jalr	1900(ra) # 7930 <sbrk>
    61cc:	4501                	li	a0,0
    61ce:	00001097          	auipc	ra,0x1
    61d2:	6da080e7          	jalr	1754(ra) # 78a8 <exit>
    61d6:	4501                	li	a0,0
    61d8:	00001097          	auipc	ra,0x1
    61dc:	6d8080e7          	jalr	1752(ra) # 78b0 <wait>
    61e0:	4501                	li	a0,0
    61e2:	00001097          	auipc	ra,0x1
    61e6:	6c6080e7          	jalr	1734(ra) # 78a8 <exit>

00000000000061ea <sbrklast>:
    61ea:	7139                	addi	sp,sp,-64
    61ec:	fc06                	sd	ra,56(sp)
    61ee:	f822                	sd	s0,48(sp)
    61f0:	0080                	addi	s0,sp,64
    61f2:	fca43423          	sd	a0,-56(s0)
    61f6:	4501                	li	a0,0
    61f8:	00001097          	auipc	ra,0x1
    61fc:	738080e7          	jalr	1848(ra) # 7930 <sbrk>
    6200:	87aa                	mv	a5,a0
    6202:	fef43423          	sd	a5,-24(s0)
    6206:	fe843703          	ld	a4,-24(s0)
    620a:	6785                	lui	a5,0x1
    620c:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
    620e:	8ff9                	and	a5,a5,a4
    6210:	c39d                	beqz	a5,6236 <sbrklast+0x4c>
    6212:	fe843783          	ld	a5,-24(s0)
    6216:	2781                	sext.w	a5,a5
    6218:	873e                	mv	a4,a5
    621a:	6785                	lui	a5,0x1
    621c:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
    621e:	8ff9                	and	a5,a5,a4
    6220:	2781                	sext.w	a5,a5
    6222:	6705                	lui	a4,0x1
    6224:	40f707bb          	subw	a5,a4,a5
    6228:	2781                	sext.w	a5,a5
    622a:	2781                	sext.w	a5,a5
    622c:	853e                	mv	a0,a5
    622e:	00001097          	auipc	ra,0x1
    6232:	702080e7          	jalr	1794(ra) # 7930 <sbrk>
    6236:	6505                	lui	a0,0x1
    6238:	00001097          	auipc	ra,0x1
    623c:	6f8080e7          	jalr	1784(ra) # 7930 <sbrk>
    6240:	4529                	li	a0,10
    6242:	00001097          	auipc	ra,0x1
    6246:	6ee080e7          	jalr	1774(ra) # 7930 <sbrk>
    624a:	5531                	li	a0,-20
    624c:	00001097          	auipc	ra,0x1
    6250:	6e4080e7          	jalr	1764(ra) # 7930 <sbrk>
    6254:	4501                	li	a0,0
    6256:	00001097          	auipc	ra,0x1
    625a:	6da080e7          	jalr	1754(ra) # 7930 <sbrk>
    625e:	87aa                	mv	a5,a0
    6260:	fef43423          	sd	a5,-24(s0)
    6264:	fe843783          	ld	a5,-24(s0)
    6268:	fc078793          	addi	a5,a5,-64
    626c:	fef43023          	sd	a5,-32(s0)
    6270:	fe043783          	ld	a5,-32(s0)
    6274:	07800713          	li	a4,120
    6278:	00e78023          	sb	a4,0(a5)
    627c:	fe043783          	ld	a5,-32(s0)
    6280:	0785                	addi	a5,a5,1
    6282:	00078023          	sb	zero,0(a5)
    6286:	20200593          	li	a1,514
    628a:	fe043503          	ld	a0,-32(s0)
    628e:	00001097          	auipc	ra,0x1
    6292:	65a080e7          	jalr	1626(ra) # 78e8 <open>
    6296:	87aa                	mv	a5,a0
    6298:	fcf42e23          	sw	a5,-36(s0)
    629c:	fdc42783          	lw	a5,-36(s0)
    62a0:	4605                	li	a2,1
    62a2:	fe043583          	ld	a1,-32(s0)
    62a6:	853e                	mv	a0,a5
    62a8:	00001097          	auipc	ra,0x1
    62ac:	620080e7          	jalr	1568(ra) # 78c8 <write>
    62b0:	fdc42783          	lw	a5,-36(s0)
    62b4:	853e                	mv	a0,a5
    62b6:	00001097          	auipc	ra,0x1
    62ba:	61a080e7          	jalr	1562(ra) # 78d0 <close>
    62be:	4589                	li	a1,2
    62c0:	fe043503          	ld	a0,-32(s0)
    62c4:	00001097          	auipc	ra,0x1
    62c8:	624080e7          	jalr	1572(ra) # 78e8 <open>
    62cc:	87aa                	mv	a5,a0
    62ce:	fcf42e23          	sw	a5,-36(s0)
    62d2:	fe043783          	ld	a5,-32(s0)
    62d6:	00078023          	sb	zero,0(a5)
    62da:	fdc42783          	lw	a5,-36(s0)
    62de:	4605                	li	a2,1
    62e0:	fe043583          	ld	a1,-32(s0)
    62e4:	853e                	mv	a0,a5
    62e6:	00001097          	auipc	ra,0x1
    62ea:	5da080e7          	jalr	1498(ra) # 78c0 <read>
    62ee:	fe043783          	ld	a5,-32(s0)
    62f2:	0007c783          	lbu	a5,0(a5)
    62f6:	873e                	mv	a4,a5
    62f8:	07800793          	li	a5,120
    62fc:	00f70763          	beq	a4,a5,630a <sbrklast+0x120>
    6300:	4505                	li	a0,1
    6302:	00001097          	auipc	ra,0x1
    6306:	5a6080e7          	jalr	1446(ra) # 78a8 <exit>
    630a:	0001                	nop
    630c:	70e2                	ld	ra,56(sp)
    630e:	7442                	ld	s0,48(sp)
    6310:	6121                	addi	sp,sp,64
    6312:	8082                	ret

0000000000006314 <sbrk8000>:
    6314:	7179                	addi	sp,sp,-48
    6316:	f406                	sd	ra,40(sp)
    6318:	f022                	sd	s0,32(sp)
    631a:	1800                	addi	s0,sp,48
    631c:	fca43c23          	sd	a0,-40(s0)
    6320:	800007b7          	lui	a5,0x80000
    6324:	00478513          	addi	a0,a5,4 # ffffffff80000004 <freep+0xffffffff7ffee36c>
    6328:	00001097          	auipc	ra,0x1
    632c:	608080e7          	jalr	1544(ra) # 7930 <sbrk>
    6330:	4501                	li	a0,0
    6332:	00001097          	auipc	ra,0x1
    6336:	5fe080e7          	jalr	1534(ra) # 7930 <sbrk>
    633a:	fea43423          	sd	a0,-24(s0)
    633e:	fe843783          	ld	a5,-24(s0)
    6342:	17fd                	addi	a5,a5,-1
    6344:	0007c783          	lbu	a5,0(a5)
    6348:	0ff7f713          	zext.b	a4,a5
    634c:	fe843783          	ld	a5,-24(s0)
    6350:	17fd                	addi	a5,a5,-1
    6352:	2705                	addiw	a4,a4,1 # 1001 <truncate3+0x1b3>
    6354:	0ff77713          	zext.b	a4,a4
    6358:	00e78023          	sb	a4,0(a5)
    635c:	0001                	nop
    635e:	70a2                	ld	ra,40(sp)
    6360:	7402                	ld	s0,32(sp)
    6362:	6145                	addi	sp,sp,48
    6364:	8082                	ret

0000000000006366 <badarg>:
    6366:	7139                	addi	sp,sp,-64
    6368:	fc06                	sd	ra,56(sp)
    636a:	f822                	sd	s0,48(sp)
    636c:	0080                	addi	s0,sp,64
    636e:	fca43423          	sd	a0,-56(s0)
    6372:	fe042623          	sw	zero,-20(s0)
    6376:	a03d                	j	63a4 <badarg+0x3e>
    6378:	57fd                	li	a5,-1
    637a:	9381                	srli	a5,a5,0x20
    637c:	fcf43c23          	sd	a5,-40(s0)
    6380:	fe043023          	sd	zero,-32(s0)
    6384:	fd840793          	addi	a5,s0,-40
    6388:	85be                	mv	a1,a5
    638a:	00002517          	auipc	a0,0x2
    638e:	fc650513          	addi	a0,a0,-58 # 8350 <malloc+0x366>
    6392:	00001097          	auipc	ra,0x1
    6396:	54e080e7          	jalr	1358(ra) # 78e0 <exec>
    639a:	fec42783          	lw	a5,-20(s0)
    639e:	2785                	addiw	a5,a5,1
    63a0:	fef42623          	sw	a5,-20(s0)
    63a4:	fec42783          	lw	a5,-20(s0)
    63a8:	0007871b          	sext.w	a4,a5
    63ac:	67b1                	lui	a5,0xc
    63ae:	34f78793          	addi	a5,a5,847 # c34f <buf+0xedf>
    63b2:	fce7d3e3          	bge	a5,a4,6378 <badarg+0x12>
    63b6:	4501                	li	a0,0
    63b8:	00001097          	auipc	ra,0x1
    63bc:	4f0080e7          	jalr	1264(ra) # 78a8 <exit>

00000000000063c0 <bigdir>:
    63c0:	7139                	addi	sp,sp,-64
    63c2:	fc06                	sd	ra,56(sp)
    63c4:	f822                	sd	s0,48(sp)
    63c6:	0080                	addi	s0,sp,64
    63c8:	fca43423          	sd	a0,-56(s0)
    63cc:	00004517          	auipc	a0,0x4
    63d0:	f3c50513          	addi	a0,a0,-196 # a308 <malloc+0x231e>
    63d4:	00001097          	auipc	ra,0x1
    63d8:	524080e7          	jalr	1316(ra) # 78f8 <unlink>
    63dc:	20000593          	li	a1,512
    63e0:	00004517          	auipc	a0,0x4
    63e4:	f2850513          	addi	a0,a0,-216 # a308 <malloc+0x231e>
    63e8:	00001097          	auipc	ra,0x1
    63ec:	500080e7          	jalr	1280(ra) # 78e8 <open>
    63f0:	87aa                	mv	a5,a0
    63f2:	fef42423          	sw	a5,-24(s0)
    63f6:	fe842783          	lw	a5,-24(s0)
    63fa:	2781                	sext.w	a5,a5
    63fc:	0207d163          	bgez	a5,641e <bigdir+0x5e>
    6400:	fc843583          	ld	a1,-56(s0)
    6404:	00004517          	auipc	a0,0x4
    6408:	f0c50513          	addi	a0,a0,-244 # a310 <malloc+0x2326>
    640c:	00002097          	auipc	ra,0x2
    6410:	9ec080e7          	jalr	-1556(ra) # 7df8 <printf>
    6414:	4505                	li	a0,1
    6416:	00001097          	auipc	ra,0x1
    641a:	492080e7          	jalr	1170(ra) # 78a8 <exit>
    641e:	fe842783          	lw	a5,-24(s0)
    6422:	853e                	mv	a0,a5
    6424:	00001097          	auipc	ra,0x1
    6428:	4ac080e7          	jalr	1196(ra) # 78d0 <close>
    642c:	fe042623          	sw	zero,-20(s0)
    6430:	a055                	j	64d4 <bigdir+0x114>
    6432:	07800793          	li	a5,120
    6436:	fcf40c23          	sb	a5,-40(s0)
    643a:	fec42783          	lw	a5,-20(s0)
    643e:	41f7d71b          	sraiw	a4,a5,0x1f
    6442:	01a7571b          	srliw	a4,a4,0x1a
    6446:	9fb9                	addw	a5,a5,a4
    6448:	4067d79b          	sraiw	a5,a5,0x6
    644c:	2781                	sext.w	a5,a5
    644e:	0ff7f793          	zext.b	a5,a5
    6452:	0307879b          	addiw	a5,a5,48
    6456:	0ff7f793          	zext.b	a5,a5
    645a:	fcf40ca3          	sb	a5,-39(s0)
    645e:	fec42783          	lw	a5,-20(s0)
    6462:	873e                	mv	a4,a5
    6464:	41f7579b          	sraiw	a5,a4,0x1f
    6468:	01a7d79b          	srliw	a5,a5,0x1a
    646c:	9f3d                	addw	a4,a4,a5
    646e:	03f77713          	andi	a4,a4,63
    6472:	40f707bb          	subw	a5,a4,a5
    6476:	2781                	sext.w	a5,a5
    6478:	0ff7f793          	zext.b	a5,a5
    647c:	0307879b          	addiw	a5,a5,48
    6480:	0ff7f793          	zext.b	a5,a5
    6484:	fcf40d23          	sb	a5,-38(s0)
    6488:	fc040da3          	sb	zero,-37(s0)
    648c:	fd840793          	addi	a5,s0,-40
    6490:	85be                	mv	a1,a5
    6492:	00004517          	auipc	a0,0x4
    6496:	e7650513          	addi	a0,a0,-394 # a308 <malloc+0x231e>
    649a:	00001097          	auipc	ra,0x1
    649e:	46e080e7          	jalr	1134(ra) # 7908 <link>
    64a2:	87aa                	mv	a5,a0
    64a4:	c39d                	beqz	a5,64ca <bigdir+0x10a>
    64a6:	fd840793          	addi	a5,s0,-40
    64aa:	863e                	mv	a2,a5
    64ac:	fc843583          	ld	a1,-56(s0)
    64b0:	00004517          	auipc	a0,0x4
    64b4:	e8050513          	addi	a0,a0,-384 # a330 <malloc+0x2346>
    64b8:	00002097          	auipc	ra,0x2
    64bc:	940080e7          	jalr	-1728(ra) # 7df8 <printf>
    64c0:	4505                	li	a0,1
    64c2:	00001097          	auipc	ra,0x1
    64c6:	3e6080e7          	jalr	998(ra) # 78a8 <exit>
    64ca:	fec42783          	lw	a5,-20(s0)
    64ce:	2785                	addiw	a5,a5,1
    64d0:	fef42623          	sw	a5,-20(s0)
    64d4:	fec42783          	lw	a5,-20(s0)
    64d8:	0007871b          	sext.w	a4,a5
    64dc:	1f300793          	li	a5,499
    64e0:	f4e7d9e3          	bge	a5,a4,6432 <bigdir+0x72>
    64e4:	00004517          	auipc	a0,0x4
    64e8:	e2450513          	addi	a0,a0,-476 # a308 <malloc+0x231e>
    64ec:	00001097          	auipc	ra,0x1
    64f0:	40c080e7          	jalr	1036(ra) # 78f8 <unlink>
    64f4:	fe042623          	sw	zero,-20(s0)
    64f8:	a859                	j	658e <bigdir+0x1ce>
    64fa:	07800793          	li	a5,120
    64fe:	fcf40c23          	sb	a5,-40(s0)
    6502:	fec42783          	lw	a5,-20(s0)
    6506:	41f7d71b          	sraiw	a4,a5,0x1f
    650a:	01a7571b          	srliw	a4,a4,0x1a
    650e:	9fb9                	addw	a5,a5,a4
    6510:	4067d79b          	sraiw	a5,a5,0x6
    6514:	2781                	sext.w	a5,a5
    6516:	0ff7f793          	zext.b	a5,a5
    651a:	0307879b          	addiw	a5,a5,48
    651e:	0ff7f793          	zext.b	a5,a5
    6522:	fcf40ca3          	sb	a5,-39(s0)
    6526:	fec42783          	lw	a5,-20(s0)
    652a:	873e                	mv	a4,a5
    652c:	41f7579b          	sraiw	a5,a4,0x1f
    6530:	01a7d79b          	srliw	a5,a5,0x1a
    6534:	9f3d                	addw	a4,a4,a5
    6536:	03f77713          	andi	a4,a4,63
    653a:	40f707bb          	subw	a5,a4,a5
    653e:	2781                	sext.w	a5,a5
    6540:	0ff7f793          	zext.b	a5,a5
    6544:	0307879b          	addiw	a5,a5,48
    6548:	0ff7f793          	zext.b	a5,a5
    654c:	fcf40d23          	sb	a5,-38(s0)
    6550:	fc040da3          	sb	zero,-37(s0)
    6554:	fd840793          	addi	a5,s0,-40
    6558:	853e                	mv	a0,a5
    655a:	00001097          	auipc	ra,0x1
    655e:	39e080e7          	jalr	926(ra) # 78f8 <unlink>
    6562:	87aa                	mv	a5,a0
    6564:	c385                	beqz	a5,6584 <bigdir+0x1c4>
    6566:	fc843583          	ld	a1,-56(s0)
    656a:	00004517          	auipc	a0,0x4
    656e:	de650513          	addi	a0,a0,-538 # a350 <malloc+0x2366>
    6572:	00002097          	auipc	ra,0x2
    6576:	886080e7          	jalr	-1914(ra) # 7df8 <printf>
    657a:	4505                	li	a0,1
    657c:	00001097          	auipc	ra,0x1
    6580:	32c080e7          	jalr	812(ra) # 78a8 <exit>
    6584:	fec42783          	lw	a5,-20(s0)
    6588:	2785                	addiw	a5,a5,1
    658a:	fef42623          	sw	a5,-20(s0)
    658e:	fec42783          	lw	a5,-20(s0)
    6592:	0007871b          	sext.w	a4,a5
    6596:	1f300793          	li	a5,499
    659a:	f6e7d0e3          	bge	a5,a4,64fa <bigdir+0x13a>
    659e:	0001                	nop
    65a0:	0001                	nop
    65a2:	70e2                	ld	ra,56(sp)
    65a4:	7442                	ld	s0,48(sp)
    65a6:	6121                	addi	sp,sp,64
    65a8:	8082                	ret

00000000000065aa <manywrites>:
    65aa:	711d                	addi	sp,sp,-96
    65ac:	ec86                	sd	ra,88(sp)
    65ae:	e8a2                	sd	s0,80(sp)
    65b0:	1080                	addi	s0,sp,96
    65b2:	faa43423          	sd	a0,-88(s0)
    65b6:	4791                	li	a5,4
    65b8:	fcf42e23          	sw	a5,-36(s0)
    65bc:	47f9                	li	a5,30
    65be:	fcf42c23          	sw	a5,-40(s0)
    65c2:	fe042623          	sw	zero,-20(s0)
    65c6:	aa61                	j	675e <manywrites+0x1b4>
    65c8:	00001097          	auipc	ra,0x1
    65cc:	2d8080e7          	jalr	728(ra) # 78a0 <fork>
    65d0:	87aa                	mv	a5,a0
    65d2:	fcf42a23          	sw	a5,-44(s0)
    65d6:	fd442783          	lw	a5,-44(s0)
    65da:	2781                	sext.w	a5,a5
    65dc:	0007df63          	bgez	a5,65fa <manywrites+0x50>
    65e0:	00002517          	auipc	a0,0x2
    65e4:	d6050513          	addi	a0,a0,-672 # 8340 <malloc+0x356>
    65e8:	00002097          	auipc	ra,0x2
    65ec:	810080e7          	jalr	-2032(ra) # 7df8 <printf>
    65f0:	4505                	li	a0,1
    65f2:	00001097          	auipc	ra,0x1
    65f6:	2b6080e7          	jalr	694(ra) # 78a8 <exit>
    65fa:	fd442783          	lw	a5,-44(s0)
    65fe:	2781                	sext.w	a5,a5
    6600:	14079a63          	bnez	a5,6754 <manywrites+0x1aa>
    6604:	06200793          	li	a5,98
    6608:	fcf40023          	sb	a5,-64(s0)
    660c:	fec42783          	lw	a5,-20(s0)
    6610:	0ff7f793          	zext.b	a5,a5
    6614:	0617879b          	addiw	a5,a5,97
    6618:	0ff7f793          	zext.b	a5,a5
    661c:	fcf400a3          	sb	a5,-63(s0)
    6620:	fc040123          	sb	zero,-62(s0)
    6624:	fc040793          	addi	a5,s0,-64
    6628:	853e                	mv	a0,a5
    662a:	00001097          	auipc	ra,0x1
    662e:	2ce080e7          	jalr	718(ra) # 78f8 <unlink>
    6632:	fe042423          	sw	zero,-24(s0)
    6636:	a8d5                	j	672a <manywrites+0x180>
    6638:	fe042223          	sw	zero,-28(s0)
    663c:	a0d1                	j	6700 <manywrites+0x156>
    663e:	fc040793          	addi	a5,s0,-64
    6642:	20200593          	li	a1,514
    6646:	853e                	mv	a0,a5
    6648:	00001097          	auipc	ra,0x1
    664c:	2a0080e7          	jalr	672(ra) # 78e8 <open>
    6650:	87aa                	mv	a5,a0
    6652:	fcf42823          	sw	a5,-48(s0)
    6656:	fd042783          	lw	a5,-48(s0)
    665a:	2781                	sext.w	a5,a5
    665c:	0207d463          	bgez	a5,6684 <manywrites+0xda>
    6660:	fc040793          	addi	a5,s0,-64
    6664:	863e                	mv	a2,a5
    6666:	fa843583          	ld	a1,-88(s0)
    666a:	00004517          	auipc	a0,0x4
    666e:	d0650513          	addi	a0,a0,-762 # a370 <malloc+0x2386>
    6672:	00001097          	auipc	ra,0x1
    6676:	786080e7          	jalr	1926(ra) # 7df8 <printf>
    667a:	4505                	li	a0,1
    667c:	00001097          	auipc	ra,0x1
    6680:	22c080e7          	jalr	556(ra) # 78a8 <exit>
    6684:	678d                	lui	a5,0x3
    6686:	fcf42623          	sw	a5,-52(s0)
    668a:	fcc42703          	lw	a4,-52(s0)
    668e:	fd042783          	lw	a5,-48(s0)
    6692:	863a                	mv	a2,a4
    6694:	00005597          	auipc	a1,0x5
    6698:	ddc58593          	addi	a1,a1,-548 # b470 <buf>
    669c:	853e                	mv	a0,a5
    669e:	00001097          	auipc	ra,0x1
    66a2:	22a080e7          	jalr	554(ra) # 78c8 <write>
    66a6:	87aa                	mv	a5,a0
    66a8:	fcf42423          	sw	a5,-56(s0)
    66ac:	fc842783          	lw	a5,-56(s0)
    66b0:	873e                	mv	a4,a5
    66b2:	fcc42783          	lw	a5,-52(s0)
    66b6:	2701                	sext.w	a4,a4
    66b8:	2781                	sext.w	a5,a5
    66ba:	02f70763          	beq	a4,a5,66e8 <manywrites+0x13e>
    66be:	fc842703          	lw	a4,-56(s0)
    66c2:	fcc42783          	lw	a5,-52(s0)
    66c6:	86ba                	mv	a3,a4
    66c8:	863e                	mv	a2,a5
    66ca:	fa843583          	ld	a1,-88(s0)
    66ce:	00003517          	auipc	a0,0x3
    66d2:	eaa50513          	addi	a0,a0,-342 # 9578 <malloc+0x158e>
    66d6:	00001097          	auipc	ra,0x1
    66da:	722080e7          	jalr	1826(ra) # 7df8 <printf>
    66de:	4505                	li	a0,1
    66e0:	00001097          	auipc	ra,0x1
    66e4:	1c8080e7          	jalr	456(ra) # 78a8 <exit>
    66e8:	fd042783          	lw	a5,-48(s0)
    66ec:	853e                	mv	a0,a5
    66ee:	00001097          	auipc	ra,0x1
    66f2:	1e2080e7          	jalr	482(ra) # 78d0 <close>
    66f6:	fe442783          	lw	a5,-28(s0)
    66fa:	2785                	addiw	a5,a5,1 # 3001 <createdelete+0x287>
    66fc:	fef42223          	sw	a5,-28(s0)
    6700:	fec42783          	lw	a5,-20(s0)
    6704:	873e                	mv	a4,a5
    6706:	fe442783          	lw	a5,-28(s0)
    670a:	2701                	sext.w	a4,a4
    670c:	2781                	sext.w	a5,a5
    670e:	f2f758e3          	bge	a4,a5,663e <manywrites+0x94>
    6712:	fc040793          	addi	a5,s0,-64
    6716:	853e                	mv	a0,a5
    6718:	00001097          	auipc	ra,0x1
    671c:	1e0080e7          	jalr	480(ra) # 78f8 <unlink>
    6720:	fe842783          	lw	a5,-24(s0)
    6724:	2785                	addiw	a5,a5,1
    6726:	fef42423          	sw	a5,-24(s0)
    672a:	fe842783          	lw	a5,-24(s0)
    672e:	873e                	mv	a4,a5
    6730:	fd842783          	lw	a5,-40(s0)
    6734:	2701                	sext.w	a4,a4
    6736:	2781                	sext.w	a5,a5
    6738:	f0f740e3          	blt	a4,a5,6638 <manywrites+0x8e>
    673c:	fc040793          	addi	a5,s0,-64
    6740:	853e                	mv	a0,a5
    6742:	00001097          	auipc	ra,0x1
    6746:	1b6080e7          	jalr	438(ra) # 78f8 <unlink>
    674a:	4501                	li	a0,0
    674c:	00001097          	auipc	ra,0x1
    6750:	15c080e7          	jalr	348(ra) # 78a8 <exit>
    6754:	fec42783          	lw	a5,-20(s0)
    6758:	2785                	addiw	a5,a5,1
    675a:	fef42623          	sw	a5,-20(s0)
    675e:	fec42783          	lw	a5,-20(s0)
    6762:	873e                	mv	a4,a5
    6764:	fdc42783          	lw	a5,-36(s0)
    6768:	2701                	sext.w	a4,a4
    676a:	2781                	sext.w	a5,a5
    676c:	e4f74ee3          	blt	a4,a5,65c8 <manywrites+0x1e>
    6770:	fe042023          	sw	zero,-32(s0)
    6774:	a80d                	j	67a6 <manywrites+0x1fc>
    6776:	fa042e23          	sw	zero,-68(s0)
    677a:	fbc40793          	addi	a5,s0,-68
    677e:	853e                	mv	a0,a5
    6780:	00001097          	auipc	ra,0x1
    6784:	130080e7          	jalr	304(ra) # 78b0 <wait>
    6788:	fbc42783          	lw	a5,-68(s0)
    678c:	cb81                	beqz	a5,679c <manywrites+0x1f2>
    678e:	fbc42783          	lw	a5,-68(s0)
    6792:	853e                	mv	a0,a5
    6794:	00001097          	auipc	ra,0x1
    6798:	114080e7          	jalr	276(ra) # 78a8 <exit>
    679c:	fe042783          	lw	a5,-32(s0)
    67a0:	2785                	addiw	a5,a5,1
    67a2:	fef42023          	sw	a5,-32(s0)
    67a6:	fe042783          	lw	a5,-32(s0)
    67aa:	873e                	mv	a4,a5
    67ac:	fdc42783          	lw	a5,-36(s0)
    67b0:	2701                	sext.w	a4,a4
    67b2:	2781                	sext.w	a5,a5
    67b4:	fcf741e3          	blt	a4,a5,6776 <manywrites+0x1cc>
    67b8:	4501                	li	a0,0
    67ba:	00001097          	auipc	ra,0x1
    67be:	0ee080e7          	jalr	238(ra) # 78a8 <exit>

00000000000067c2 <badwrite>:
    67c2:	7179                	addi	sp,sp,-48
    67c4:	f406                	sd	ra,40(sp)
    67c6:	f022                	sd	s0,32(sp)
    67c8:	1800                	addi	s0,sp,48
    67ca:	fca43c23          	sd	a0,-40(s0)
    67ce:	25800793          	li	a5,600
    67d2:	fef42423          	sw	a5,-24(s0)
    67d6:	00004517          	auipc	a0,0x4
    67da:	bb250513          	addi	a0,a0,-1102 # a388 <malloc+0x239e>
    67de:	00001097          	auipc	ra,0x1
    67e2:	11a080e7          	jalr	282(ra) # 78f8 <unlink>
    67e6:	fe042623          	sw	zero,-20(s0)
    67ea:	a8bd                	j	6868 <badwrite+0xa6>
    67ec:	20100593          	li	a1,513
    67f0:	00004517          	auipc	a0,0x4
    67f4:	b9850513          	addi	a0,a0,-1128 # a388 <malloc+0x239e>
    67f8:	00001097          	auipc	ra,0x1
    67fc:	0f0080e7          	jalr	240(ra) # 78e8 <open>
    6800:	87aa                	mv	a5,a0
    6802:	fef42023          	sw	a5,-32(s0)
    6806:	fe042783          	lw	a5,-32(s0)
    680a:	2781                	sext.w	a5,a5
    680c:	0007df63          	bgez	a5,682a <badwrite+0x68>
    6810:	00004517          	auipc	a0,0x4
    6814:	b8050513          	addi	a0,a0,-1152 # a390 <malloc+0x23a6>
    6818:	00001097          	auipc	ra,0x1
    681c:	5e0080e7          	jalr	1504(ra) # 7df8 <printf>
    6820:	4505                	li	a0,1
    6822:	00001097          	auipc	ra,0x1
    6826:	086080e7          	jalr	134(ra) # 78a8 <exit>
    682a:	fe042703          	lw	a4,-32(s0)
    682e:	4605                	li	a2,1
    6830:	57fd                	li	a5,-1
    6832:	0187d593          	srli	a1,a5,0x18
    6836:	853a                	mv	a0,a4
    6838:	00001097          	auipc	ra,0x1
    683c:	090080e7          	jalr	144(ra) # 78c8 <write>
    6840:	fe042783          	lw	a5,-32(s0)
    6844:	853e                	mv	a0,a5
    6846:	00001097          	auipc	ra,0x1
    684a:	08a080e7          	jalr	138(ra) # 78d0 <close>
    684e:	00004517          	auipc	a0,0x4
    6852:	b3a50513          	addi	a0,a0,-1222 # a388 <malloc+0x239e>
    6856:	00001097          	auipc	ra,0x1
    685a:	0a2080e7          	jalr	162(ra) # 78f8 <unlink>
    685e:	fec42783          	lw	a5,-20(s0)
    6862:	2785                	addiw	a5,a5,1
    6864:	fef42623          	sw	a5,-20(s0)
    6868:	fec42783          	lw	a5,-20(s0)
    686c:	873e                	mv	a4,a5
    686e:	fe842783          	lw	a5,-24(s0)
    6872:	2701                	sext.w	a4,a4
    6874:	2781                	sext.w	a5,a5
    6876:	f6f74be3          	blt	a4,a5,67ec <badwrite+0x2a>
    687a:	20100593          	li	a1,513
    687e:	00004517          	auipc	a0,0x4
    6882:	b0a50513          	addi	a0,a0,-1270 # a388 <malloc+0x239e>
    6886:	00001097          	auipc	ra,0x1
    688a:	062080e7          	jalr	98(ra) # 78e8 <open>
    688e:	87aa                	mv	a5,a0
    6890:	fef42223          	sw	a5,-28(s0)
    6894:	fe442783          	lw	a5,-28(s0)
    6898:	2781                	sext.w	a5,a5
    689a:	0007df63          	bgez	a5,68b8 <badwrite+0xf6>
    689e:	00004517          	auipc	a0,0x4
    68a2:	af250513          	addi	a0,a0,-1294 # a390 <malloc+0x23a6>
    68a6:	00001097          	auipc	ra,0x1
    68aa:	552080e7          	jalr	1362(ra) # 7df8 <printf>
    68ae:	4505                	li	a0,1
    68b0:	00001097          	auipc	ra,0x1
    68b4:	ff8080e7          	jalr	-8(ra) # 78a8 <exit>
    68b8:	fe442783          	lw	a5,-28(s0)
    68bc:	4605                	li	a2,1
    68be:	00002597          	auipc	a1,0x2
    68c2:	98258593          	addi	a1,a1,-1662 # 8240 <malloc+0x256>
    68c6:	853e                	mv	a0,a5
    68c8:	00001097          	auipc	ra,0x1
    68cc:	000080e7          	jalr	ra # 78c8 <write>
    68d0:	87aa                	mv	a5,a0
    68d2:	873e                	mv	a4,a5
    68d4:	4785                	li	a5,1
    68d6:	00f70f63          	beq	a4,a5,68f4 <badwrite+0x132>
    68da:	00004517          	auipc	a0,0x4
    68de:	ace50513          	addi	a0,a0,-1330 # a3a8 <malloc+0x23be>
    68e2:	00001097          	auipc	ra,0x1
    68e6:	516080e7          	jalr	1302(ra) # 7df8 <printf>
    68ea:	4505                	li	a0,1
    68ec:	00001097          	auipc	ra,0x1
    68f0:	fbc080e7          	jalr	-68(ra) # 78a8 <exit>
    68f4:	fe442783          	lw	a5,-28(s0)
    68f8:	853e                	mv	a0,a5
    68fa:	00001097          	auipc	ra,0x1
    68fe:	fd6080e7          	jalr	-42(ra) # 78d0 <close>
    6902:	00004517          	auipc	a0,0x4
    6906:	a8650513          	addi	a0,a0,-1402 # a388 <malloc+0x239e>
    690a:	00001097          	auipc	ra,0x1
    690e:	fee080e7          	jalr	-18(ra) # 78f8 <unlink>
    6912:	4501                	li	a0,0
    6914:	00001097          	auipc	ra,0x1
    6918:	f94080e7          	jalr	-108(ra) # 78a8 <exit>

000000000000691c <execout>:
    691c:	715d                	addi	sp,sp,-80
    691e:	e486                	sd	ra,72(sp)
    6920:	e0a2                	sd	s0,64(sp)
    6922:	0880                	addi	s0,sp,80
    6924:	faa43c23          	sd	a0,-72(s0)
    6928:	fe042623          	sw	zero,-20(s0)
    692c:	a8cd                	j	6a1e <execout+0x102>
    692e:	00001097          	auipc	ra,0x1
    6932:	f72080e7          	jalr	-142(ra) # 78a0 <fork>
    6936:	87aa                	mv	a5,a0
    6938:	fef42223          	sw	a5,-28(s0)
    693c:	fe442783          	lw	a5,-28(s0)
    6940:	2781                	sext.w	a5,a5
    6942:	0007df63          	bgez	a5,6960 <execout+0x44>
    6946:	00002517          	auipc	a0,0x2
    694a:	9fa50513          	addi	a0,a0,-1542 # 8340 <malloc+0x356>
    694e:	00001097          	auipc	ra,0x1
    6952:	4aa080e7          	jalr	1194(ra) # 7df8 <printf>
    6956:	4505                	li	a0,1
    6958:	00001097          	auipc	ra,0x1
    695c:	f50080e7          	jalr	-176(ra) # 78a8 <exit>
    6960:	fe442783          	lw	a5,-28(s0)
    6964:	2781                	sext.w	a5,a5
    6966:	e3d5                	bnez	a5,6a0a <execout+0xee>
    6968:	6505                	lui	a0,0x1
    696a:	00001097          	auipc	ra,0x1
    696e:	fc6080e7          	jalr	-58(ra) # 7930 <sbrk>
    6972:	87aa                	mv	a5,a0
    6974:	fcf43c23          	sd	a5,-40(s0)
    6978:	fd843703          	ld	a4,-40(s0)
    697c:	57fd                	li	a5,-1
    697e:	00f70c63          	beq	a4,a5,6996 <execout+0x7a>
    6982:	fd843703          	ld	a4,-40(s0)
    6986:	6785                	lui	a5,0x1
    6988:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
    698a:	97ba                	add	a5,a5,a4
    698c:	873e                	mv	a4,a5
    698e:	4785                	li	a5,1
    6990:	00f70023          	sb	a5,0(a4)
    6994:	bfd1                	j	6968 <execout+0x4c>
    6996:	0001                	nop
    6998:	fe042423          	sw	zero,-24(s0)
    699c:	a819                	j	69b2 <execout+0x96>
    699e:	757d                	lui	a0,0xfffff
    69a0:	00001097          	auipc	ra,0x1
    69a4:	f90080e7          	jalr	-112(ra) # 7930 <sbrk>
    69a8:	fe842783          	lw	a5,-24(s0)
    69ac:	2785                	addiw	a5,a5,1
    69ae:	fef42423          	sw	a5,-24(s0)
    69b2:	fe842783          	lw	a5,-24(s0)
    69b6:	873e                	mv	a4,a5
    69b8:	fec42783          	lw	a5,-20(s0)
    69bc:	2701                	sext.w	a4,a4
    69be:	2781                	sext.w	a5,a5
    69c0:	fcf74fe3          	blt	a4,a5,699e <execout+0x82>
    69c4:	4505                	li	a0,1
    69c6:	00001097          	auipc	ra,0x1
    69ca:	f0a080e7          	jalr	-246(ra) # 78d0 <close>
    69ce:	00002797          	auipc	a5,0x2
    69d2:	98278793          	addi	a5,a5,-1662 # 8350 <malloc+0x366>
    69d6:	fcf43023          	sd	a5,-64(s0)
    69da:	00002797          	auipc	a5,0x2
    69de:	86678793          	addi	a5,a5,-1946 # 8240 <malloc+0x256>
    69e2:	fcf43423          	sd	a5,-56(s0)
    69e6:	fc043823          	sd	zero,-48(s0)
    69ea:	fc040793          	addi	a5,s0,-64
    69ee:	85be                	mv	a1,a5
    69f0:	00002517          	auipc	a0,0x2
    69f4:	96050513          	addi	a0,a0,-1696 # 8350 <malloc+0x366>
    69f8:	00001097          	auipc	ra,0x1
    69fc:	ee8080e7          	jalr	-280(ra) # 78e0 <exec>
    6a00:	4501                	li	a0,0
    6a02:	00001097          	auipc	ra,0x1
    6a06:	ea6080e7          	jalr	-346(ra) # 78a8 <exit>
    6a0a:	4501                	li	a0,0
    6a0c:	00001097          	auipc	ra,0x1
    6a10:	ea4080e7          	jalr	-348(ra) # 78b0 <wait>
    6a14:	fec42783          	lw	a5,-20(s0)
    6a18:	2785                	addiw	a5,a5,1
    6a1a:	fef42623          	sw	a5,-20(s0)
    6a1e:	fec42783          	lw	a5,-20(s0)
    6a22:	0007871b          	sext.w	a4,a5
    6a26:	47b9                	li	a5,14
    6a28:	f0e7d3e3          	bge	a5,a4,692e <execout+0x12>
    6a2c:	4501                	li	a0,0
    6a2e:	00001097          	auipc	ra,0x1
    6a32:	e7a080e7          	jalr	-390(ra) # 78a8 <exit>

0000000000006a36 <diskfull>:
    6a36:	b9010113          	addi	sp,sp,-1136
    6a3a:	46113423          	sd	ra,1128(sp)
    6a3e:	46813023          	sd	s0,1120(sp)
    6a42:	47010413          	addi	s0,sp,1136
    6a46:	b8a43c23          	sd	a0,-1128(s0)
    6a4a:	fe042423          	sw	zero,-24(s0)
    6a4e:	00004517          	auipc	a0,0x4
    6a52:	96a50513          	addi	a0,a0,-1686 # a3b8 <malloc+0x23ce>
    6a56:	00001097          	auipc	ra,0x1
    6a5a:	ea2080e7          	jalr	-350(ra) # 78f8 <unlink>
    6a5e:	fe042623          	sw	zero,-20(s0)
    6a62:	a8d5                	j	6b56 <diskfull+0x120>
    6a64:	06200793          	li	a5,98
    6a68:	baf40423          	sb	a5,-1112(s0)
    6a6c:	06900793          	li	a5,105
    6a70:	baf404a3          	sb	a5,-1111(s0)
    6a74:	06700793          	li	a5,103
    6a78:	baf40523          	sb	a5,-1110(s0)
    6a7c:	fec42783          	lw	a5,-20(s0)
    6a80:	0ff7f793          	zext.b	a5,a5
    6a84:	0307879b          	addiw	a5,a5,48
    6a88:	0ff7f793          	zext.b	a5,a5
    6a8c:	baf405a3          	sb	a5,-1109(s0)
    6a90:	ba040623          	sb	zero,-1108(s0)
    6a94:	ba840793          	addi	a5,s0,-1112
    6a98:	853e                	mv	a0,a5
    6a9a:	00001097          	auipc	ra,0x1
    6a9e:	e5e080e7          	jalr	-418(ra) # 78f8 <unlink>
    6aa2:	ba840793          	addi	a5,s0,-1112
    6aa6:	60200593          	li	a1,1538
    6aaa:	853e                	mv	a0,a5
    6aac:	00001097          	auipc	ra,0x1
    6ab0:	e3c080e7          	jalr	-452(ra) # 78e8 <open>
    6ab4:	87aa                	mv	a5,a0
    6ab6:	fcf42a23          	sw	a5,-44(s0)
    6aba:	fd442783          	lw	a5,-44(s0)
    6abe:	2781                	sext.w	a5,a5
    6ac0:	0207d363          	bgez	a5,6ae6 <diskfull+0xb0>
    6ac4:	ba840793          	addi	a5,s0,-1112
    6ac8:	863e                	mv	a2,a5
    6aca:	b9843583          	ld	a1,-1128(s0)
    6ace:	00004517          	auipc	a0,0x4
    6ad2:	8fa50513          	addi	a0,a0,-1798 # a3c8 <malloc+0x23de>
    6ad6:	00001097          	auipc	ra,0x1
    6ada:	322080e7          	jalr	802(ra) # 7df8 <printf>
    6ade:	4785                	li	a5,1
    6ae0:	fef42423          	sw	a5,-24(s0)
    6ae4:	a8ad                	j	6b5e <diskfull+0x128>
    6ae6:	fe042223          	sw	zero,-28(s0)
    6aea:	a099                	j	6b30 <diskfull+0xfa>
    6aec:	bc840713          	addi	a4,s0,-1080
    6af0:	fd442783          	lw	a5,-44(s0)
    6af4:	40000613          	li	a2,1024
    6af8:	85ba                	mv	a1,a4
    6afa:	853e                	mv	a0,a5
    6afc:	00001097          	auipc	ra,0x1
    6b00:	dcc080e7          	jalr	-564(ra) # 78c8 <write>
    6b04:	87aa                	mv	a5,a0
    6b06:	873e                	mv	a4,a5
    6b08:	40000793          	li	a5,1024
    6b0c:	00f70d63          	beq	a4,a5,6b26 <diskfull+0xf0>
    6b10:	4785                	li	a5,1
    6b12:	fef42423          	sw	a5,-24(s0)
    6b16:	fd442783          	lw	a5,-44(s0)
    6b1a:	853e                	mv	a0,a5
    6b1c:	00001097          	auipc	ra,0x1
    6b20:	db4080e7          	jalr	-588(ra) # 78d0 <close>
    6b24:	a829                	j	6b3e <diskfull+0x108>
    6b26:	fe442783          	lw	a5,-28(s0)
    6b2a:	2785                	addiw	a5,a5,1
    6b2c:	fef42223          	sw	a5,-28(s0)
    6b30:	fe442783          	lw	a5,-28(s0)
    6b34:	873e                	mv	a4,a5
    6b36:	10b00793          	li	a5,267
    6b3a:	fae7f9e3          	bgeu	a5,a4,6aec <diskfull+0xb6>
    6b3e:	fd442783          	lw	a5,-44(s0)
    6b42:	853e                	mv	a0,a5
    6b44:	00001097          	auipc	ra,0x1
    6b48:	d8c080e7          	jalr	-628(ra) # 78d0 <close>
    6b4c:	fec42783          	lw	a5,-20(s0)
    6b50:	2785                	addiw	a5,a5,1
    6b52:	fef42623          	sw	a5,-20(s0)
    6b56:	fe842783          	lw	a5,-24(s0)
    6b5a:	2781                	sext.w	a5,a5
    6b5c:	d781                	beqz	a5,6a64 <diskfull+0x2e>
    6b5e:	08000793          	li	a5,128
    6b62:	fcf42823          	sw	a5,-48(s0)
    6b66:	fe042023          	sw	zero,-32(s0)
    6b6a:	a06d                	j	6c14 <diskfull+0x1de>
    6b6c:	07a00793          	li	a5,122
    6b70:	bcf40423          	sb	a5,-1080(s0)
    6b74:	07a00793          	li	a5,122
    6b78:	bcf404a3          	sb	a5,-1079(s0)
    6b7c:	fe042783          	lw	a5,-32(s0)
    6b80:	41f7d71b          	sraiw	a4,a5,0x1f
    6b84:	01b7571b          	srliw	a4,a4,0x1b
    6b88:	9fb9                	addw	a5,a5,a4
    6b8a:	4057d79b          	sraiw	a5,a5,0x5
    6b8e:	2781                	sext.w	a5,a5
    6b90:	0ff7f793          	zext.b	a5,a5
    6b94:	0307879b          	addiw	a5,a5,48
    6b98:	0ff7f793          	zext.b	a5,a5
    6b9c:	bcf40523          	sb	a5,-1078(s0)
    6ba0:	fe042783          	lw	a5,-32(s0)
    6ba4:	873e                	mv	a4,a5
    6ba6:	41f7579b          	sraiw	a5,a4,0x1f
    6baa:	01b7d79b          	srliw	a5,a5,0x1b
    6bae:	9f3d                	addw	a4,a4,a5
    6bb0:	8b7d                	andi	a4,a4,31
    6bb2:	40f707bb          	subw	a5,a4,a5
    6bb6:	2781                	sext.w	a5,a5
    6bb8:	0ff7f793          	zext.b	a5,a5
    6bbc:	0307879b          	addiw	a5,a5,48
    6bc0:	0ff7f793          	zext.b	a5,a5
    6bc4:	bcf405a3          	sb	a5,-1077(s0)
    6bc8:	bc040623          	sb	zero,-1076(s0)
    6bcc:	bc840793          	addi	a5,s0,-1080
    6bd0:	853e                	mv	a0,a5
    6bd2:	00001097          	auipc	ra,0x1
    6bd6:	d26080e7          	jalr	-730(ra) # 78f8 <unlink>
    6bda:	bc840793          	addi	a5,s0,-1080
    6bde:	60200593          	li	a1,1538
    6be2:	853e                	mv	a0,a5
    6be4:	00001097          	auipc	ra,0x1
    6be8:	d04080e7          	jalr	-764(ra) # 78e8 <open>
    6bec:	87aa                	mv	a5,a0
    6bee:	fcf42623          	sw	a5,-52(s0)
    6bf2:	fcc42783          	lw	a5,-52(s0)
    6bf6:	2781                	sext.w	a5,a5
    6bf8:	0207c863          	bltz	a5,6c28 <diskfull+0x1f2>
    6bfc:	fcc42783          	lw	a5,-52(s0)
    6c00:	853e                	mv	a0,a5
    6c02:	00001097          	auipc	ra,0x1
    6c06:	cce080e7          	jalr	-818(ra) # 78d0 <close>
    6c0a:	fe042783          	lw	a5,-32(s0)
    6c0e:	2785                	addiw	a5,a5,1
    6c10:	fef42023          	sw	a5,-32(s0)
    6c14:	fe042783          	lw	a5,-32(s0)
    6c18:	873e                	mv	a4,a5
    6c1a:	fd042783          	lw	a5,-48(s0)
    6c1e:	2701                	sext.w	a4,a4
    6c20:	2781                	sext.w	a5,a5
    6c22:	f4f745e3          	blt	a4,a5,6b6c <diskfull+0x136>
    6c26:	a011                	j	6c2a <diskfull+0x1f4>
    6c28:	0001                	nop
    6c2a:	00003517          	auipc	a0,0x3
    6c2e:	78e50513          	addi	a0,a0,1934 # a3b8 <malloc+0x23ce>
    6c32:	00001097          	auipc	ra,0x1
    6c36:	cde080e7          	jalr	-802(ra) # 7910 <mkdir>
    6c3a:	87aa                	mv	a5,a0
    6c3c:	eb89                	bnez	a5,6c4e <diskfull+0x218>
    6c3e:	00003517          	auipc	a0,0x3
    6c42:	7aa50513          	addi	a0,a0,1962 # a3e8 <malloc+0x23fe>
    6c46:	00001097          	auipc	ra,0x1
    6c4a:	1b2080e7          	jalr	434(ra) # 7df8 <printf>
    6c4e:	00003517          	auipc	a0,0x3
    6c52:	76a50513          	addi	a0,a0,1898 # a3b8 <malloc+0x23ce>
    6c56:	00001097          	auipc	ra,0x1
    6c5a:	ca2080e7          	jalr	-862(ra) # 78f8 <unlink>
    6c5e:	fc042e23          	sw	zero,-36(s0)
    6c62:	a8ad                	j	6cdc <diskfull+0x2a6>
    6c64:	07a00793          	li	a5,122
    6c68:	bcf40423          	sb	a5,-1080(s0)
    6c6c:	07a00793          	li	a5,122
    6c70:	bcf404a3          	sb	a5,-1079(s0)
    6c74:	fdc42783          	lw	a5,-36(s0)
    6c78:	41f7d71b          	sraiw	a4,a5,0x1f
    6c7c:	01b7571b          	srliw	a4,a4,0x1b
    6c80:	9fb9                	addw	a5,a5,a4
    6c82:	4057d79b          	sraiw	a5,a5,0x5
    6c86:	2781                	sext.w	a5,a5
    6c88:	0ff7f793          	zext.b	a5,a5
    6c8c:	0307879b          	addiw	a5,a5,48
    6c90:	0ff7f793          	zext.b	a5,a5
    6c94:	bcf40523          	sb	a5,-1078(s0)
    6c98:	fdc42783          	lw	a5,-36(s0)
    6c9c:	873e                	mv	a4,a5
    6c9e:	41f7579b          	sraiw	a5,a4,0x1f
    6ca2:	01b7d79b          	srliw	a5,a5,0x1b
    6ca6:	9f3d                	addw	a4,a4,a5
    6ca8:	8b7d                	andi	a4,a4,31
    6caa:	40f707bb          	subw	a5,a4,a5
    6cae:	2781                	sext.w	a5,a5
    6cb0:	0ff7f793          	zext.b	a5,a5
    6cb4:	0307879b          	addiw	a5,a5,48
    6cb8:	0ff7f793          	zext.b	a5,a5
    6cbc:	bcf405a3          	sb	a5,-1077(s0)
    6cc0:	bc040623          	sb	zero,-1076(s0)
    6cc4:	bc840793          	addi	a5,s0,-1080
    6cc8:	853e                	mv	a0,a5
    6cca:	00001097          	auipc	ra,0x1
    6cce:	c2e080e7          	jalr	-978(ra) # 78f8 <unlink>
    6cd2:	fdc42783          	lw	a5,-36(s0)
    6cd6:	2785                	addiw	a5,a5,1
    6cd8:	fcf42e23          	sw	a5,-36(s0)
    6cdc:	fdc42783          	lw	a5,-36(s0)
    6ce0:	873e                	mv	a4,a5
    6ce2:	fd042783          	lw	a5,-48(s0)
    6ce6:	2701                	sext.w	a4,a4
    6ce8:	2781                	sext.w	a5,a5
    6cea:	f6f74de3          	blt	a4,a5,6c64 <diskfull+0x22e>
    6cee:	fc042c23          	sw	zero,-40(s0)
    6cf2:	a0a9                	j	6d3c <diskfull+0x306>
    6cf4:	06200793          	li	a5,98
    6cf8:	bcf40423          	sb	a5,-1080(s0)
    6cfc:	06900793          	li	a5,105
    6d00:	bcf404a3          	sb	a5,-1079(s0)
    6d04:	06700793          	li	a5,103
    6d08:	bcf40523          	sb	a5,-1078(s0)
    6d0c:	fd842783          	lw	a5,-40(s0)
    6d10:	0ff7f793          	zext.b	a5,a5
    6d14:	0307879b          	addiw	a5,a5,48
    6d18:	0ff7f793          	zext.b	a5,a5
    6d1c:	bcf405a3          	sb	a5,-1077(s0)
    6d20:	bc040623          	sb	zero,-1076(s0)
    6d24:	bc840793          	addi	a5,s0,-1080
    6d28:	853e                	mv	a0,a5
    6d2a:	00001097          	auipc	ra,0x1
    6d2e:	bce080e7          	jalr	-1074(ra) # 78f8 <unlink>
    6d32:	fd842783          	lw	a5,-40(s0)
    6d36:	2785                	addiw	a5,a5,1
    6d38:	fcf42c23          	sw	a5,-40(s0)
    6d3c:	fd842783          	lw	a5,-40(s0)
    6d40:	873e                	mv	a4,a5
    6d42:	fec42783          	lw	a5,-20(s0)
    6d46:	2701                	sext.w	a4,a4
    6d48:	2781                	sext.w	a5,a5
    6d4a:	faf745e3          	blt	a4,a5,6cf4 <diskfull+0x2be>
    6d4e:	0001                	nop
    6d50:	0001                	nop
    6d52:	46813083          	ld	ra,1128(sp)
    6d56:	46013403          	ld	s0,1120(sp)
    6d5a:	47010113          	addi	sp,sp,1136
    6d5e:	8082                	ret

0000000000006d60 <outofinodes>:
    6d60:	715d                	addi	sp,sp,-80
    6d62:	e486                	sd	ra,72(sp)
    6d64:	e0a2                	sd	s0,64(sp)
    6d66:	0880                	addi	s0,sp,80
    6d68:	faa43c23          	sd	a0,-72(s0)
    6d6c:	40000793          	li	a5,1024
    6d70:	fef42223          	sw	a5,-28(s0)
    6d74:	fe042623          	sw	zero,-20(s0)
    6d78:	a06d                	j	6e22 <outofinodes+0xc2>
    6d7a:	07a00793          	li	a5,122
    6d7e:	fcf40023          	sb	a5,-64(s0)
    6d82:	07a00793          	li	a5,122
    6d86:	fcf400a3          	sb	a5,-63(s0)
    6d8a:	fec42783          	lw	a5,-20(s0)
    6d8e:	41f7d71b          	sraiw	a4,a5,0x1f
    6d92:	01b7571b          	srliw	a4,a4,0x1b
    6d96:	9fb9                	addw	a5,a5,a4
    6d98:	4057d79b          	sraiw	a5,a5,0x5
    6d9c:	2781                	sext.w	a5,a5
    6d9e:	0ff7f793          	zext.b	a5,a5
    6da2:	0307879b          	addiw	a5,a5,48
    6da6:	0ff7f793          	zext.b	a5,a5
    6daa:	fcf40123          	sb	a5,-62(s0)
    6dae:	fec42783          	lw	a5,-20(s0)
    6db2:	873e                	mv	a4,a5
    6db4:	41f7579b          	sraiw	a5,a4,0x1f
    6db8:	01b7d79b          	srliw	a5,a5,0x1b
    6dbc:	9f3d                	addw	a4,a4,a5
    6dbe:	8b7d                	andi	a4,a4,31
    6dc0:	40f707bb          	subw	a5,a4,a5
    6dc4:	2781                	sext.w	a5,a5
    6dc6:	0ff7f793          	zext.b	a5,a5
    6dca:	0307879b          	addiw	a5,a5,48
    6dce:	0ff7f793          	zext.b	a5,a5
    6dd2:	fcf401a3          	sb	a5,-61(s0)
    6dd6:	fc040223          	sb	zero,-60(s0)
    6dda:	fc040793          	addi	a5,s0,-64
    6dde:	853e                	mv	a0,a5
    6de0:	00001097          	auipc	ra,0x1
    6de4:	b18080e7          	jalr	-1256(ra) # 78f8 <unlink>
    6de8:	fc040793          	addi	a5,s0,-64
    6dec:	60200593          	li	a1,1538
    6df0:	853e                	mv	a0,a5
    6df2:	00001097          	auipc	ra,0x1
    6df6:	af6080e7          	jalr	-1290(ra) # 78e8 <open>
    6dfa:	87aa                	mv	a5,a0
    6dfc:	fef42023          	sw	a5,-32(s0)
    6e00:	fe042783          	lw	a5,-32(s0)
    6e04:	2781                	sext.w	a5,a5
    6e06:	0207c863          	bltz	a5,6e36 <outofinodes+0xd6>
    6e0a:	fe042783          	lw	a5,-32(s0)
    6e0e:	853e                	mv	a0,a5
    6e10:	00001097          	auipc	ra,0x1
    6e14:	ac0080e7          	jalr	-1344(ra) # 78d0 <close>
    6e18:	fec42783          	lw	a5,-20(s0)
    6e1c:	2785                	addiw	a5,a5,1
    6e1e:	fef42623          	sw	a5,-20(s0)
    6e22:	fec42783          	lw	a5,-20(s0)
    6e26:	873e                	mv	a4,a5
    6e28:	fe442783          	lw	a5,-28(s0)
    6e2c:	2701                	sext.w	a4,a4
    6e2e:	2781                	sext.w	a5,a5
    6e30:	f4f745e3          	blt	a4,a5,6d7a <outofinodes+0x1a>
    6e34:	a011                	j	6e38 <outofinodes+0xd8>
    6e36:	0001                	nop
    6e38:	fe042423          	sw	zero,-24(s0)
    6e3c:	a8ad                	j	6eb6 <outofinodes+0x156>
    6e3e:	07a00793          	li	a5,122
    6e42:	fcf40023          	sb	a5,-64(s0)
    6e46:	07a00793          	li	a5,122
    6e4a:	fcf400a3          	sb	a5,-63(s0)
    6e4e:	fe842783          	lw	a5,-24(s0)
    6e52:	41f7d71b          	sraiw	a4,a5,0x1f
    6e56:	01b7571b          	srliw	a4,a4,0x1b
    6e5a:	9fb9                	addw	a5,a5,a4
    6e5c:	4057d79b          	sraiw	a5,a5,0x5
    6e60:	2781                	sext.w	a5,a5
    6e62:	0ff7f793          	zext.b	a5,a5
    6e66:	0307879b          	addiw	a5,a5,48
    6e6a:	0ff7f793          	zext.b	a5,a5
    6e6e:	fcf40123          	sb	a5,-62(s0)
    6e72:	fe842783          	lw	a5,-24(s0)
    6e76:	873e                	mv	a4,a5
    6e78:	41f7579b          	sraiw	a5,a4,0x1f
    6e7c:	01b7d79b          	srliw	a5,a5,0x1b
    6e80:	9f3d                	addw	a4,a4,a5
    6e82:	8b7d                	andi	a4,a4,31
    6e84:	40f707bb          	subw	a5,a4,a5
    6e88:	2781                	sext.w	a5,a5
    6e8a:	0ff7f793          	zext.b	a5,a5
    6e8e:	0307879b          	addiw	a5,a5,48
    6e92:	0ff7f793          	zext.b	a5,a5
    6e96:	fcf401a3          	sb	a5,-61(s0)
    6e9a:	fc040223          	sb	zero,-60(s0)
    6e9e:	fc040793          	addi	a5,s0,-64
    6ea2:	853e                	mv	a0,a5
    6ea4:	00001097          	auipc	ra,0x1
    6ea8:	a54080e7          	jalr	-1452(ra) # 78f8 <unlink>
    6eac:	fe842783          	lw	a5,-24(s0)
    6eb0:	2785                	addiw	a5,a5,1
    6eb2:	fef42423          	sw	a5,-24(s0)
    6eb6:	fe842783          	lw	a5,-24(s0)
    6eba:	873e                	mv	a4,a5
    6ebc:	fe442783          	lw	a5,-28(s0)
    6ec0:	2701                	sext.w	a4,a4
    6ec2:	2781                	sext.w	a5,a5
    6ec4:	f6f74de3          	blt	a4,a5,6e3e <outofinodes+0xde>
    6ec8:	0001                	nop
    6eca:	0001                	nop
    6ecc:	60a6                	ld	ra,72(sp)
    6ece:	6406                	ld	s0,64(sp)
    6ed0:	6161                	addi	sp,sp,80
    6ed2:	8082                	ret

0000000000006ed4 <run>:
    6ed4:	7179                	addi	sp,sp,-48
    6ed6:	f406                	sd	ra,40(sp)
    6ed8:	f022                	sd	s0,32(sp)
    6eda:	1800                	addi	s0,sp,48
    6edc:	fca43c23          	sd	a0,-40(s0)
    6ee0:	fcb43823          	sd	a1,-48(s0)
    6ee4:	fd043583          	ld	a1,-48(s0)
    6ee8:	00003517          	auipc	a0,0x3
    6eec:	58050513          	addi	a0,a0,1408 # a468 <malloc+0x247e>
    6ef0:	00001097          	auipc	ra,0x1
    6ef4:	f08080e7          	jalr	-248(ra) # 7df8 <printf>
    6ef8:	00001097          	auipc	ra,0x1
    6efc:	9a8080e7          	jalr	-1624(ra) # 78a0 <fork>
    6f00:	87aa                	mv	a5,a0
    6f02:	fef42623          	sw	a5,-20(s0)
    6f06:	fec42783          	lw	a5,-20(s0)
    6f0a:	2781                	sext.w	a5,a5
    6f0c:	0007df63          	bgez	a5,6f2a <run+0x56>
    6f10:	00003517          	auipc	a0,0x3
    6f14:	56850513          	addi	a0,a0,1384 # a478 <malloc+0x248e>
    6f18:	00001097          	auipc	ra,0x1
    6f1c:	ee0080e7          	jalr	-288(ra) # 7df8 <printf>
    6f20:	4505                	li	a0,1
    6f22:	00001097          	auipc	ra,0x1
    6f26:	986080e7          	jalr	-1658(ra) # 78a8 <exit>
    6f2a:	fec42783          	lw	a5,-20(s0)
    6f2e:	2781                	sext.w	a5,a5
    6f30:	eb99                	bnez	a5,6f46 <run+0x72>
    6f32:	fd843783          	ld	a5,-40(s0)
    6f36:	fd043503          	ld	a0,-48(s0)
    6f3a:	9782                	jalr	a5
    6f3c:	4501                	li	a0,0
    6f3e:	00001097          	auipc	ra,0x1
    6f42:	96a080e7          	jalr	-1686(ra) # 78a8 <exit>
    6f46:	fe840793          	addi	a5,s0,-24
    6f4a:	853e                	mv	a0,a5
    6f4c:	00001097          	auipc	ra,0x1
    6f50:	964080e7          	jalr	-1692(ra) # 78b0 <wait>
    6f54:	fe842783          	lw	a5,-24(s0)
    6f58:	cb91                	beqz	a5,6f6c <run+0x98>
    6f5a:	00003517          	auipc	a0,0x3
    6f5e:	53650513          	addi	a0,a0,1334 # a490 <malloc+0x24a6>
    6f62:	00001097          	auipc	ra,0x1
    6f66:	e96080e7          	jalr	-362(ra) # 7df8 <printf>
    6f6a:	a809                	j	6f7c <run+0xa8>
    6f6c:	00003517          	auipc	a0,0x3
    6f70:	52c50513          	addi	a0,a0,1324 # a498 <malloc+0x24ae>
    6f74:	00001097          	auipc	ra,0x1
    6f78:	e84080e7          	jalr	-380(ra) # 7df8 <printf>
    6f7c:	fe842783          	lw	a5,-24(s0)
    6f80:	0017b793          	seqz	a5,a5
    6f84:	0ff7f793          	zext.b	a5,a5
    6f88:	2781                	sext.w	a5,a5
    6f8a:	853e                	mv	a0,a5
    6f8c:	70a2                	ld	ra,40(sp)
    6f8e:	7402                	ld	s0,32(sp)
    6f90:	6145                	addi	sp,sp,48
    6f92:	8082                	ret

0000000000006f94 <runtests>:
    6f94:	7179                	addi	sp,sp,-48
    6f96:	f406                	sd	ra,40(sp)
    6f98:	f022                	sd	s0,32(sp)
    6f9a:	1800                	addi	s0,sp,48
    6f9c:	fca43c23          	sd	a0,-40(s0)
    6fa0:	fcb43823          	sd	a1,-48(s0)
    6fa4:	fd843783          	ld	a5,-40(s0)
    6fa8:	fef43423          	sd	a5,-24(s0)
    6fac:	a8a9                	j	7006 <runtests+0x72>
    6fae:	fd043783          	ld	a5,-48(s0)
    6fb2:	cf89                	beqz	a5,6fcc <runtests+0x38>
    6fb4:	fe843783          	ld	a5,-24(s0)
    6fb8:	679c                	ld	a5,8(a5)
    6fba:	fd043583          	ld	a1,-48(s0)
    6fbe:	853e                	mv	a0,a5
    6fc0:	00000097          	auipc	ra,0x0
    6fc4:	4a0080e7          	jalr	1184(ra) # 7460 <strcmp>
    6fc8:	87aa                	mv	a5,a0
    6fca:	eb8d                	bnez	a5,6ffc <runtests+0x68>
    6fcc:	fe843783          	ld	a5,-24(s0)
    6fd0:	6398                	ld	a4,0(a5)
    6fd2:	fe843783          	ld	a5,-24(s0)
    6fd6:	679c                	ld	a5,8(a5)
    6fd8:	85be                	mv	a1,a5
    6fda:	853a                	mv	a0,a4
    6fdc:	00000097          	auipc	ra,0x0
    6fe0:	ef8080e7          	jalr	-264(ra) # 6ed4 <run>
    6fe4:	87aa                	mv	a5,a0
    6fe6:	eb99                	bnez	a5,6ffc <runtests+0x68>
    6fe8:	00003517          	auipc	a0,0x3
    6fec:	4b850513          	addi	a0,a0,1208 # a4a0 <malloc+0x24b6>
    6ff0:	00001097          	auipc	ra,0x1
    6ff4:	e08080e7          	jalr	-504(ra) # 7df8 <printf>
    6ff8:	4785                	li	a5,1
    6ffa:	a819                	j	7010 <runtests+0x7c>
    6ffc:	fe843783          	ld	a5,-24(s0)
    7000:	07c1                	addi	a5,a5,16
    7002:	fef43423          	sd	a5,-24(s0)
    7006:	fe843783          	ld	a5,-24(s0)
    700a:	679c                	ld	a5,8(a5)
    700c:	f3cd                	bnez	a5,6fae <runtests+0x1a>
    700e:	4781                	li	a5,0
    7010:	853e                	mv	a0,a5
    7012:	70a2                	ld	ra,40(sp)
    7014:	7402                	ld	s0,32(sp)
    7016:	6145                	addi	sp,sp,48
    7018:	8082                	ret

000000000000701a <countfree>:
    701a:	7139                	addi	sp,sp,-64
    701c:	fc06                	sd	ra,56(sp)
    701e:	f822                	sd	s0,48(sp)
    7020:	0080                	addi	s0,sp,64
    7022:	fd040793          	addi	a5,s0,-48
    7026:	853e                	mv	a0,a5
    7028:	00001097          	auipc	ra,0x1
    702c:	890080e7          	jalr	-1904(ra) # 78b8 <pipe>
    7030:	87aa                	mv	a5,a0
    7032:	0007df63          	bgez	a5,7050 <countfree+0x36>
    7036:	00003517          	auipc	a0,0x3
    703a:	48250513          	addi	a0,a0,1154 # a4b8 <malloc+0x24ce>
    703e:	00001097          	auipc	ra,0x1
    7042:	dba080e7          	jalr	-582(ra) # 7df8 <printf>
    7046:	4505                	li	a0,1
    7048:	00001097          	auipc	ra,0x1
    704c:	860080e7          	jalr	-1952(ra) # 78a8 <exit>
    7050:	00001097          	auipc	ra,0x1
    7054:	850080e7          	jalr	-1968(ra) # 78a0 <fork>
    7058:	87aa                	mv	a5,a0
    705a:	fef42423          	sw	a5,-24(s0)
    705e:	fe842783          	lw	a5,-24(s0)
    7062:	2781                	sext.w	a5,a5
    7064:	0007df63          	bgez	a5,7082 <countfree+0x68>
    7068:	00003517          	auipc	a0,0x3
    706c:	47050513          	addi	a0,a0,1136 # a4d8 <malloc+0x24ee>
    7070:	00001097          	auipc	ra,0x1
    7074:	d88080e7          	jalr	-632(ra) # 7df8 <printf>
    7078:	4505                	li	a0,1
    707a:	00001097          	auipc	ra,0x1
    707e:	82e080e7          	jalr	-2002(ra) # 78a8 <exit>
    7082:	fe842783          	lw	a5,-24(s0)
    7086:	2781                	sext.w	a5,a5
    7088:	e3d1                	bnez	a5,710c <countfree+0xf2>
    708a:	fd042783          	lw	a5,-48(s0)
    708e:	853e                	mv	a0,a5
    7090:	00001097          	auipc	ra,0x1
    7094:	840080e7          	jalr	-1984(ra) # 78d0 <close>
    7098:	6505                	lui	a0,0x1
    709a:	00001097          	auipc	ra,0x1
    709e:	896080e7          	jalr	-1898(ra) # 7930 <sbrk>
    70a2:	87aa                	mv	a5,a0
    70a4:	fcf43c23          	sd	a5,-40(s0)
    70a8:	fd843703          	ld	a4,-40(s0)
    70ac:	57fd                	li	a5,-1
    70ae:	04f70963          	beq	a4,a5,7100 <countfree+0xe6>
    70b2:	fd843703          	ld	a4,-40(s0)
    70b6:	6785                	lui	a5,0x1
    70b8:	17fd                	addi	a5,a5,-1 # fff <truncate3+0x1b1>
    70ba:	97ba                	add	a5,a5,a4
    70bc:	873e                	mv	a4,a5
    70be:	4785                	li	a5,1
    70c0:	00f70023          	sb	a5,0(a4)
    70c4:	fd442783          	lw	a5,-44(s0)
    70c8:	4605                	li	a2,1
    70ca:	00001597          	auipc	a1,0x1
    70ce:	17658593          	addi	a1,a1,374 # 8240 <malloc+0x256>
    70d2:	853e                	mv	a0,a5
    70d4:	00000097          	auipc	ra,0x0
    70d8:	7f4080e7          	jalr	2036(ra) # 78c8 <write>
    70dc:	87aa                	mv	a5,a0
    70de:	873e                	mv	a4,a5
    70e0:	4785                	li	a5,1
    70e2:	faf70be3          	beq	a4,a5,7098 <countfree+0x7e>
    70e6:	00003517          	auipc	a0,0x3
    70ea:	41250513          	addi	a0,a0,1042 # a4f8 <malloc+0x250e>
    70ee:	00001097          	auipc	ra,0x1
    70f2:	d0a080e7          	jalr	-758(ra) # 7df8 <printf>
    70f6:	4505                	li	a0,1
    70f8:	00000097          	auipc	ra,0x0
    70fc:	7b0080e7          	jalr	1968(ra) # 78a8 <exit>
    7100:	0001                	nop
    7102:	4501                	li	a0,0
    7104:	00000097          	auipc	ra,0x0
    7108:	7a4080e7          	jalr	1956(ra) # 78a8 <exit>
    710c:	fd442783          	lw	a5,-44(s0)
    7110:	853e                	mv	a0,a5
    7112:	00000097          	auipc	ra,0x0
    7116:	7be080e7          	jalr	1982(ra) # 78d0 <close>
    711a:	fe042623          	sw	zero,-20(s0)
    711e:	fd042783          	lw	a5,-48(s0)
    7122:	fcf40713          	addi	a4,s0,-49
    7126:	4605                	li	a2,1
    7128:	85ba                	mv	a1,a4
    712a:	853e                	mv	a0,a5
    712c:	00000097          	auipc	ra,0x0
    7130:	794080e7          	jalr	1940(ra) # 78c0 <read>
    7134:	87aa                	mv	a5,a0
    7136:	fef42223          	sw	a5,-28(s0)
    713a:	fe442783          	lw	a5,-28(s0)
    713e:	2781                	sext.w	a5,a5
    7140:	0007df63          	bgez	a5,715e <countfree+0x144>
    7144:	00003517          	auipc	a0,0x3
    7148:	3d450513          	addi	a0,a0,980 # a518 <malloc+0x252e>
    714c:	00001097          	auipc	ra,0x1
    7150:	cac080e7          	jalr	-852(ra) # 7df8 <printf>
    7154:	4505                	li	a0,1
    7156:	00000097          	auipc	ra,0x0
    715a:	752080e7          	jalr	1874(ra) # 78a8 <exit>
    715e:	fe442783          	lw	a5,-28(s0)
    7162:	2781                	sext.w	a5,a5
    7164:	e385                	bnez	a5,7184 <countfree+0x16a>
    7166:	fd042783          	lw	a5,-48(s0)
    716a:	853e                	mv	a0,a5
    716c:	00000097          	auipc	ra,0x0
    7170:	764080e7          	jalr	1892(ra) # 78d0 <close>
    7174:	4501                	li	a0,0
    7176:	00000097          	auipc	ra,0x0
    717a:	73a080e7          	jalr	1850(ra) # 78b0 <wait>
    717e:	fec42783          	lw	a5,-20(s0)
    7182:	a039                	j	7190 <countfree+0x176>
    7184:	fec42783          	lw	a5,-20(s0)
    7188:	2785                	addiw	a5,a5,1
    718a:	fef42623          	sw	a5,-20(s0)
    718e:	bf41                	j	711e <countfree+0x104>
    7190:	853e                	mv	a0,a5
    7192:	70e2                	ld	ra,56(sp)
    7194:	7442                	ld	s0,48(sp)
    7196:	6121                	addi	sp,sp,64
    7198:	8082                	ret

000000000000719a <drivetests>:
    719a:	7179                	addi	sp,sp,-48
    719c:	f406                	sd	ra,40(sp)
    719e:	f022                	sd	s0,32(sp)
    71a0:	1800                	addi	s0,sp,48
    71a2:	87aa                	mv	a5,a0
    71a4:	872e                	mv	a4,a1
    71a6:	fcc43823          	sd	a2,-48(s0)
    71aa:	fcf42e23          	sw	a5,-36(s0)
    71ae:	87ba                	mv	a5,a4
    71b0:	fcf42c23          	sw	a5,-40(s0)
    71b4:	00003517          	auipc	a0,0x3
    71b8:	38450513          	addi	a0,a0,900 # a538 <malloc+0x254e>
    71bc:	00001097          	auipc	ra,0x1
    71c0:	c3c080e7          	jalr	-964(ra) # 7df8 <printf>
    71c4:	00000097          	auipc	ra,0x0
    71c8:	e56080e7          	jalr	-426(ra) # 701a <countfree>
    71cc:	87aa                	mv	a5,a0
    71ce:	fef42623          	sw	a5,-20(s0)
    71d2:	fe042423          	sw	zero,-24(s0)
    71d6:	fd043583          	ld	a1,-48(s0)
    71da:	00004517          	auipc	a0,0x4
    71de:	e3650513          	addi	a0,a0,-458 # b010 <quicktests>
    71e2:	00000097          	auipc	ra,0x0
    71e6:	db2080e7          	jalr	-590(ra) # 6f94 <runtests>
    71ea:	87aa                	mv	a5,a0
    71ec:	cb91                	beqz	a5,7200 <drivetests+0x66>
    71ee:	fd842783          	lw	a5,-40(s0)
    71f2:	0007871b          	sext.w	a4,a5
    71f6:	4789                	li	a5,2
    71f8:	00f70463          	beq	a4,a5,7200 <drivetests+0x66>
    71fc:	4785                	li	a5,1
    71fe:	a04d                	j	72a0 <drivetests+0x106>
    7200:	fdc42783          	lw	a5,-36(s0)
    7204:	2781                	sext.w	a5,a5
    7206:	e3a9                	bnez	a5,7248 <drivetests+0xae>
    7208:	fd043783          	ld	a5,-48(s0)
    720c:	eb89                	bnez	a5,721e <drivetests+0x84>
    720e:	00003517          	auipc	a0,0x3
    7212:	34250513          	addi	a0,a0,834 # a550 <malloc+0x2566>
    7216:	00001097          	auipc	ra,0x1
    721a:	be2080e7          	jalr	-1054(ra) # 7df8 <printf>
    721e:	fd043583          	ld	a1,-48(s0)
    7222:	00004517          	auipc	a0,0x4
    7226:	1be50513          	addi	a0,a0,446 # b3e0 <slowtests>
    722a:	00000097          	auipc	ra,0x0
    722e:	d6a080e7          	jalr	-662(ra) # 6f94 <runtests>
    7232:	87aa                	mv	a5,a0
    7234:	cb91                	beqz	a5,7248 <drivetests+0xae>
    7236:	fd842783          	lw	a5,-40(s0)
    723a:	0007871b          	sext.w	a4,a5
    723e:	4789                	li	a5,2
    7240:	00f70463          	beq	a4,a5,7248 <drivetests+0xae>
    7244:	4785                	li	a5,1
    7246:	a8a9                	j	72a0 <drivetests+0x106>
    7248:	00000097          	auipc	ra,0x0
    724c:	dd2080e7          	jalr	-558(ra) # 701a <countfree>
    7250:	87aa                	mv	a5,a0
    7252:	fef42423          	sw	a5,-24(s0)
    7256:	fe842783          	lw	a5,-24(s0)
    725a:	873e                	mv	a4,a5
    725c:	fec42783          	lw	a5,-20(s0)
    7260:	2701                	sext.w	a4,a4
    7262:	2781                	sext.w	a5,a5
    7264:	02f75963          	bge	a4,a5,7296 <drivetests+0xfc>
    7268:	fec42703          	lw	a4,-20(s0)
    726c:	fe842783          	lw	a5,-24(s0)
    7270:	863a                	mv	a2,a4
    7272:	85be                	mv	a1,a5
    7274:	00003517          	auipc	a0,0x3
    7278:	2fc50513          	addi	a0,a0,764 # a570 <malloc+0x2586>
    727c:	00001097          	auipc	ra,0x1
    7280:	b7c080e7          	jalr	-1156(ra) # 7df8 <printf>
    7284:	fd842783          	lw	a5,-40(s0)
    7288:	0007871b          	sext.w	a4,a5
    728c:	4789                	li	a5,2
    728e:	00f70463          	beq	a4,a5,7296 <drivetests+0xfc>
    7292:	4785                	li	a5,1
    7294:	a031                	j	72a0 <drivetests+0x106>
    7296:	fd842783          	lw	a5,-40(s0)
    729a:	2781                	sext.w	a5,a5
    729c:	ff81                	bnez	a5,71b4 <drivetests+0x1a>
    729e:	4781                	li	a5,0
    72a0:	853e                	mv	a0,a5
    72a2:	70a2                	ld	ra,40(sp)
    72a4:	7402                	ld	s0,32(sp)
    72a6:	6145                	addi	sp,sp,48
    72a8:	8082                	ret

00000000000072aa <main>:
    72aa:	7179                	addi	sp,sp,-48
    72ac:	f406                	sd	ra,40(sp)
    72ae:	f022                	sd	s0,32(sp)
    72b0:	1800                	addi	s0,sp,48
    72b2:	87aa                	mv	a5,a0
    72b4:	fcb43823          	sd	a1,-48(s0)
    72b8:	fcf42e23          	sw	a5,-36(s0)
    72bc:	fe042623          	sw	zero,-20(s0)
    72c0:	fe042423          	sw	zero,-24(s0)
    72c4:	fe043023          	sd	zero,-32(s0)
    72c8:	fdc42783          	lw	a5,-36(s0)
    72cc:	0007871b          	sext.w	a4,a5
    72d0:	4789                	li	a5,2
    72d2:	02f71563          	bne	a4,a5,72fc <main+0x52>
    72d6:	fd043783          	ld	a5,-48(s0)
    72da:	07a1                	addi	a5,a5,8
    72dc:	639c                	ld	a5,0(a5)
    72de:	00003597          	auipc	a1,0x3
    72e2:	2c258593          	addi	a1,a1,706 # a5a0 <malloc+0x25b6>
    72e6:	853e                	mv	a0,a5
    72e8:	00000097          	auipc	ra,0x0
    72ec:	178080e7          	jalr	376(ra) # 7460 <strcmp>
    72f0:	87aa                	mv	a5,a0
    72f2:	e789                	bnez	a5,72fc <main+0x52>
    72f4:	4785                	li	a5,1
    72f6:	fef42423          	sw	a5,-24(s0)
    72fa:	a0c9                	j	73bc <main+0x112>
    72fc:	fdc42783          	lw	a5,-36(s0)
    7300:	0007871b          	sext.w	a4,a5
    7304:	4789                	li	a5,2
    7306:	02f71563          	bne	a4,a5,7330 <main+0x86>
    730a:	fd043783          	ld	a5,-48(s0)
    730e:	07a1                	addi	a5,a5,8
    7310:	639c                	ld	a5,0(a5)
    7312:	00003597          	auipc	a1,0x3
    7316:	29658593          	addi	a1,a1,662 # a5a8 <malloc+0x25be>
    731a:	853e                	mv	a0,a5
    731c:	00000097          	auipc	ra,0x0
    7320:	144080e7          	jalr	324(ra) # 7460 <strcmp>
    7324:	87aa                	mv	a5,a0
    7326:	e789                	bnez	a5,7330 <main+0x86>
    7328:	4785                	li	a5,1
    732a:	fef42623          	sw	a5,-20(s0)
    732e:	a079                	j	73bc <main+0x112>
    7330:	fdc42783          	lw	a5,-36(s0)
    7334:	0007871b          	sext.w	a4,a5
    7338:	4789                	li	a5,2
    733a:	02f71563          	bne	a4,a5,7364 <main+0xba>
    733e:	fd043783          	ld	a5,-48(s0)
    7342:	07a1                	addi	a5,a5,8
    7344:	639c                	ld	a5,0(a5)
    7346:	00003597          	auipc	a1,0x3
    734a:	26a58593          	addi	a1,a1,618 # a5b0 <malloc+0x25c6>
    734e:	853e                	mv	a0,a5
    7350:	00000097          	auipc	ra,0x0
    7354:	110080e7          	jalr	272(ra) # 7460 <strcmp>
    7358:	87aa                	mv	a5,a0
    735a:	e789                	bnez	a5,7364 <main+0xba>
    735c:	4789                	li	a5,2
    735e:	fef42623          	sw	a5,-20(s0)
    7362:	a8a9                	j	73bc <main+0x112>
    7364:	fdc42783          	lw	a5,-36(s0)
    7368:	0007871b          	sext.w	a4,a5
    736c:	4789                	li	a5,2
    736e:	02f71363          	bne	a4,a5,7394 <main+0xea>
    7372:	fd043783          	ld	a5,-48(s0)
    7376:	07a1                	addi	a5,a5,8
    7378:	639c                	ld	a5,0(a5)
    737a:	0007c783          	lbu	a5,0(a5)
    737e:	873e                	mv	a4,a5
    7380:	02d00793          	li	a5,45
    7384:	00f70863          	beq	a4,a5,7394 <main+0xea>
    7388:	fd043783          	ld	a5,-48(s0)
    738c:	679c                	ld	a5,8(a5)
    738e:	fef43023          	sd	a5,-32(s0)
    7392:	a02d                	j	73bc <main+0x112>
    7394:	fdc42783          	lw	a5,-36(s0)
    7398:	0007871b          	sext.w	a4,a5
    739c:	4785                	li	a5,1
    739e:	00e7df63          	bge	a5,a4,73bc <main+0x112>
    73a2:	00003517          	auipc	a0,0x3
    73a6:	21650513          	addi	a0,a0,534 # a5b8 <malloc+0x25ce>
    73aa:	00001097          	auipc	ra,0x1
    73ae:	a4e080e7          	jalr	-1458(ra) # 7df8 <printf>
    73b2:	4505                	li	a0,1
    73b4:	00000097          	auipc	ra,0x0
    73b8:	4f4080e7          	jalr	1268(ra) # 78a8 <exit>
    73bc:	fec42703          	lw	a4,-20(s0)
    73c0:	fe842783          	lw	a5,-24(s0)
    73c4:	fe043603          	ld	a2,-32(s0)
    73c8:	85ba                	mv	a1,a4
    73ca:	853e                	mv	a0,a5
    73cc:	00000097          	auipc	ra,0x0
    73d0:	dce080e7          	jalr	-562(ra) # 719a <drivetests>
    73d4:	87aa                	mv	a5,a0
    73d6:	c791                	beqz	a5,73e2 <main+0x138>
    73d8:	4505                	li	a0,1
    73da:	00000097          	auipc	ra,0x0
    73de:	4ce080e7          	jalr	1230(ra) # 78a8 <exit>
    73e2:	00003517          	auipc	a0,0x3
    73e6:	20650513          	addi	a0,a0,518 # a5e8 <malloc+0x25fe>
    73ea:	00001097          	auipc	ra,0x1
    73ee:	a0e080e7          	jalr	-1522(ra) # 7df8 <printf>
    73f2:	4501                	li	a0,0
    73f4:	00000097          	auipc	ra,0x0
    73f8:	4b4080e7          	jalr	1204(ra) # 78a8 <exit>

00000000000073fc <_main>:
    73fc:	1141                	addi	sp,sp,-16
    73fe:	e406                	sd	ra,8(sp)
    7400:	e022                	sd	s0,0(sp)
    7402:	0800                	addi	s0,sp,16
    7404:	00000097          	auipc	ra,0x0
    7408:	ea6080e7          	jalr	-346(ra) # 72aa <main>
    740c:	4501                	li	a0,0
    740e:	00000097          	auipc	ra,0x0
    7412:	49a080e7          	jalr	1178(ra) # 78a8 <exit>

0000000000007416 <strcpy>:
    7416:	7179                	addi	sp,sp,-48
    7418:	f422                	sd	s0,40(sp)
    741a:	1800                	addi	s0,sp,48
    741c:	fca43c23          	sd	a0,-40(s0)
    7420:	fcb43823          	sd	a1,-48(s0)
    7424:	fd843783          	ld	a5,-40(s0)
    7428:	fef43423          	sd	a5,-24(s0)
    742c:	0001                	nop
    742e:	fd043703          	ld	a4,-48(s0)
    7432:	00170793          	addi	a5,a4,1
    7436:	fcf43823          	sd	a5,-48(s0)
    743a:	fd843783          	ld	a5,-40(s0)
    743e:	00178693          	addi	a3,a5,1
    7442:	fcd43c23          	sd	a3,-40(s0)
    7446:	00074703          	lbu	a4,0(a4)
    744a:	00e78023          	sb	a4,0(a5)
    744e:	0007c783          	lbu	a5,0(a5)
    7452:	fff1                	bnez	a5,742e <strcpy+0x18>
    7454:	fe843783          	ld	a5,-24(s0)
    7458:	853e                	mv	a0,a5
    745a:	7422                	ld	s0,40(sp)
    745c:	6145                	addi	sp,sp,48
    745e:	8082                	ret

0000000000007460 <strcmp>:
    7460:	1101                	addi	sp,sp,-32
    7462:	ec22                	sd	s0,24(sp)
    7464:	1000                	addi	s0,sp,32
    7466:	fea43423          	sd	a0,-24(s0)
    746a:	feb43023          	sd	a1,-32(s0)
    746e:	a819                	j	7484 <strcmp+0x24>
    7470:	fe843783          	ld	a5,-24(s0)
    7474:	0785                	addi	a5,a5,1
    7476:	fef43423          	sd	a5,-24(s0)
    747a:	fe043783          	ld	a5,-32(s0)
    747e:	0785                	addi	a5,a5,1
    7480:	fef43023          	sd	a5,-32(s0)
    7484:	fe843783          	ld	a5,-24(s0)
    7488:	0007c783          	lbu	a5,0(a5)
    748c:	cb99                	beqz	a5,74a2 <strcmp+0x42>
    748e:	fe843783          	ld	a5,-24(s0)
    7492:	0007c703          	lbu	a4,0(a5)
    7496:	fe043783          	ld	a5,-32(s0)
    749a:	0007c783          	lbu	a5,0(a5)
    749e:	fcf709e3          	beq	a4,a5,7470 <strcmp+0x10>
    74a2:	fe843783          	ld	a5,-24(s0)
    74a6:	0007c783          	lbu	a5,0(a5)
    74aa:	0007871b          	sext.w	a4,a5
    74ae:	fe043783          	ld	a5,-32(s0)
    74b2:	0007c783          	lbu	a5,0(a5)
    74b6:	2781                	sext.w	a5,a5
    74b8:	40f707bb          	subw	a5,a4,a5
    74bc:	2781                	sext.w	a5,a5
    74be:	853e                	mv	a0,a5
    74c0:	6462                	ld	s0,24(sp)
    74c2:	6105                	addi	sp,sp,32
    74c4:	8082                	ret

00000000000074c6 <strlen>:
    74c6:	7179                	addi	sp,sp,-48
    74c8:	f422                	sd	s0,40(sp)
    74ca:	1800                	addi	s0,sp,48
    74cc:	fca43c23          	sd	a0,-40(s0)
    74d0:	fe042623          	sw	zero,-20(s0)
    74d4:	a031                	j	74e0 <strlen+0x1a>
    74d6:	fec42783          	lw	a5,-20(s0)
    74da:	2785                	addiw	a5,a5,1
    74dc:	fef42623          	sw	a5,-20(s0)
    74e0:	fec42783          	lw	a5,-20(s0)
    74e4:	fd843703          	ld	a4,-40(s0)
    74e8:	97ba                	add	a5,a5,a4
    74ea:	0007c783          	lbu	a5,0(a5)
    74ee:	f7e5                	bnez	a5,74d6 <strlen+0x10>
    74f0:	fec42783          	lw	a5,-20(s0)
    74f4:	853e                	mv	a0,a5
    74f6:	7422                	ld	s0,40(sp)
    74f8:	6145                	addi	sp,sp,48
    74fa:	8082                	ret

00000000000074fc <memset>:
    74fc:	7179                	addi	sp,sp,-48
    74fe:	f422                	sd	s0,40(sp)
    7500:	1800                	addi	s0,sp,48
    7502:	fca43c23          	sd	a0,-40(s0)
    7506:	87ae                	mv	a5,a1
    7508:	8732                	mv	a4,a2
    750a:	fcf42a23          	sw	a5,-44(s0)
    750e:	87ba                	mv	a5,a4
    7510:	fcf42823          	sw	a5,-48(s0)
    7514:	fd843783          	ld	a5,-40(s0)
    7518:	fef43023          	sd	a5,-32(s0)
    751c:	fe042623          	sw	zero,-20(s0)
    7520:	a00d                	j	7542 <memset+0x46>
    7522:	fec42783          	lw	a5,-20(s0)
    7526:	fe043703          	ld	a4,-32(s0)
    752a:	97ba                	add	a5,a5,a4
    752c:	fd442703          	lw	a4,-44(s0)
    7530:	0ff77713          	zext.b	a4,a4
    7534:	00e78023          	sb	a4,0(a5)
    7538:	fec42783          	lw	a5,-20(s0)
    753c:	2785                	addiw	a5,a5,1
    753e:	fef42623          	sw	a5,-20(s0)
    7542:	fec42703          	lw	a4,-20(s0)
    7546:	fd042783          	lw	a5,-48(s0)
    754a:	2781                	sext.w	a5,a5
    754c:	fcf76be3          	bltu	a4,a5,7522 <memset+0x26>
    7550:	fd843783          	ld	a5,-40(s0)
    7554:	853e                	mv	a0,a5
    7556:	7422                	ld	s0,40(sp)
    7558:	6145                	addi	sp,sp,48
    755a:	8082                	ret

000000000000755c <strchr>:
    755c:	1101                	addi	sp,sp,-32
    755e:	ec22                	sd	s0,24(sp)
    7560:	1000                	addi	s0,sp,32
    7562:	fea43423          	sd	a0,-24(s0)
    7566:	87ae                	mv	a5,a1
    7568:	fef403a3          	sb	a5,-25(s0)
    756c:	a01d                	j	7592 <strchr+0x36>
    756e:	fe843783          	ld	a5,-24(s0)
    7572:	0007c703          	lbu	a4,0(a5)
    7576:	fe744783          	lbu	a5,-25(s0)
    757a:	0ff7f793          	zext.b	a5,a5
    757e:	00e79563          	bne	a5,a4,7588 <strchr+0x2c>
    7582:	fe843783          	ld	a5,-24(s0)
    7586:	a821                	j	759e <strchr+0x42>
    7588:	fe843783          	ld	a5,-24(s0)
    758c:	0785                	addi	a5,a5,1
    758e:	fef43423          	sd	a5,-24(s0)
    7592:	fe843783          	ld	a5,-24(s0)
    7596:	0007c783          	lbu	a5,0(a5)
    759a:	fbf1                	bnez	a5,756e <strchr+0x12>
    759c:	4781                	li	a5,0
    759e:	853e                	mv	a0,a5
    75a0:	6462                	ld	s0,24(sp)
    75a2:	6105                	addi	sp,sp,32
    75a4:	8082                	ret

00000000000075a6 <gets>:
    75a6:	7179                	addi	sp,sp,-48
    75a8:	f406                	sd	ra,40(sp)
    75aa:	f022                	sd	s0,32(sp)
    75ac:	1800                	addi	s0,sp,48
    75ae:	fca43c23          	sd	a0,-40(s0)
    75b2:	87ae                	mv	a5,a1
    75b4:	fcf42a23          	sw	a5,-44(s0)
    75b8:	fe042623          	sw	zero,-20(s0)
    75bc:	a8a1                	j	7614 <gets+0x6e>
    75be:	fe740793          	addi	a5,s0,-25
    75c2:	4605                	li	a2,1
    75c4:	85be                	mv	a1,a5
    75c6:	4501                	li	a0,0
    75c8:	00000097          	auipc	ra,0x0
    75cc:	2f8080e7          	jalr	760(ra) # 78c0 <read>
    75d0:	87aa                	mv	a5,a0
    75d2:	fef42423          	sw	a5,-24(s0)
    75d6:	fe842783          	lw	a5,-24(s0)
    75da:	2781                	sext.w	a5,a5
    75dc:	04f05763          	blez	a5,762a <gets+0x84>
    75e0:	fec42783          	lw	a5,-20(s0)
    75e4:	0017871b          	addiw	a4,a5,1
    75e8:	fee42623          	sw	a4,-20(s0)
    75ec:	873e                	mv	a4,a5
    75ee:	fd843783          	ld	a5,-40(s0)
    75f2:	97ba                	add	a5,a5,a4
    75f4:	fe744703          	lbu	a4,-25(s0)
    75f8:	00e78023          	sb	a4,0(a5)
    75fc:	fe744783          	lbu	a5,-25(s0)
    7600:	873e                	mv	a4,a5
    7602:	47a9                	li	a5,10
    7604:	02f70463          	beq	a4,a5,762c <gets+0x86>
    7608:	fe744783          	lbu	a5,-25(s0)
    760c:	873e                	mv	a4,a5
    760e:	47b5                	li	a5,13
    7610:	00f70e63          	beq	a4,a5,762c <gets+0x86>
    7614:	fec42783          	lw	a5,-20(s0)
    7618:	2785                	addiw	a5,a5,1
    761a:	0007871b          	sext.w	a4,a5
    761e:	fd442783          	lw	a5,-44(s0)
    7622:	2781                	sext.w	a5,a5
    7624:	f8f74de3          	blt	a4,a5,75be <gets+0x18>
    7628:	a011                	j	762c <gets+0x86>
    762a:	0001                	nop
    762c:	fec42783          	lw	a5,-20(s0)
    7630:	fd843703          	ld	a4,-40(s0)
    7634:	97ba                	add	a5,a5,a4
    7636:	00078023          	sb	zero,0(a5)
    763a:	fd843783          	ld	a5,-40(s0)
    763e:	853e                	mv	a0,a5
    7640:	70a2                	ld	ra,40(sp)
    7642:	7402                	ld	s0,32(sp)
    7644:	6145                	addi	sp,sp,48
    7646:	8082                	ret

0000000000007648 <stat>:
    7648:	7179                	addi	sp,sp,-48
    764a:	f406                	sd	ra,40(sp)
    764c:	f022                	sd	s0,32(sp)
    764e:	1800                	addi	s0,sp,48
    7650:	fca43c23          	sd	a0,-40(s0)
    7654:	fcb43823          	sd	a1,-48(s0)
    7658:	4581                	li	a1,0
    765a:	fd843503          	ld	a0,-40(s0)
    765e:	00000097          	auipc	ra,0x0
    7662:	28a080e7          	jalr	650(ra) # 78e8 <open>
    7666:	87aa                	mv	a5,a0
    7668:	fef42623          	sw	a5,-20(s0)
    766c:	fec42783          	lw	a5,-20(s0)
    7670:	2781                	sext.w	a5,a5
    7672:	0007d463          	bgez	a5,767a <stat+0x32>
    7676:	57fd                	li	a5,-1
    7678:	a035                	j	76a4 <stat+0x5c>
    767a:	fec42783          	lw	a5,-20(s0)
    767e:	fd043583          	ld	a1,-48(s0)
    7682:	853e                	mv	a0,a5
    7684:	00000097          	auipc	ra,0x0
    7688:	27c080e7          	jalr	636(ra) # 7900 <fstat>
    768c:	87aa                	mv	a5,a0
    768e:	fef42423          	sw	a5,-24(s0)
    7692:	fec42783          	lw	a5,-20(s0)
    7696:	853e                	mv	a0,a5
    7698:	00000097          	auipc	ra,0x0
    769c:	238080e7          	jalr	568(ra) # 78d0 <close>
    76a0:	fe842783          	lw	a5,-24(s0)
    76a4:	853e                	mv	a0,a5
    76a6:	70a2                	ld	ra,40(sp)
    76a8:	7402                	ld	s0,32(sp)
    76aa:	6145                	addi	sp,sp,48
    76ac:	8082                	ret

00000000000076ae <atoi>:
    76ae:	7179                	addi	sp,sp,-48
    76b0:	f422                	sd	s0,40(sp)
    76b2:	1800                	addi	s0,sp,48
    76b4:	fca43c23          	sd	a0,-40(s0)
    76b8:	fe042623          	sw	zero,-20(s0)
    76bc:	a81d                	j	76f2 <atoi+0x44>
    76be:	fec42783          	lw	a5,-20(s0)
    76c2:	873e                	mv	a4,a5
    76c4:	87ba                	mv	a5,a4
    76c6:	0027979b          	slliw	a5,a5,0x2
    76ca:	9fb9                	addw	a5,a5,a4
    76cc:	0017979b          	slliw	a5,a5,0x1
    76d0:	0007871b          	sext.w	a4,a5
    76d4:	fd843783          	ld	a5,-40(s0)
    76d8:	00178693          	addi	a3,a5,1
    76dc:	fcd43c23          	sd	a3,-40(s0)
    76e0:	0007c783          	lbu	a5,0(a5)
    76e4:	2781                	sext.w	a5,a5
    76e6:	9fb9                	addw	a5,a5,a4
    76e8:	2781                	sext.w	a5,a5
    76ea:	fd07879b          	addiw	a5,a5,-48
    76ee:	fef42623          	sw	a5,-20(s0)
    76f2:	fd843783          	ld	a5,-40(s0)
    76f6:	0007c783          	lbu	a5,0(a5)
    76fa:	873e                	mv	a4,a5
    76fc:	02f00793          	li	a5,47
    7700:	00e7fb63          	bgeu	a5,a4,7716 <atoi+0x68>
    7704:	fd843783          	ld	a5,-40(s0)
    7708:	0007c783          	lbu	a5,0(a5)
    770c:	873e                	mv	a4,a5
    770e:	03900793          	li	a5,57
    7712:	fae7f6e3          	bgeu	a5,a4,76be <atoi+0x10>
    7716:	fec42783          	lw	a5,-20(s0)
    771a:	853e                	mv	a0,a5
    771c:	7422                	ld	s0,40(sp)
    771e:	6145                	addi	sp,sp,48
    7720:	8082                	ret

0000000000007722 <memmove>:
    7722:	7139                	addi	sp,sp,-64
    7724:	fc22                	sd	s0,56(sp)
    7726:	0080                	addi	s0,sp,64
    7728:	fca43c23          	sd	a0,-40(s0)
    772c:	fcb43823          	sd	a1,-48(s0)
    7730:	87b2                	mv	a5,a2
    7732:	fcf42623          	sw	a5,-52(s0)
    7736:	fd843783          	ld	a5,-40(s0)
    773a:	fef43423          	sd	a5,-24(s0)
    773e:	fd043783          	ld	a5,-48(s0)
    7742:	fef43023          	sd	a5,-32(s0)
    7746:	fe043703          	ld	a4,-32(s0)
    774a:	fe843783          	ld	a5,-24(s0)
    774e:	02e7fc63          	bgeu	a5,a4,7786 <memmove+0x64>
    7752:	a00d                	j	7774 <memmove+0x52>
    7754:	fe043703          	ld	a4,-32(s0)
    7758:	00170793          	addi	a5,a4,1
    775c:	fef43023          	sd	a5,-32(s0)
    7760:	fe843783          	ld	a5,-24(s0)
    7764:	00178693          	addi	a3,a5,1
    7768:	fed43423          	sd	a3,-24(s0)
    776c:	00074703          	lbu	a4,0(a4)
    7770:	00e78023          	sb	a4,0(a5)
    7774:	fcc42783          	lw	a5,-52(s0)
    7778:	fff7871b          	addiw	a4,a5,-1
    777c:	fce42623          	sw	a4,-52(s0)
    7780:	fcf04ae3          	bgtz	a5,7754 <memmove+0x32>
    7784:	a891                	j	77d8 <memmove+0xb6>
    7786:	fcc42783          	lw	a5,-52(s0)
    778a:	fe843703          	ld	a4,-24(s0)
    778e:	97ba                	add	a5,a5,a4
    7790:	fef43423          	sd	a5,-24(s0)
    7794:	fcc42783          	lw	a5,-52(s0)
    7798:	fe043703          	ld	a4,-32(s0)
    779c:	97ba                	add	a5,a5,a4
    779e:	fef43023          	sd	a5,-32(s0)
    77a2:	a01d                	j	77c8 <memmove+0xa6>
    77a4:	fe043783          	ld	a5,-32(s0)
    77a8:	17fd                	addi	a5,a5,-1
    77aa:	fef43023          	sd	a5,-32(s0)
    77ae:	fe843783          	ld	a5,-24(s0)
    77b2:	17fd                	addi	a5,a5,-1
    77b4:	fef43423          	sd	a5,-24(s0)
    77b8:	fe043783          	ld	a5,-32(s0)
    77bc:	0007c703          	lbu	a4,0(a5)
    77c0:	fe843783          	ld	a5,-24(s0)
    77c4:	00e78023          	sb	a4,0(a5)
    77c8:	fcc42783          	lw	a5,-52(s0)
    77cc:	fff7871b          	addiw	a4,a5,-1
    77d0:	fce42623          	sw	a4,-52(s0)
    77d4:	fcf048e3          	bgtz	a5,77a4 <memmove+0x82>
    77d8:	fd843783          	ld	a5,-40(s0)
    77dc:	853e                	mv	a0,a5
    77de:	7462                	ld	s0,56(sp)
    77e0:	6121                	addi	sp,sp,64
    77e2:	8082                	ret

00000000000077e4 <memcmp>:
    77e4:	7139                	addi	sp,sp,-64
    77e6:	fc22                	sd	s0,56(sp)
    77e8:	0080                	addi	s0,sp,64
    77ea:	fca43c23          	sd	a0,-40(s0)
    77ee:	fcb43823          	sd	a1,-48(s0)
    77f2:	87b2                	mv	a5,a2
    77f4:	fcf42623          	sw	a5,-52(s0)
    77f8:	fd843783          	ld	a5,-40(s0)
    77fc:	fef43423          	sd	a5,-24(s0)
    7800:	fd043783          	ld	a5,-48(s0)
    7804:	fef43023          	sd	a5,-32(s0)
    7808:	a0a1                	j	7850 <memcmp+0x6c>
    780a:	fe843783          	ld	a5,-24(s0)
    780e:	0007c703          	lbu	a4,0(a5)
    7812:	fe043783          	ld	a5,-32(s0)
    7816:	0007c783          	lbu	a5,0(a5)
    781a:	02f70163          	beq	a4,a5,783c <memcmp+0x58>
    781e:	fe843783          	ld	a5,-24(s0)
    7822:	0007c783          	lbu	a5,0(a5)
    7826:	0007871b          	sext.w	a4,a5
    782a:	fe043783          	ld	a5,-32(s0)
    782e:	0007c783          	lbu	a5,0(a5)
    7832:	2781                	sext.w	a5,a5
    7834:	40f707bb          	subw	a5,a4,a5
    7838:	2781                	sext.w	a5,a5
    783a:	a01d                	j	7860 <memcmp+0x7c>
    783c:	fe843783          	ld	a5,-24(s0)
    7840:	0785                	addi	a5,a5,1
    7842:	fef43423          	sd	a5,-24(s0)
    7846:	fe043783          	ld	a5,-32(s0)
    784a:	0785                	addi	a5,a5,1
    784c:	fef43023          	sd	a5,-32(s0)
    7850:	fcc42783          	lw	a5,-52(s0)
    7854:	fff7871b          	addiw	a4,a5,-1
    7858:	fce42623          	sw	a4,-52(s0)
    785c:	f7dd                	bnez	a5,780a <memcmp+0x26>
    785e:	4781                	li	a5,0
    7860:	853e                	mv	a0,a5
    7862:	7462                	ld	s0,56(sp)
    7864:	6121                	addi	sp,sp,64
    7866:	8082                	ret

0000000000007868 <memcpy>:
    7868:	7179                	addi	sp,sp,-48
    786a:	f406                	sd	ra,40(sp)
    786c:	f022                	sd	s0,32(sp)
    786e:	1800                	addi	s0,sp,48
    7870:	fea43423          	sd	a0,-24(s0)
    7874:	feb43023          	sd	a1,-32(s0)
    7878:	87b2                	mv	a5,a2
    787a:	fcf42e23          	sw	a5,-36(s0)
    787e:	fdc42783          	lw	a5,-36(s0)
    7882:	863e                	mv	a2,a5
    7884:	fe043583          	ld	a1,-32(s0)
    7888:	fe843503          	ld	a0,-24(s0)
    788c:	00000097          	auipc	ra,0x0
    7890:	e96080e7          	jalr	-362(ra) # 7722 <memmove>
    7894:	87aa                	mv	a5,a0
    7896:	853e                	mv	a0,a5
    7898:	70a2                	ld	ra,40(sp)
    789a:	7402                	ld	s0,32(sp)
    789c:	6145                	addi	sp,sp,48
    789e:	8082                	ret

00000000000078a0 <fork>:
    78a0:	4885                	li	a7,1
    78a2:	00000073          	ecall
    78a6:	8082                	ret

00000000000078a8 <exit>:
    78a8:	4889                	li	a7,2
    78aa:	00000073          	ecall
    78ae:	8082                	ret

00000000000078b0 <wait>:
    78b0:	488d                	li	a7,3
    78b2:	00000073          	ecall
    78b6:	8082                	ret

00000000000078b8 <pipe>:
    78b8:	4891                	li	a7,4
    78ba:	00000073          	ecall
    78be:	8082                	ret

00000000000078c0 <read>:
    78c0:	4895                	li	a7,5
    78c2:	00000073          	ecall
    78c6:	8082                	ret

00000000000078c8 <write>:
    78c8:	48c1                	li	a7,16
    78ca:	00000073          	ecall
    78ce:	8082                	ret

00000000000078d0 <close>:
    78d0:	48d5                	li	a7,21
    78d2:	00000073          	ecall
    78d6:	8082                	ret

00000000000078d8 <kill>:
    78d8:	4899                	li	a7,6
    78da:	00000073          	ecall
    78de:	8082                	ret

00000000000078e0 <exec>:
    78e0:	489d                	li	a7,7
    78e2:	00000073          	ecall
    78e6:	8082                	ret

00000000000078e8 <open>:
    78e8:	48bd                	li	a7,15
    78ea:	00000073          	ecall
    78ee:	8082                	ret

00000000000078f0 <mknod>:
    78f0:	48c5                	li	a7,17
    78f2:	00000073          	ecall
    78f6:	8082                	ret

00000000000078f8 <unlink>:
    78f8:	48c9                	li	a7,18
    78fa:	00000073          	ecall
    78fe:	8082                	ret

0000000000007900 <fstat>:
    7900:	48a1                	li	a7,8
    7902:	00000073          	ecall
    7906:	8082                	ret

0000000000007908 <link>:
    7908:	48cd                	li	a7,19
    790a:	00000073          	ecall
    790e:	8082                	ret

0000000000007910 <mkdir>:
    7910:	48d1                	li	a7,20
    7912:	00000073          	ecall
    7916:	8082                	ret

0000000000007918 <chdir>:
    7918:	48a5                	li	a7,9
    791a:	00000073          	ecall
    791e:	8082                	ret

0000000000007920 <dup>:
    7920:	48a9                	li	a7,10
    7922:	00000073          	ecall
    7926:	8082                	ret

0000000000007928 <getpid>:
    7928:	48ad                	li	a7,11
    792a:	00000073          	ecall
    792e:	8082                	ret

0000000000007930 <sbrk>:
    7930:	48b1                	li	a7,12
    7932:	00000073          	ecall
    7936:	8082                	ret

0000000000007938 <sleep>:
    7938:	48b5                	li	a7,13
    793a:	00000073          	ecall
    793e:	8082                	ret

0000000000007940 <uptime>:
    7940:	48b9                	li	a7,14
    7942:	00000073          	ecall
    7946:	8082                	ret

0000000000007948 <waitx>:
    7948:	48d9                	li	a7,22
    794a:	00000073          	ecall
    794e:	8082                	ret

0000000000007950 <getsyscount>:
    7950:	48dd                	li	a7,23
    7952:	00000073          	ecall
    7956:	8082                	ret

0000000000007958 <sigalarm>:
    7958:	48e1                	li	a7,24
    795a:	00000073          	ecall
    795e:	8082                	ret

0000000000007960 <sigreturn>:
    7960:	48e5                	li	a7,25
    7962:	00000073          	ecall
    7966:	8082                	ret

0000000000007968 <settickets>:
    7968:	48e9                	li	a7,26
    796a:	00000073          	ecall
    796e:	8082                	ret

0000000000007970 <putc>:
    7970:	1101                	addi	sp,sp,-32
    7972:	ec06                	sd	ra,24(sp)
    7974:	e822                	sd	s0,16(sp)
    7976:	1000                	addi	s0,sp,32
    7978:	87aa                	mv	a5,a0
    797a:	872e                	mv	a4,a1
    797c:	fef42623          	sw	a5,-20(s0)
    7980:	87ba                	mv	a5,a4
    7982:	fef405a3          	sb	a5,-21(s0)
    7986:	feb40713          	addi	a4,s0,-21
    798a:	fec42783          	lw	a5,-20(s0)
    798e:	4605                	li	a2,1
    7990:	85ba                	mv	a1,a4
    7992:	853e                	mv	a0,a5
    7994:	00000097          	auipc	ra,0x0
    7998:	f34080e7          	jalr	-204(ra) # 78c8 <write>
    799c:	0001                	nop
    799e:	60e2                	ld	ra,24(sp)
    79a0:	6442                	ld	s0,16(sp)
    79a2:	6105                	addi	sp,sp,32
    79a4:	8082                	ret

00000000000079a6 <printint>:
    79a6:	7139                	addi	sp,sp,-64
    79a8:	fc06                	sd	ra,56(sp)
    79aa:	f822                	sd	s0,48(sp)
    79ac:	0080                	addi	s0,sp,64
    79ae:	87aa                	mv	a5,a0
    79b0:	8736                	mv	a4,a3
    79b2:	fcf42623          	sw	a5,-52(s0)
    79b6:	87ae                	mv	a5,a1
    79b8:	fcf42423          	sw	a5,-56(s0)
    79bc:	87b2                	mv	a5,a2
    79be:	fcf42223          	sw	a5,-60(s0)
    79c2:	87ba                	mv	a5,a4
    79c4:	fcf42023          	sw	a5,-64(s0)
    79c8:	fe042423          	sw	zero,-24(s0)
    79cc:	fc042783          	lw	a5,-64(s0)
    79d0:	2781                	sext.w	a5,a5
    79d2:	c38d                	beqz	a5,79f4 <printint+0x4e>
    79d4:	fc842783          	lw	a5,-56(s0)
    79d8:	2781                	sext.w	a5,a5
    79da:	0007dd63          	bgez	a5,79f4 <printint+0x4e>
    79de:	4785                	li	a5,1
    79e0:	fef42423          	sw	a5,-24(s0)
    79e4:	fc842783          	lw	a5,-56(s0)
    79e8:	40f007bb          	negw	a5,a5
    79ec:	2781                	sext.w	a5,a5
    79ee:	fef42223          	sw	a5,-28(s0)
    79f2:	a029                	j	79fc <printint+0x56>
    79f4:	fc842783          	lw	a5,-56(s0)
    79f8:	fef42223          	sw	a5,-28(s0)
    79fc:	fe042623          	sw	zero,-20(s0)
    7a00:	fc442783          	lw	a5,-60(s0)
    7a04:	fe442703          	lw	a4,-28(s0)
    7a08:	02f777bb          	remuw	a5,a4,a5
    7a0c:	0007861b          	sext.w	a2,a5
    7a10:	fec42783          	lw	a5,-20(s0)
    7a14:	0017871b          	addiw	a4,a5,1
    7a18:	fee42623          	sw	a4,-20(s0)
    7a1c:	00004697          	auipc	a3,0x4
    7a20:	a3468693          	addi	a3,a3,-1484 # b450 <digits>
    7a24:	02061713          	slli	a4,a2,0x20
    7a28:	9301                	srli	a4,a4,0x20
    7a2a:	9736                	add	a4,a4,a3
    7a2c:	00074703          	lbu	a4,0(a4)
    7a30:	17c1                	addi	a5,a5,-16
    7a32:	97a2                	add	a5,a5,s0
    7a34:	fee78023          	sb	a4,-32(a5)
    7a38:	fc442783          	lw	a5,-60(s0)
    7a3c:	fe442703          	lw	a4,-28(s0)
    7a40:	02f757bb          	divuw	a5,a4,a5
    7a44:	fef42223          	sw	a5,-28(s0)
    7a48:	fe442783          	lw	a5,-28(s0)
    7a4c:	2781                	sext.w	a5,a5
    7a4e:	fbcd                	bnez	a5,7a00 <printint+0x5a>
    7a50:	fe842783          	lw	a5,-24(s0)
    7a54:	2781                	sext.w	a5,a5
    7a56:	cf85                	beqz	a5,7a8e <printint+0xe8>
    7a58:	fec42783          	lw	a5,-20(s0)
    7a5c:	0017871b          	addiw	a4,a5,1
    7a60:	fee42623          	sw	a4,-20(s0)
    7a64:	17c1                	addi	a5,a5,-16
    7a66:	97a2                	add	a5,a5,s0
    7a68:	02d00713          	li	a4,45
    7a6c:	fee78023          	sb	a4,-32(a5)
    7a70:	a839                	j	7a8e <printint+0xe8>
    7a72:	fec42783          	lw	a5,-20(s0)
    7a76:	17c1                	addi	a5,a5,-16
    7a78:	97a2                	add	a5,a5,s0
    7a7a:	fe07c703          	lbu	a4,-32(a5)
    7a7e:	fcc42783          	lw	a5,-52(s0)
    7a82:	85ba                	mv	a1,a4
    7a84:	853e                	mv	a0,a5
    7a86:	00000097          	auipc	ra,0x0
    7a8a:	eea080e7          	jalr	-278(ra) # 7970 <putc>
    7a8e:	fec42783          	lw	a5,-20(s0)
    7a92:	37fd                	addiw	a5,a5,-1
    7a94:	fef42623          	sw	a5,-20(s0)
    7a98:	fec42783          	lw	a5,-20(s0)
    7a9c:	2781                	sext.w	a5,a5
    7a9e:	fc07dae3          	bgez	a5,7a72 <printint+0xcc>
    7aa2:	0001                	nop
    7aa4:	0001                	nop
    7aa6:	70e2                	ld	ra,56(sp)
    7aa8:	7442                	ld	s0,48(sp)
    7aaa:	6121                	addi	sp,sp,64
    7aac:	8082                	ret

0000000000007aae <printptr>:
    7aae:	7179                	addi	sp,sp,-48
    7ab0:	f406                	sd	ra,40(sp)
    7ab2:	f022                	sd	s0,32(sp)
    7ab4:	1800                	addi	s0,sp,48
    7ab6:	87aa                	mv	a5,a0
    7ab8:	fcb43823          	sd	a1,-48(s0)
    7abc:	fcf42e23          	sw	a5,-36(s0)
    7ac0:	fdc42783          	lw	a5,-36(s0)
    7ac4:	03000593          	li	a1,48
    7ac8:	853e                	mv	a0,a5
    7aca:	00000097          	auipc	ra,0x0
    7ace:	ea6080e7          	jalr	-346(ra) # 7970 <putc>
    7ad2:	fdc42783          	lw	a5,-36(s0)
    7ad6:	07800593          	li	a1,120
    7ada:	853e                	mv	a0,a5
    7adc:	00000097          	auipc	ra,0x0
    7ae0:	e94080e7          	jalr	-364(ra) # 7970 <putc>
    7ae4:	fe042623          	sw	zero,-20(s0)
    7ae8:	a82d                	j	7b22 <printptr+0x74>
    7aea:	fd043783          	ld	a5,-48(s0)
    7aee:	93f1                	srli	a5,a5,0x3c
    7af0:	00004717          	auipc	a4,0x4
    7af4:	96070713          	addi	a4,a4,-1696 # b450 <digits>
    7af8:	97ba                	add	a5,a5,a4
    7afa:	0007c703          	lbu	a4,0(a5)
    7afe:	fdc42783          	lw	a5,-36(s0)
    7b02:	85ba                	mv	a1,a4
    7b04:	853e                	mv	a0,a5
    7b06:	00000097          	auipc	ra,0x0
    7b0a:	e6a080e7          	jalr	-406(ra) # 7970 <putc>
    7b0e:	fec42783          	lw	a5,-20(s0)
    7b12:	2785                	addiw	a5,a5,1
    7b14:	fef42623          	sw	a5,-20(s0)
    7b18:	fd043783          	ld	a5,-48(s0)
    7b1c:	0792                	slli	a5,a5,0x4
    7b1e:	fcf43823          	sd	a5,-48(s0)
    7b22:	fec42783          	lw	a5,-20(s0)
    7b26:	873e                	mv	a4,a5
    7b28:	47bd                	li	a5,15
    7b2a:	fce7f0e3          	bgeu	a5,a4,7aea <printptr+0x3c>
    7b2e:	0001                	nop
    7b30:	0001                	nop
    7b32:	70a2                	ld	ra,40(sp)
    7b34:	7402                	ld	s0,32(sp)
    7b36:	6145                	addi	sp,sp,48
    7b38:	8082                	ret

0000000000007b3a <vprintf>:
    7b3a:	715d                	addi	sp,sp,-80
    7b3c:	e486                	sd	ra,72(sp)
    7b3e:	e0a2                	sd	s0,64(sp)
    7b40:	0880                	addi	s0,sp,80
    7b42:	87aa                	mv	a5,a0
    7b44:	fcb43023          	sd	a1,-64(s0)
    7b48:	fac43c23          	sd	a2,-72(s0)
    7b4c:	fcf42623          	sw	a5,-52(s0)
    7b50:	fe042023          	sw	zero,-32(s0)
    7b54:	fe042223          	sw	zero,-28(s0)
    7b58:	a42d                	j	7d82 <vprintf+0x248>
    7b5a:	fe442783          	lw	a5,-28(s0)
    7b5e:	fc043703          	ld	a4,-64(s0)
    7b62:	97ba                	add	a5,a5,a4
    7b64:	0007c783          	lbu	a5,0(a5)
    7b68:	fcf42e23          	sw	a5,-36(s0)
    7b6c:	fe042783          	lw	a5,-32(s0)
    7b70:	2781                	sext.w	a5,a5
    7b72:	eb9d                	bnez	a5,7ba8 <vprintf+0x6e>
    7b74:	fdc42783          	lw	a5,-36(s0)
    7b78:	0007871b          	sext.w	a4,a5
    7b7c:	02500793          	li	a5,37
    7b80:	00f71763          	bne	a4,a5,7b8e <vprintf+0x54>
    7b84:	02500793          	li	a5,37
    7b88:	fef42023          	sw	a5,-32(s0)
    7b8c:	a2f5                	j	7d78 <vprintf+0x23e>
    7b8e:	fdc42783          	lw	a5,-36(s0)
    7b92:	0ff7f713          	zext.b	a4,a5
    7b96:	fcc42783          	lw	a5,-52(s0)
    7b9a:	85ba                	mv	a1,a4
    7b9c:	853e                	mv	a0,a5
    7b9e:	00000097          	auipc	ra,0x0
    7ba2:	dd2080e7          	jalr	-558(ra) # 7970 <putc>
    7ba6:	aac9                	j	7d78 <vprintf+0x23e>
    7ba8:	fe042783          	lw	a5,-32(s0)
    7bac:	0007871b          	sext.w	a4,a5
    7bb0:	02500793          	li	a5,37
    7bb4:	1cf71263          	bne	a4,a5,7d78 <vprintf+0x23e>
    7bb8:	fdc42783          	lw	a5,-36(s0)
    7bbc:	0007871b          	sext.w	a4,a5
    7bc0:	06400793          	li	a5,100
    7bc4:	02f71463          	bne	a4,a5,7bec <vprintf+0xb2>
    7bc8:	fb843783          	ld	a5,-72(s0)
    7bcc:	00878713          	addi	a4,a5,8
    7bd0:	fae43c23          	sd	a4,-72(s0)
    7bd4:	4398                	lw	a4,0(a5)
    7bd6:	fcc42783          	lw	a5,-52(s0)
    7bda:	4685                	li	a3,1
    7bdc:	4629                	li	a2,10
    7bde:	85ba                	mv	a1,a4
    7be0:	853e                	mv	a0,a5
    7be2:	00000097          	auipc	ra,0x0
    7be6:	dc4080e7          	jalr	-572(ra) # 79a6 <printint>
    7bea:	a269                	j	7d74 <vprintf+0x23a>
    7bec:	fdc42783          	lw	a5,-36(s0)
    7bf0:	0007871b          	sext.w	a4,a5
    7bf4:	06c00793          	li	a5,108
    7bf8:	02f71663          	bne	a4,a5,7c24 <vprintf+0xea>
    7bfc:	fb843783          	ld	a5,-72(s0)
    7c00:	00878713          	addi	a4,a5,8
    7c04:	fae43c23          	sd	a4,-72(s0)
    7c08:	639c                	ld	a5,0(a5)
    7c0a:	0007871b          	sext.w	a4,a5
    7c0e:	fcc42783          	lw	a5,-52(s0)
    7c12:	4681                	li	a3,0
    7c14:	4629                	li	a2,10
    7c16:	85ba                	mv	a1,a4
    7c18:	853e                	mv	a0,a5
    7c1a:	00000097          	auipc	ra,0x0
    7c1e:	d8c080e7          	jalr	-628(ra) # 79a6 <printint>
    7c22:	aa89                	j	7d74 <vprintf+0x23a>
    7c24:	fdc42783          	lw	a5,-36(s0)
    7c28:	0007871b          	sext.w	a4,a5
    7c2c:	07800793          	li	a5,120
    7c30:	02f71463          	bne	a4,a5,7c58 <vprintf+0x11e>
    7c34:	fb843783          	ld	a5,-72(s0)
    7c38:	00878713          	addi	a4,a5,8
    7c3c:	fae43c23          	sd	a4,-72(s0)
    7c40:	4398                	lw	a4,0(a5)
    7c42:	fcc42783          	lw	a5,-52(s0)
    7c46:	4681                	li	a3,0
    7c48:	4641                	li	a2,16
    7c4a:	85ba                	mv	a1,a4
    7c4c:	853e                	mv	a0,a5
    7c4e:	00000097          	auipc	ra,0x0
    7c52:	d58080e7          	jalr	-680(ra) # 79a6 <printint>
    7c56:	aa39                	j	7d74 <vprintf+0x23a>
    7c58:	fdc42783          	lw	a5,-36(s0)
    7c5c:	0007871b          	sext.w	a4,a5
    7c60:	07000793          	li	a5,112
    7c64:	02f71263          	bne	a4,a5,7c88 <vprintf+0x14e>
    7c68:	fb843783          	ld	a5,-72(s0)
    7c6c:	00878713          	addi	a4,a5,8
    7c70:	fae43c23          	sd	a4,-72(s0)
    7c74:	6398                	ld	a4,0(a5)
    7c76:	fcc42783          	lw	a5,-52(s0)
    7c7a:	85ba                	mv	a1,a4
    7c7c:	853e                	mv	a0,a5
    7c7e:	00000097          	auipc	ra,0x0
    7c82:	e30080e7          	jalr	-464(ra) # 7aae <printptr>
    7c86:	a0fd                	j	7d74 <vprintf+0x23a>
    7c88:	fdc42783          	lw	a5,-36(s0)
    7c8c:	0007871b          	sext.w	a4,a5
    7c90:	07300793          	li	a5,115
    7c94:	04f71c63          	bne	a4,a5,7cec <vprintf+0x1b2>
    7c98:	fb843783          	ld	a5,-72(s0)
    7c9c:	00878713          	addi	a4,a5,8
    7ca0:	fae43c23          	sd	a4,-72(s0)
    7ca4:	639c                	ld	a5,0(a5)
    7ca6:	fef43423          	sd	a5,-24(s0)
    7caa:	fe843783          	ld	a5,-24(s0)
    7cae:	eb8d                	bnez	a5,7ce0 <vprintf+0x1a6>
    7cb0:	00003797          	auipc	a5,0x3
    7cb4:	95078793          	addi	a5,a5,-1712 # a600 <malloc+0x2616>
    7cb8:	fef43423          	sd	a5,-24(s0)
    7cbc:	a015                	j	7ce0 <vprintf+0x1a6>
    7cbe:	fe843783          	ld	a5,-24(s0)
    7cc2:	0007c703          	lbu	a4,0(a5)
    7cc6:	fcc42783          	lw	a5,-52(s0)
    7cca:	85ba                	mv	a1,a4
    7ccc:	853e                	mv	a0,a5
    7cce:	00000097          	auipc	ra,0x0
    7cd2:	ca2080e7          	jalr	-862(ra) # 7970 <putc>
    7cd6:	fe843783          	ld	a5,-24(s0)
    7cda:	0785                	addi	a5,a5,1
    7cdc:	fef43423          	sd	a5,-24(s0)
    7ce0:	fe843783          	ld	a5,-24(s0)
    7ce4:	0007c783          	lbu	a5,0(a5)
    7ce8:	fbf9                	bnez	a5,7cbe <vprintf+0x184>
    7cea:	a069                	j	7d74 <vprintf+0x23a>
    7cec:	fdc42783          	lw	a5,-36(s0)
    7cf0:	0007871b          	sext.w	a4,a5
    7cf4:	06300793          	li	a5,99
    7cf8:	02f71463          	bne	a4,a5,7d20 <vprintf+0x1e6>
    7cfc:	fb843783          	ld	a5,-72(s0)
    7d00:	00878713          	addi	a4,a5,8
    7d04:	fae43c23          	sd	a4,-72(s0)
    7d08:	439c                	lw	a5,0(a5)
    7d0a:	0ff7f713          	zext.b	a4,a5
    7d0e:	fcc42783          	lw	a5,-52(s0)
    7d12:	85ba                	mv	a1,a4
    7d14:	853e                	mv	a0,a5
    7d16:	00000097          	auipc	ra,0x0
    7d1a:	c5a080e7          	jalr	-934(ra) # 7970 <putc>
    7d1e:	a899                	j	7d74 <vprintf+0x23a>
    7d20:	fdc42783          	lw	a5,-36(s0)
    7d24:	0007871b          	sext.w	a4,a5
    7d28:	02500793          	li	a5,37
    7d2c:	00f71f63          	bne	a4,a5,7d4a <vprintf+0x210>
    7d30:	fdc42783          	lw	a5,-36(s0)
    7d34:	0ff7f713          	zext.b	a4,a5
    7d38:	fcc42783          	lw	a5,-52(s0)
    7d3c:	85ba                	mv	a1,a4
    7d3e:	853e                	mv	a0,a5
    7d40:	00000097          	auipc	ra,0x0
    7d44:	c30080e7          	jalr	-976(ra) # 7970 <putc>
    7d48:	a035                	j	7d74 <vprintf+0x23a>
    7d4a:	fcc42783          	lw	a5,-52(s0)
    7d4e:	02500593          	li	a1,37
    7d52:	853e                	mv	a0,a5
    7d54:	00000097          	auipc	ra,0x0
    7d58:	c1c080e7          	jalr	-996(ra) # 7970 <putc>
    7d5c:	fdc42783          	lw	a5,-36(s0)
    7d60:	0ff7f713          	zext.b	a4,a5
    7d64:	fcc42783          	lw	a5,-52(s0)
    7d68:	85ba                	mv	a1,a4
    7d6a:	853e                	mv	a0,a5
    7d6c:	00000097          	auipc	ra,0x0
    7d70:	c04080e7          	jalr	-1020(ra) # 7970 <putc>
    7d74:	fe042023          	sw	zero,-32(s0)
    7d78:	fe442783          	lw	a5,-28(s0)
    7d7c:	2785                	addiw	a5,a5,1
    7d7e:	fef42223          	sw	a5,-28(s0)
    7d82:	fe442783          	lw	a5,-28(s0)
    7d86:	fc043703          	ld	a4,-64(s0)
    7d8a:	97ba                	add	a5,a5,a4
    7d8c:	0007c783          	lbu	a5,0(a5)
    7d90:	dc0795e3          	bnez	a5,7b5a <vprintf+0x20>
    7d94:	0001                	nop
    7d96:	0001                	nop
    7d98:	60a6                	ld	ra,72(sp)
    7d9a:	6406                	ld	s0,64(sp)
    7d9c:	6161                	addi	sp,sp,80
    7d9e:	8082                	ret

0000000000007da0 <fprintf>:
    7da0:	7159                	addi	sp,sp,-112
    7da2:	fc06                	sd	ra,56(sp)
    7da4:	f822                	sd	s0,48(sp)
    7da6:	0080                	addi	s0,sp,64
    7da8:	fcb43823          	sd	a1,-48(s0)
    7dac:	e010                	sd	a2,0(s0)
    7dae:	e414                	sd	a3,8(s0)
    7db0:	e818                	sd	a4,16(s0)
    7db2:	ec1c                	sd	a5,24(s0)
    7db4:	03043023          	sd	a6,32(s0)
    7db8:	03143423          	sd	a7,40(s0)
    7dbc:	87aa                	mv	a5,a0
    7dbe:	fcf42e23          	sw	a5,-36(s0)
    7dc2:	03040793          	addi	a5,s0,48
    7dc6:	fcf43423          	sd	a5,-56(s0)
    7dca:	fc843783          	ld	a5,-56(s0)
    7dce:	fd078793          	addi	a5,a5,-48
    7dd2:	fef43423          	sd	a5,-24(s0)
    7dd6:	fe843703          	ld	a4,-24(s0)
    7dda:	fdc42783          	lw	a5,-36(s0)
    7dde:	863a                	mv	a2,a4
    7de0:	fd043583          	ld	a1,-48(s0)
    7de4:	853e                	mv	a0,a5
    7de6:	00000097          	auipc	ra,0x0
    7dea:	d54080e7          	jalr	-684(ra) # 7b3a <vprintf>
    7dee:	0001                	nop
    7df0:	70e2                	ld	ra,56(sp)
    7df2:	7442                	ld	s0,48(sp)
    7df4:	6165                	addi	sp,sp,112
    7df6:	8082                	ret

0000000000007df8 <printf>:
    7df8:	7159                	addi	sp,sp,-112
    7dfa:	f406                	sd	ra,40(sp)
    7dfc:	f022                	sd	s0,32(sp)
    7dfe:	1800                	addi	s0,sp,48
    7e00:	fca43c23          	sd	a0,-40(s0)
    7e04:	e40c                	sd	a1,8(s0)
    7e06:	e810                	sd	a2,16(s0)
    7e08:	ec14                	sd	a3,24(s0)
    7e0a:	f018                	sd	a4,32(s0)
    7e0c:	f41c                	sd	a5,40(s0)
    7e0e:	03043823          	sd	a6,48(s0)
    7e12:	03143c23          	sd	a7,56(s0)
    7e16:	04040793          	addi	a5,s0,64
    7e1a:	fcf43823          	sd	a5,-48(s0)
    7e1e:	fd043783          	ld	a5,-48(s0)
    7e22:	fc878793          	addi	a5,a5,-56
    7e26:	fef43423          	sd	a5,-24(s0)
    7e2a:	fe843783          	ld	a5,-24(s0)
    7e2e:	863e                	mv	a2,a5
    7e30:	fd843583          	ld	a1,-40(s0)
    7e34:	4505                	li	a0,1
    7e36:	00000097          	auipc	ra,0x0
    7e3a:	d04080e7          	jalr	-764(ra) # 7b3a <vprintf>
    7e3e:	0001                	nop
    7e40:	70a2                	ld	ra,40(sp)
    7e42:	7402                	ld	s0,32(sp)
    7e44:	6165                	addi	sp,sp,112
    7e46:	8082                	ret

0000000000007e48 <free>:
    7e48:	7179                	addi	sp,sp,-48
    7e4a:	f422                	sd	s0,40(sp)
    7e4c:	1800                	addi	s0,sp,48
    7e4e:	fca43c23          	sd	a0,-40(s0)
    7e52:	fd843783          	ld	a5,-40(s0)
    7e56:	17c1                	addi	a5,a5,-16
    7e58:	fef43023          	sd	a5,-32(s0)
    7e5c:	0000a797          	auipc	a5,0xa
    7e60:	e3c78793          	addi	a5,a5,-452 # 11c98 <freep>
    7e64:	639c                	ld	a5,0(a5)
    7e66:	fef43423          	sd	a5,-24(s0)
    7e6a:	a815                	j	7e9e <free+0x56>
    7e6c:	fe843783          	ld	a5,-24(s0)
    7e70:	639c                	ld	a5,0(a5)
    7e72:	fe843703          	ld	a4,-24(s0)
    7e76:	00f76f63          	bltu	a4,a5,7e94 <free+0x4c>
    7e7a:	fe043703          	ld	a4,-32(s0)
    7e7e:	fe843783          	ld	a5,-24(s0)
    7e82:	02e7eb63          	bltu	a5,a4,7eb8 <free+0x70>
    7e86:	fe843783          	ld	a5,-24(s0)
    7e8a:	639c                	ld	a5,0(a5)
    7e8c:	fe043703          	ld	a4,-32(s0)
    7e90:	02f76463          	bltu	a4,a5,7eb8 <free+0x70>
    7e94:	fe843783          	ld	a5,-24(s0)
    7e98:	639c                	ld	a5,0(a5)
    7e9a:	fef43423          	sd	a5,-24(s0)
    7e9e:	fe043703          	ld	a4,-32(s0)
    7ea2:	fe843783          	ld	a5,-24(s0)
    7ea6:	fce7f3e3          	bgeu	a5,a4,7e6c <free+0x24>
    7eaa:	fe843783          	ld	a5,-24(s0)
    7eae:	639c                	ld	a5,0(a5)
    7eb0:	fe043703          	ld	a4,-32(s0)
    7eb4:	faf77ce3          	bgeu	a4,a5,7e6c <free+0x24>
    7eb8:	fe043783          	ld	a5,-32(s0)
    7ebc:	479c                	lw	a5,8(a5)
    7ebe:	1782                	slli	a5,a5,0x20
    7ec0:	9381                	srli	a5,a5,0x20
    7ec2:	0792                	slli	a5,a5,0x4
    7ec4:	fe043703          	ld	a4,-32(s0)
    7ec8:	973e                	add	a4,a4,a5
    7eca:	fe843783          	ld	a5,-24(s0)
    7ece:	639c                	ld	a5,0(a5)
    7ed0:	02f71763          	bne	a4,a5,7efe <free+0xb6>
    7ed4:	fe043783          	ld	a5,-32(s0)
    7ed8:	4798                	lw	a4,8(a5)
    7eda:	fe843783          	ld	a5,-24(s0)
    7ede:	639c                	ld	a5,0(a5)
    7ee0:	479c                	lw	a5,8(a5)
    7ee2:	9fb9                	addw	a5,a5,a4
    7ee4:	0007871b          	sext.w	a4,a5
    7ee8:	fe043783          	ld	a5,-32(s0)
    7eec:	c798                	sw	a4,8(a5)
    7eee:	fe843783          	ld	a5,-24(s0)
    7ef2:	639c                	ld	a5,0(a5)
    7ef4:	6398                	ld	a4,0(a5)
    7ef6:	fe043783          	ld	a5,-32(s0)
    7efa:	e398                	sd	a4,0(a5)
    7efc:	a039                	j	7f0a <free+0xc2>
    7efe:	fe843783          	ld	a5,-24(s0)
    7f02:	6398                	ld	a4,0(a5)
    7f04:	fe043783          	ld	a5,-32(s0)
    7f08:	e398                	sd	a4,0(a5)
    7f0a:	fe843783          	ld	a5,-24(s0)
    7f0e:	479c                	lw	a5,8(a5)
    7f10:	1782                	slli	a5,a5,0x20
    7f12:	9381                	srli	a5,a5,0x20
    7f14:	0792                	slli	a5,a5,0x4
    7f16:	fe843703          	ld	a4,-24(s0)
    7f1a:	97ba                	add	a5,a5,a4
    7f1c:	fe043703          	ld	a4,-32(s0)
    7f20:	02f71563          	bne	a4,a5,7f4a <free+0x102>
    7f24:	fe843783          	ld	a5,-24(s0)
    7f28:	4798                	lw	a4,8(a5)
    7f2a:	fe043783          	ld	a5,-32(s0)
    7f2e:	479c                	lw	a5,8(a5)
    7f30:	9fb9                	addw	a5,a5,a4
    7f32:	0007871b          	sext.w	a4,a5
    7f36:	fe843783          	ld	a5,-24(s0)
    7f3a:	c798                	sw	a4,8(a5)
    7f3c:	fe043783          	ld	a5,-32(s0)
    7f40:	6398                	ld	a4,0(a5)
    7f42:	fe843783          	ld	a5,-24(s0)
    7f46:	e398                	sd	a4,0(a5)
    7f48:	a031                	j	7f54 <free+0x10c>
    7f4a:	fe843783          	ld	a5,-24(s0)
    7f4e:	fe043703          	ld	a4,-32(s0)
    7f52:	e398                	sd	a4,0(a5)
    7f54:	0000a797          	auipc	a5,0xa
    7f58:	d4478793          	addi	a5,a5,-700 # 11c98 <freep>
    7f5c:	fe843703          	ld	a4,-24(s0)
    7f60:	e398                	sd	a4,0(a5)
    7f62:	0001                	nop
    7f64:	7422                	ld	s0,40(sp)
    7f66:	6145                	addi	sp,sp,48
    7f68:	8082                	ret

0000000000007f6a <morecore>:
    7f6a:	7179                	addi	sp,sp,-48
    7f6c:	f406                	sd	ra,40(sp)
    7f6e:	f022                	sd	s0,32(sp)
    7f70:	1800                	addi	s0,sp,48
    7f72:	87aa                	mv	a5,a0
    7f74:	fcf42e23          	sw	a5,-36(s0)
    7f78:	fdc42783          	lw	a5,-36(s0)
    7f7c:	0007871b          	sext.w	a4,a5
    7f80:	6785                	lui	a5,0x1
    7f82:	00f77563          	bgeu	a4,a5,7f8c <morecore+0x22>
    7f86:	6785                	lui	a5,0x1
    7f88:	fcf42e23          	sw	a5,-36(s0)
    7f8c:	fdc42783          	lw	a5,-36(s0)
    7f90:	0047979b          	slliw	a5,a5,0x4
    7f94:	2781                	sext.w	a5,a5
    7f96:	2781                	sext.w	a5,a5
    7f98:	853e                	mv	a0,a5
    7f9a:	00000097          	auipc	ra,0x0
    7f9e:	996080e7          	jalr	-1642(ra) # 7930 <sbrk>
    7fa2:	fea43423          	sd	a0,-24(s0)
    7fa6:	fe843703          	ld	a4,-24(s0)
    7faa:	57fd                	li	a5,-1
    7fac:	00f71463          	bne	a4,a5,7fb4 <morecore+0x4a>
    7fb0:	4781                	li	a5,0
    7fb2:	a03d                	j	7fe0 <morecore+0x76>
    7fb4:	fe843783          	ld	a5,-24(s0)
    7fb8:	fef43023          	sd	a5,-32(s0)
    7fbc:	fe043783          	ld	a5,-32(s0)
    7fc0:	fdc42703          	lw	a4,-36(s0)
    7fc4:	c798                	sw	a4,8(a5)
    7fc6:	fe043783          	ld	a5,-32(s0)
    7fca:	07c1                	addi	a5,a5,16 # 1010 <truncate3+0x1c2>
    7fcc:	853e                	mv	a0,a5
    7fce:	00000097          	auipc	ra,0x0
    7fd2:	e7a080e7          	jalr	-390(ra) # 7e48 <free>
    7fd6:	0000a797          	auipc	a5,0xa
    7fda:	cc278793          	addi	a5,a5,-830 # 11c98 <freep>
    7fde:	639c                	ld	a5,0(a5)
    7fe0:	853e                	mv	a0,a5
    7fe2:	70a2                	ld	ra,40(sp)
    7fe4:	7402                	ld	s0,32(sp)
    7fe6:	6145                	addi	sp,sp,48
    7fe8:	8082                	ret

0000000000007fea <malloc>:
    7fea:	7139                	addi	sp,sp,-64
    7fec:	fc06                	sd	ra,56(sp)
    7fee:	f822                	sd	s0,48(sp)
    7ff0:	0080                	addi	s0,sp,64
    7ff2:	87aa                	mv	a5,a0
    7ff4:	fcf42623          	sw	a5,-52(s0)
    7ff8:	fcc46783          	lwu	a5,-52(s0)
    7ffc:	07bd                	addi	a5,a5,15
    7ffe:	8391                	srli	a5,a5,0x4
    8000:	2781                	sext.w	a5,a5
    8002:	2785                	addiw	a5,a5,1
    8004:	fcf42e23          	sw	a5,-36(s0)
    8008:	0000a797          	auipc	a5,0xa
    800c:	c9078793          	addi	a5,a5,-880 # 11c98 <freep>
    8010:	639c                	ld	a5,0(a5)
    8012:	fef43023          	sd	a5,-32(s0)
    8016:	fe043783          	ld	a5,-32(s0)
    801a:	ef95                	bnez	a5,8056 <malloc+0x6c>
    801c:	0000a797          	auipc	a5,0xa
    8020:	c6c78793          	addi	a5,a5,-916 # 11c88 <base>
    8024:	fef43023          	sd	a5,-32(s0)
    8028:	0000a797          	auipc	a5,0xa
    802c:	c7078793          	addi	a5,a5,-912 # 11c98 <freep>
    8030:	fe043703          	ld	a4,-32(s0)
    8034:	e398                	sd	a4,0(a5)
    8036:	0000a797          	auipc	a5,0xa
    803a:	c6278793          	addi	a5,a5,-926 # 11c98 <freep>
    803e:	6398                	ld	a4,0(a5)
    8040:	0000a797          	auipc	a5,0xa
    8044:	c4878793          	addi	a5,a5,-952 # 11c88 <base>
    8048:	e398                	sd	a4,0(a5)
    804a:	0000a797          	auipc	a5,0xa
    804e:	c3e78793          	addi	a5,a5,-962 # 11c88 <base>
    8052:	0007a423          	sw	zero,8(a5)
    8056:	fe043783          	ld	a5,-32(s0)
    805a:	639c                	ld	a5,0(a5)
    805c:	fef43423          	sd	a5,-24(s0)
    8060:	fe843783          	ld	a5,-24(s0)
    8064:	4798                	lw	a4,8(a5)
    8066:	fdc42783          	lw	a5,-36(s0)
    806a:	2781                	sext.w	a5,a5
    806c:	06f76763          	bltu	a4,a5,80da <malloc+0xf0>
    8070:	fe843783          	ld	a5,-24(s0)
    8074:	4798                	lw	a4,8(a5)
    8076:	fdc42783          	lw	a5,-36(s0)
    807a:	2781                	sext.w	a5,a5
    807c:	00e79963          	bne	a5,a4,808e <malloc+0xa4>
    8080:	fe843783          	ld	a5,-24(s0)
    8084:	6398                	ld	a4,0(a5)
    8086:	fe043783          	ld	a5,-32(s0)
    808a:	e398                	sd	a4,0(a5)
    808c:	a825                	j	80c4 <malloc+0xda>
    808e:	fe843783          	ld	a5,-24(s0)
    8092:	479c                	lw	a5,8(a5)
    8094:	fdc42703          	lw	a4,-36(s0)
    8098:	9f99                	subw	a5,a5,a4
    809a:	0007871b          	sext.w	a4,a5
    809e:	fe843783          	ld	a5,-24(s0)
    80a2:	c798                	sw	a4,8(a5)
    80a4:	fe843783          	ld	a5,-24(s0)
    80a8:	479c                	lw	a5,8(a5)
    80aa:	1782                	slli	a5,a5,0x20
    80ac:	9381                	srli	a5,a5,0x20
    80ae:	0792                	slli	a5,a5,0x4
    80b0:	fe843703          	ld	a4,-24(s0)
    80b4:	97ba                	add	a5,a5,a4
    80b6:	fef43423          	sd	a5,-24(s0)
    80ba:	fe843783          	ld	a5,-24(s0)
    80be:	fdc42703          	lw	a4,-36(s0)
    80c2:	c798                	sw	a4,8(a5)
    80c4:	0000a797          	auipc	a5,0xa
    80c8:	bd478793          	addi	a5,a5,-1068 # 11c98 <freep>
    80cc:	fe043703          	ld	a4,-32(s0)
    80d0:	e398                	sd	a4,0(a5)
    80d2:	fe843783          	ld	a5,-24(s0)
    80d6:	07c1                	addi	a5,a5,16
    80d8:	a091                	j	811c <malloc+0x132>
    80da:	0000a797          	auipc	a5,0xa
    80de:	bbe78793          	addi	a5,a5,-1090 # 11c98 <freep>
    80e2:	639c                	ld	a5,0(a5)
    80e4:	fe843703          	ld	a4,-24(s0)
    80e8:	02f71063          	bne	a4,a5,8108 <malloc+0x11e>
    80ec:	fdc42783          	lw	a5,-36(s0)
    80f0:	853e                	mv	a0,a5
    80f2:	00000097          	auipc	ra,0x0
    80f6:	e78080e7          	jalr	-392(ra) # 7f6a <morecore>
    80fa:	fea43423          	sd	a0,-24(s0)
    80fe:	fe843783          	ld	a5,-24(s0)
    8102:	e399                	bnez	a5,8108 <malloc+0x11e>
    8104:	4781                	li	a5,0
    8106:	a819                	j	811c <malloc+0x132>
    8108:	fe843783          	ld	a5,-24(s0)
    810c:	fef43023          	sd	a5,-32(s0)
    8110:	fe843783          	ld	a5,-24(s0)
    8114:	639c                	ld	a5,0(a5)
    8116:	fef43423          	sd	a5,-24(s0)
    811a:	b799                	j	8060 <malloc+0x76>
    811c:	853e                	mv	a0,a5
    811e:	70e2                	ld	ra,56(sp)
    8120:	7442                	ld	s0,48(sp)
    8122:	6121                	addi	sp,sp,64
    8124:	8082                	ret
