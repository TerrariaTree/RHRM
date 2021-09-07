function initializeCues()
  cue = {}
  cue["countIn1"] = function() return newSource("/resources/sfx/game/countIn1.ogg", "static")end
  cue["countIn2"] = function() return newSource("/resources/sfx/game/countIn2.ogg", "static")end
  cue["countIn3"] = function() return newSource("/resources/sfx/game/countIn3.ogg", "static")end
  cue["countIn4"] = function() return newSource("/resources/sfx/game/countIn4.ogg", "static")end
  
  cue["countIn1Sp"] = function() return newSource("/resources/sfx/editor/ONEh.ogg", "static")end
  cue["countIn2Sp"] = function() return newSource("/resources/sfx/editor/TWOh.ogg", "static")end
  cue["countIn3Sp"] = function() return newSource("/resources/sfx/editor/THREEh.ogg", "static")end
  cue["countIn4Sp"] = function() return newSource("/resources/sfx/editor/FOURh.ogg", "static")end
  
  cue["cowbell"] = function() return newSource("/resources/sfx/game/cowbell.ogg", "static")end
  
  cue["silence"] = function() return newSource("/resources/sfx/silence.ogg", "static")end
  
  cue["karatekaPotThrow"] = function() return newSource("/resources/sfx/karate man (GBA)/potThrow.ogg", "static")end
  cue["karatekaPotHit"] = function() return newSource("/resources/sfx/karate man (GBA)/potHit.ogg", "static")end
  cue["karatekaRockHit"] = function() return newSource("/resources/sfx/karate man (GBA)/rockHit.ogg", "static")end
  cue["karatekaMi"] = function() return newSource("/resources/sfx/karate man (GBA)/mi.ogg", "static")end
  cue["karatekaTsu"] = function() return newSource("/resources/sfx/karate man (GBA)/tsu.ogg", "static")end
  
  cue["tweezersRootAppear"] = function() return newSource("/resources/sfx/rhythm tweezers (GBA)/hairAppear.ogg", "static")end
  cue["tweezersRootPluck"] = function() return newSource("/resources/sfx/rhythm tweezers (GBA)/hairPluck.ogg", "static")end
  cue["tweezersRootAppearLong"] = function() return newSource("/resources/sfx/rhythm tweezers (GBA)/hairAppearLong.ogg", "static")end
  cue["tweezersRootPluckLong1"] = function() return newSource("/resources/sfx/rhythm tweezers (GBA)/hairPluckLong1.ogg", "static")end
  cue["tweezersRootPluckLong2"] = function() return newSource("/resources/sfx/rhythm tweezers (GBA)/hairPluckLong2.ogg", "static")end
  
  cue["BlueBirdsPeck"] = function() return newSource("/resources/sfx/Blue birds/peck.ogg", "static")end
  cue["BlueBirdsYour"] = function() return newSource("/resources/sfx/Blue birds/your.ogg", "static")end
  cue["BlueBirdsBeak"] = function() return newSource("/resources/sfx/Blue birds/beak.ogg", "static")end
  cue["BlueBirdsPeckPlayer"] = function() return newSource("/resources/sfx/Blue birds/peckPlayer.ogg", "static")end
  cue["BlueBirdsStretch"] = function() return newSource("/resources/sfx/Blue birds/stretch.ogg", "static")end
  cue["BlueBirdsOut"] = function() return newSource("/resources/sfx/Blue birds/out.ogg", "static")end
  cue["BlueBirdsYour2"] = function() return newSource("/resources/sfx/Blue birds/your2.ogg", "static")end
  cue["BlueBirdsNeck"] = function() return newSource("/resources/sfx/Blue birds/neck.ogg", "static")end
  cue["BlueBirdsStretchPlayer1"] = function() return newSource("/resources/sfx/Blue birds/stretchPlayer1.ogg", "static")end
  cue["BlueBirdsStretchPlayer2"] = function() return newSource("/resources/sfx/Blue birds/stretchPlayer2.ogg", "static")end
  
  cue["ForkLifterFlick"] = function() return newSource("/resources/sfx/Fork Lifter/flick.ogg", "static")end
  cue["ForkLifterZoom"] = function() return newSource("/resources/sfx/Fork Lifter/zoom.ogg", "static")end
  cue["ForkLifterStab"] = function() return newSource("/resources/sfx/Fork Lifter/stab.ogg", "static")end
  cue["ForkLifterEat"] = function() return newSource("/resources/sfx/Fork Lifter/eat.ogg", "static")end
  
  cue["ClappyTrioPrep"] = function() return newSource("/resources/sfx/Clappy Trio (Wii)/prepare.ogg", "static")end
  cue["ClappyTrioClap"] = function() return newSource("/resources/sfx/Clappy Trio (Wii)/clap.ogg", "static")end
  
  cue["LockStepOn"] = function() return newSource("/resources/sfx/Lock step/stepOn.ogg", "static")end
  cue["LockStepOff"] = function() return newSource("/resources/sfx/Lock step/stepOff.ogg", "static")end
  cue["LockStepHai"] = function() return newSource("/resources/sfx/Lock step/hai.ogg", "static")end
  cue["LockStepHa"] = function() return newSource("/resources/sfx/Lock step/ha.ogg", "static")end
  cue["LockStepHaOff"] = function() return newSource("/resources/sfx/Lock step/haOff.ogg", "static")end
  cue["LockStepHaiOff"] = function() return newSource("/resources/sfx/Lock step/haiOff.ogg", "static")end
  cue["LockStepOuf"] = function() return newSource("/resources/sfx/Lock step/ouf.ogg", "static")end
  cue["LockStepHm"] = function() return newSource("/resources/sfx/Lock step/hm.ogg", "static")end
  
  cue["ScrewBotsCrane1"] = function() return newSource("/resources/sfx/screw bots/crane1.ogg", "static")end
  cue["ScrewBotsCrane2"] = function() return newSource("/resources/sfx/screw bots/crane2.ogg", "static")end
  cue["ScrewBotsCraneWhite"] = function() return newSource("/resources/sfx/screw bots/craneWhite.ogg", "static")end
  cue["ScrewBotsBlackDrop"] = function() return newSource("/resources/sfx/screw bots/blackDrop.ogg", "static")end
  cue["ScrewBotsBlackScrew"] = function() return newSource("/resources/sfx/screw bots/blackScrew.ogg", "static")end
  cue["ScrewBotsWhiteDrop"] = function() return newSource("/resources/sfx/screw bots/whiteDrop.ogg", "static")end
  cue["ScrewBotsWhiteScrew"] = function() return newSource("/resources/sfx/screw bots/whiteScrew.ogg", "static")end
  cue["ScrewBotsComplete"] = function() return newSource("/resources/sfx/screw bots/complete.ogg", "static")end
  
  cue["MoaiDooLStart"] = function() return newSource("/resources/sfx/moai doo woop/dooLStart.ogg", "static")end
  cue["MoaiDooL"] = function() return newSource("/resources/sfx/moai doo woop/dooL.ogg", "static")end
  cue["MoaiWopL"] = function() return newSource("/resources/sfx/moai doo woop/woopL.ogg", "static")end
  cue["MoaiPahL"] = function() return newSource("/resources/sfx/moai doo woop/pahL.ogg", "static")end
  cue["MoaiSwitch"] = function() return newSource("/resources/sfx/moai doo woop/switch.ogg", "static")end
  cue["MoaiDooRStart"] = function() return newSource("/resources/sfx/moai doo woop/dooRStart.ogg", "static")end
  cue["MoaiDooR"] = function() return newSource("/resources/sfx/moai doo woop/dooR.ogg", "static")end
  cue["MoaiWopR"] = function() return newSource("/resources/sfx/moai doo woop/woopR.ogg", "static")end
  cue["MoaiPahR"] = function() return newSource("/resources/sfx/moai doo woop/pahR.ogg", "static")end
  
  cue["cheerReadersOneSolo"] = function() return newSource("/resources/sfx/cheer readers/oneSolo.ogg", "static")end
  cue["cheerReadersTwoSolo"] = function() return newSource("/resources/sfx/cheer readers/twoSolo.ogg", "static")end
  cue["cheerReadersThreeSolo"] = function() return newSource("/resources/sfx/cheer readers/threeSolo.ogg", "static")end
  cue["cheerReadersItsSolo"] = function() return newSource("/resources/sfx/cheer readers/itsSolo.ogg", "static")end
  cue["cheerReadersUpSolo"] = function() return newSource("/resources/sfx/cheer readers/upSolo.ogg", "static")end
  cue["cheerReadersToSolo"] = function() return newSource("/resources/sfx/cheer readers/toSolo.ogg", "static")end
  cue["cheerReadersYouSolo"] = function() return newSource("/resources/sfx/cheer readers/youSolo.ogg", "static")end
  cue["cheerReadersOSolo"] = function() return newSource("/resources/sfx/cheer readers/oSolo.ogg", "static")end
  cue["cheerReadersKaySolo"] = function() return newSource("/resources/sfx/cheer readers/kaySolo.ogg", "static")end
  cue["cheerReadersItsSolo2"] = function() return newSource("/resources/sfx/cheer readers/itsSolo2.ogg", "static")end
  cue["cheerReadersOnSolo"] = function() return newSource("/resources/sfx/cheer readers/onSolo.ogg", "static")end
  
  cue["cheerReadersOneGirls"] = function() return newSource("/resources/sfx/cheer readers/oneGirls.ogg", "static")end
  cue["cheerReadersTwoGirls"] = function() return newSource("/resources/sfx/cheer readers/twoGirls.ogg", "static")end
  cue["cheerReadersThreeGirls"] = function() return newSource("/resources/sfx/cheer readers/threeGirls.ogg", "static")end
  cue["cheerReadersItsGirls"] = function() return newSource("/resources/sfx/cheer readers/itsGirls.ogg", "static")end
  cue["cheerReadersUpGirls"] = function() return newSource("/resources/sfx/cheer readers/upGirls.ogg", "static")end
  cue["cheerReadersToGirls"] = function() return newSource("/resources/sfx/cheer readers/toGirls.ogg", "static")end
  cue["cheerReadersYouGirls"] = function() return newSource("/resources/sfx/cheer readers/youGirls.ogg", "static")end
  cue["cheerReadersOGirls"] = function() return newSource("/resources/sfx/cheer readers/oGirls.ogg", "static")end
  cue["cheerReadersKayGirls"] = function() return newSource("/resources/sfx/cheer readers/kayGirls.ogg", "static")end
  cue["cheerReadersItsGirls2"] = function() return newSource("/resources/sfx/cheer readers/itsGirls2.ogg", "static")end
  cue["cheerReadersOnGirls"] = function() return newSource("/resources/sfx/cheer readers/onGirls.ogg", "static")end
  
  cue["cheerReadersRaSolo"] = function() return newSource("/resources/sfx/cheer readers/raSolo.ogg", "static")end
  cue["cheerReadersRaSolo2"] = function() return newSource("/resources/sfx/cheer readers/raSolo2.ogg", "static")end
  cue["cheerReadersSisSolo"] = function() return newSource("/resources/sfx/cheer readers/sisSolo.ogg", "static")end
  cue["cheerReadersBoomSolo"] = function() return newSource("/resources/sfx/cheer readers/boomSolo.ogg", "static")end
  cue["cheerReadersBaSolo"] = function() return newSource("/resources/sfx/cheer readers/baSolo.ogg", "static")end
  cue["cheerReadersBoomSolo2"] = function() return newSource("/resources/sfx/cheer readers/boomSolo2.ogg", "static")end
  
  cue["cheerReadersRaGirls"] = function() return newSource("/resources/sfx/cheer readers/raGirls.ogg", "static")end
  cue["cheerReadersRaGirls2"] = function() return newSource("/resources/sfx/cheer readers/raGirls2.ogg", "static")end
  cue["cheerReadersSisGirls"] = function() return newSource("/resources/sfx/cheer readers/sisGirls.ogg", "static")end
  cue["cheerReadersBoomGirls"] = function() return newSource("/resources/sfx/cheer readers/boomGirls.ogg", "static")end
  cue["cheerReadersBaGirls"] = function() return newSource("/resources/sfx/cheer readers/baGirls.ogg", "static")end
  cue["cheerReadersBoomGirls2"] = function() return newSource("/resources/sfx/cheer readers/boomGirls2.ogg", "static")end
  
  cue["cheerReadersLetsSolo"] = function() return newSource("/resources/sfx/cheer readers/letsSolo.ogg", "static")end
  cue["cheerReadersGoSolo"] = function() return newSource("/resources/sfx/cheer readers/goSolo.ogg", "static")end
  cue["cheerReadersReadSolo"] = function() return newSource("/resources/sfx/cheer readers/readSolo.ogg", "static")end
  cue["cheerReadersASolo"] = function() return newSource("/resources/sfx/cheer readers/aSolo.ogg", "static")end
  cue["cheerReadersBunchSolo"] = function() return newSource("/resources/sfx/cheer readers/bunchSolo.ogg", "static")end
  cue["cheerReadersOfSolo"] = function() return newSource("/resources/sfx/cheer readers/ofSolo.ogg", "static")end
  cue["cheerReadersBooksSolo"] = function() return newSource("/resources/sfx/cheer readers/booksSolo.ogg", "static")end
  
  cue["cheerReadersLetsGirls"] = function() return newSource("/resources/sfx/cheer readers/letsGirls.ogg", "static")end
  cue["cheerReadersGoGirls"] = function() return newSource("/resources/sfx/cheer readers/goGirls.ogg", "static")end
  cue["cheerReadersReadGirls"] = function() return newSource("/resources/sfx/cheer readers/readGirls.ogg", "static")end
  cue["cheerReadersAGirls"] = function() return newSource("/resources/sfx/cheer readers/aGirls.ogg", "static")end
  cue["cheerReadersBunchGirls"] = function() return newSource("/resources/sfx/cheer readers/bunchGirls.ogg", "static")end
  cue["cheerReadersOfGirls"] = function() return newSource("/resources/sfx/cheer readers/ofGirls.ogg", "static")end
  cue["cheerReadersBooksGirls"] = function() return newSource("/resources/sfx/cheer readers/booksGirls.ogg", "static")end
  
  cue["gleeClubSing"] = function() return newSource("/resources/sfx/glee club/sing.ogg", "static") end
  cue["gleeClubStop"] = function() return newSource("/resources/sfx/glee club/closeMouth.ogg", "static") end
  
  
  cue["manzaiBoing"] = function() return newSource("/resources/sfx/manzai birds/boing.ogg", "static") end
  cue["manzaiHai"] = function() return newSource("/resources/sfx/manzai birds/haihai1.ogg", "static") end
  cue["manzaiHai2"] = function() return newSource("/resources/sfx/manzai birds/haihai2.ogg", "static") end
  cue["manzaiHai2"] = function() return newSource("/resources/sfx/manzai birds/haihai2.ogg", "static") end
  cue["manzaiDonaiyanen"] = function() return newSource("/resources/sfx/manzai birds/donaiyanen.ogg", "static") end
  
  cue["manzaiAichini_aichinna"] = function() return newSource("/resources/sfx/manzai birds/aichini_aichinna.ogg", "static") end
  
  
  cue["MrUpbeatLeft"] = function() return newSource("/resources/sfx/mrUpbeat/metronomeLeft.ogg", "static") end
  cue["MrUpbeatRight"] = function() return newSource("/resources/sfx/mrUpbeat/metronomeRight.ogg", "static") end
  cue["MrUpbeatStep"] = function() return newSource("/resources/sfx/mrUpbeat/step.ogg", "static") end
  cue["MrUpbeatDing"] = function() return newSource("/resources/sfx/mrUpbeat/ding.ogg", "static") end
  cue["MrUpbeatBeep"] = function() return newSource("/resources/sfx/mrUpbeat/beep.ogg", "static") end
  cue["MrUpbeatOne"] = function() return newSource("/resources/sfx/mrUpbeat/one.ogg", "static") end
  cue["MrUpbeatTwo"] = function() return newSource("/resources/sfx/mrUpbeat/two.ogg", "static") end
  cue["MrUpbeatThree"] = function() return newSource("/resources/sfx/mrUpbeat/three.ogg", "static") end
  cue["MrUpbeatFour"] = function() return newSource("/resources/sfx/mrUpbeat/four.ogg", "static") end
  
  cue["warioDeMamboOne"] = function() return newSource("/resources/sfx/wario de mambo/one.ogg", "static") end
  cue["warioDeMamboTwo"] = function() return newSource("/resources/sfx/wario de mambo/two.ogg", "static") end
  cue["warioDeMamboThree"] = function() return newSource("/resources/sfx/wario de mambo/three.ogg", "static") end
  cue["warioDeMamboFour"] = function() return newSource("/resources/sfx/wario de mambo/four.ogg", "static") end
  cue["warioDeMamboMemorize"] = function() return newSource("/resources/sfx/wario de mambo/memorize.ogg", "static") end
  cue["warioDeMamboLeanLeft"] = function() return newSource("/resources/sfx/wario de mambo/leanLeft.ogg", "static") end
  cue["warioDeMamboLeanRight"] = function() return newSource("/resources/sfx/wario de mambo/leanRight.ogg", "static") end
  cue["warioDeMamboJump"] = function() return newSource("/resources/sfx/wario de mambo/bounce.ogg", "static") end
  
  cue["tapTrialTap"] = function() return newSource("/resources/sfx/tap tap trial (GBA)/tap.ogg", "static") end
  cue["tapTrialOok"] = function() return newSource("/resources/sfx/tap tap trial (GBA)/ook1.ogg", "static") end
  cue["tapTrialOokook1"] = function() return newSource("/resources/sfx/tap tap trial (GBA)/ookook1.ogg", "static") end
  cue["tapTrialOokook2"] = function() return newSource("/resources/sfx/tap tap trial (GBA)/ookook1.ogg", "static") end
  cue["tapTrialOokee1"] = function() return newSource("/resources/sfx/tap tap trial (GBA)/ookee1.ogg", "static") end
  cue["tapTrialOokee2"] = function() return newSource("/resources/sfx/tap tap trial (GBA)/ookee2.ogg", "static") end
  
  cue["tapTroupeTap1"] = function() return newSource("/resources/sfx/tap troupe/tap1.ogg", "static") end
  cue["tapTroupeTap2"] = function() return newSource("/resources/sfx/tap troupe/tap2.ogg", "static") end
  cue["tapTroupeReady1"] = function() return newSource("/resources/sfx/tap troupe/ready1.ogg", "static") end
  cue["tapTroupeReady2"] = function() return newSource("/resources/sfx/tap troupe/ready2.ogg", "static") end
  cue["tapTroupeAnd"] = function() return newSource("/resources/sfx/tap troupe/and.ogg", "static") end
  cue["tapTroupeTapVoice1"] = function() return newSource("/resources/sfx/tap troupe/tapVoice1.ogg", "static") end
  cue["tapTroupeTapVoice2"] = function() return newSource("/resources/sfx/tap troupe/tapVoice2.ogg", "static") end
  cue["tapTroupeTapVoice3"] = function() return newSource("/resources/sfx/tap troupe/tapVoice3.ogg", "static") end
  cue["tapTroupeBom1"] = function() return newSource("/resources/sfx/tap troupe/bom1.ogg", "static") end
  cue["tapTroupeBom2"] = function() return newSource("/resources/sfx/tap troupe/bom2.ogg", "static") end
  
  cue["fanClubSingerHai1"] = function() return newSource("/resources/sfx/fan club (3DS)/singerHai1.ogg", "static") end
  cue["fanClubSingerHai2"] = function() return newSource("/resources/sfx/fan club (3DS)/singerHai2.ogg", "static") end
  cue["fanClubSingerHai3"] = function() return newSource("/resources/sfx/fan club (3DS)/singerHai3.ogg", "static") end
  cue["fanClubAudienceHai"] = function() return newSource("/resources/sfx/fan club (3DS)/audienceHai.ogg", "static") end
  cue["fanClubSingerKamone1"] = function() return newSource("/resources/sfx/fan club (3DS)/singerKamone1.ogg", "static") end
  cue["fanClubSingerKamone2"] = function() return newSource("/resources/sfx/fan club (3DS)/singerKamone2.ogg", "static") end
  cue["fanClubSingerKamone3"] = function() return newSource("/resources/sfx/fan club (3DS)/singerKamone3.ogg", "static") end
  cue["fanClubAudienceKamone1"] = function() return newSource("/resources/sfx/fan club (3DS)/audienceKamone1.ogg", "static") end
  cue["fanClubAudienceKamone2"] = function() return newSource("/resources/sfx/fan club (3DS)/audienceKamone2.ogg", "static") end
  cue["fanClubAudienceKamone3"] = function() return newSource("/resources/sfx/fan club (3DS)/audienceKamone3.ogg", "static") end
  cue["fanClubAudienceKamone4"] = function() return newSource("/resources/sfx/fan club (3DS)/audienceKamone4.ogg", "static") end
  cue["fanClubOoh1"] = function() return newSource("/resources/sfx/fan club (3DS)/ooh1.ogg", "static") end
  cue["fanClubOoh2"] = function() return newSource("/resources/sfx/fan club (3DS)/ooh2.ogg", "static") end
  cue["fanClubOoh3"] = function() return newSource("/resources/sfx/fan club (3DS)/ooh3.ogg", "static") end
end









