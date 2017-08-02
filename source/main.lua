require("editor")
require("game")
require("minigames")
require("animHandler")
require("SaveLoad")
require("menu")
require("soundDatabase")
json = require("json")

function love.load()
  font = love.graphics.newFont("/resources/rodin.otf",17)
  fontBig = love.graphics.newFont("/resources/rodin.otf",35)
  
  userImg = {}
  
  love.filesystem.setIdentity("RhythmHeavenRemixMaker")
  if not love.filesystem.exists("/remixes") then
    love.filesystem.createDirectory("/remixes")
  end
  
  version = "0.3.0"
  love.window.setTitle("RHRM - "..version)
  initializeData()
  initializeCues()
  
  --[[
  MINGAME LIST:
    0 = MISC
    1 = KARATE MAN (GBA)
    2 = RHYTHM EPILATION (GBA)
    3 = BLUE BIRDS
    4 = FORK LIFTER
    5 = CLAPPY TRIO (WII)
    6 = LOCK STEP
    7 = SCREW BOTS
  ]]
  imgUnknownMinigame = love.graphics.newImage("/resources/gfx/editor/icons/unknown.png")
  minigames = {
    [0] = {
      name = "misc",
      blocks = {
        {
          name = "END REMIX",
          length = 64,
          cues = {{name = "end remix",x = 0,cueId = "silence"}},
        },
        {
          name = "count in 4",
          length = 256,
          cues = {
            {name = "count1",x = 0,cueId = "countIn1"},
            {name = "count2",x = 64,cueId = "countIn2"},
            {name = "count3",x = 128,cueId = "countIn3"},
            {name = "count4",x = 128+64,cueId = "countIn4"}
          },
        },
        {
          name = "count in 8",
          length = 256*2,
          cues = {
            {name = "count1",x = 0,cueId = "countIn1"},
            {name = "count2",x = 128,cueId = "countIn2"},
            {name = "count1",x = 256+0,cueId = "countIn1"},
            {name = "count2",x = 256+64,cueId = "countIn2"},
            {name = "count3",x = 256+128,cueId = "countIn3"},
            {name = "count4",x = 256+128+64,cueId = "countIn4"},
          },
        },
        {
          name = "cowbell",
          length = 32,
          cues = {{name = "cowbell",x = 0,cueId = "cowbell"}},
        },
        {
          name = "1",
          length = 32,
          cues = {{name = "count1",x = 0,cueId = "countIn1"}},
        },
        {
          name = "2",
          length = 32,
          cues = {{name = "count2",x = 0,cueId = "countIn2"}},
        },
        {
          name = "3",
          length = 32,
          cues = {{name = "count3",x = 0,cueId = "countIn3"}},
        },
        {
          name = "4",
          length = 32,
          cues = {{name = "count4",x = 0,cueId = "countIn4"}},
        },
      }
    },
    [1] = {
      name = "karateka (GBA)",
      img = love.graphics.newImage("/resources/gfx/editor/icons/karateman.png"),
      blocks = {
        {
          name = "pot",
          length = 128,
          cues = {{name = "pot throw",x = 0,cueId = "karatekaPotThrow"}},
          hits = {{name = "punch",x = 64,cueId = "karatekaPotHit",input = "pressA"}}
        },
        {
          name = "rock",
          length = 128,
          cues = {{name = "rock throw",x = 0,cueId = "karatekaPotThrow"}},
          hits = {{name = "punch",x = 64,cueId = "karatekaRockHit",input = "pressA"}}
        },
        {
          name = "hit 3",
          length = 96,
          cues = {{name = "mi",x = 0,cueId = "karatekaMi"},{name = "tsu",x = 32,cueId = "karatekaTsu"}},
        }
      }
    },
    [2] = {
      name = "rhythm tweezers",
      img = love.graphics.newImage("/resources/gfx/editor/icons/rhythmepilation.png"),
      blocks = {
        {
          name = "start call",
          length = 64,
          cues = {{name = "call",x = 0,cueId = "silence"}}
        },
        --[[{
          name = "hair appear pluck",
          length = 64,
          hideConnection = true,
          cues = {{name = "appear",x = 0,sound = newSource("/resources/sfx/rhythm tweezers (GBA)/hairAppear.ogg")}},
          hits = {{name = "pluck",x = 64*4,sound = newSource("/resources/sfx/rhythm tweezers (GBA)/hairPluck.ogg"),input = "pressANY"}}
        },]]
        {
          name = "hair appear",
          length = 32,
          cues = {{name = "appear",x = 0,cueId = "tweezersRootAppear"}}
        },
        {
          name = "hair pluck",
          length = 32,
          hits = {{name = "pluck",x = 0,cueId = "tweezersRootPluck",input = "pressANY"}}
        },
        {
          name = "hair appear long",
          length = 32,
          cues = {{name = "appear long",x = 0,cueId = "tweezersRootAppearLong"}}
        },
        {
          name = "hair pluck long",
          length = 64,
          hits = {
            {name = "pluck long",x = 0,cueId = "tweezersRootPluckLong1",input = "pressANY"},
            {name = "pluckE",x = 32,cueId = "tweezersRootPluckLong2",input = "holdANY"}
          }
        },
      }
    },
    [3] = {
      name = "Blue birds",
      img = love.graphics.newImage("/resources/gfx/editor/icons/bluebirds.png"),
      blocks = {
        {
          name = "peck your beak",
          length = 256,
          cues = {
            {name = "speak",x = 0,cueId = "BlueBirdsPeck"},
            {name = "speak",x = 32,cueId = "BlueBirdsYour"},
            {name = "speak",x = 64,cueId = "BlueBirdsBeak"}
          },
          hits = {
            {name = "peck",x = 128,cueId = "BlueBirdsPeckPlayer",input = "pressA"},
            {name = "peck",x = 128+32,cueId = "BlueBirdsPeckPlayer",input = "pressA"},
            {name = "peck",x = 128+64,cueId = "BlueBirdsPeckPlayer",input = "pressA"},
          }
        },
        {
          name = "stretch out your neck",
          length = 256+64,
          cues = {
            {name = "speak",x = 0,cueId = "BlueBirdsStretch"},
            {name = "speak",x = 48,cueId = "BlueBirdsOut"},
            {name = "speak",x = 96,cueId = "BlueBirdsYour2"},
            {name = "speak",x = 128,cueId = "BlueBirdsNeck"}
          },
          hits = {
            {name = "stretch1",x = 3*64,cueId = "BlueBirdsStretchPlayer1",input = "pressA"},
            {name = "stretch2",x = 4*64,cueId = "BlueBirdsStretchPlayer2",input = "releaseA"},
          }
        },
      }
    },
    [4] = {
      name = "Fork lifter",
      img = love.graphics.newImage("/resources/gfx/editor/icons/forklifter.png"),
      blocks = {
        {
          name = "orange",
          length = 128+32,
          cues = {
            {name = "flick",x = 0,cueId = "ForkLifterFlick" },
            {name = "zoom",x = 128-32,cueId = "ForkLifterZoom",pitchToBpm = true}
          },
          hits = {{name = "stab",x = 128,cueId = "ForkLifterStab",input = "pressA"}}
        },
        {
          name = "eat",
          length = 64,
          cues = {
            {name = "eatS",x = 0,cueId = "silence",},
            {name = "eat",x = 32,cueId = "ForkLifterEat"},
          },
        },
      }
    },
    [5] = {
      name = "Clappy Trio (WII)",
      img = love.graphics.newImage("/resources/gfx/editor/icons/clappytrio.png"),
      blocks = {
        {
          name = "prepare",
          length = 32,
          cues = {
            {name = "prepare",x = 0,cueId = "ClappyTrioPrep"},
          }
        },
        {
          name = "clap",
          length = 32,
          cues = {
            {name = "clap",x = 0,cueId = "ClappyTrioClap"},
          }
        },
        {
          name = "clap player",
          length = 32,
          hits = {
            {name = "clapp",x = 0,cueId = "ClappyTrioClap",input = "pressA"},
          }
        },
      }
    },
    [6] = {
      name = "Lock step",
      img = love.graphics.newImage("/resources/gfx/editor/icons/lockstep.png"),
      blocks = {
        {
          name = "march on",
          length = 256,
          hits = {
            {name = "step on",x = 0,cueId = "LockStepOn",input = "pressA"},
            {name = "step on",x = 64,cueId = "LockStepOn",input = "pressA"},
            {name = "step on",x = 128,cueId = "LockStepOn",input = "pressA"},
            {name = "step on",x = 126+64,cueId = "LockStepOn",input = "pressA"},
          }
        },
        {
          name = "step on",
          length = 64,
          hits = {
            {name = "step on",x = 0,cueId = "LockStepOn",input = "pressA"}
          }
        },
        {
          name = "march off",
          length = 256,
          hits = {
            {name = "step off",x = 32,cueId = "LockStepOff",input = "pressA"},
            {name = "step off",x = 32+64,cueId = "LockStepOff",input = "pressA"},
            {name = "step off",x = 32+128,cueId = "LockStepOff",input = "pressA"},
            {name = "step off",x = 32+126+64,cueId = "LockStepOff",input = "pressA"},
          }
        },
        {
          name = "step off",
          length = 64,
          hits = {
            {name = "step off",x = 32,cueId = "LockStepOff",input = "pressA"},
          }
        },
        {
          name = "on to off",
          length = 256+128,
          cues = {
            {name = "hai",x = 0,cueId = "LockStepHai"},
            {name = "hai",x = 64,cueId = "LockStepHai"},
            {name = "hai",x = 128,cueId = "LockStepHai"},
            {name = "switch",x = 128+64,cueId = "LockStepHa"},
            {name = " ",x = 128+96,cueId = "LockStepHaiOff"},
            {name = "ouf",x = 128+96+64,cueId = "LockStepOuf"},
            {name = "ouf",x = 128+96+128,cueId = "LockStepOuf"},
          }
        },
        {
          name = "off to on",
          length = 128+32,
          cues = {
            {name = "hm",x = 0,cueId = "LockStepHm"},
            {name = "ha",x = 32,cueId = "LockStepHaOff"},
            {name = "hm",x = 64,cueId = "LockStepHm"},
            {name = "ha",x = 96,cueId = "LockStepHaOff"},
            {name = "switch",x = 128,cueId = "LockStepHai"},
          }
        },
        {
          name = "hai",
          length = 64,
          cues = {
            {name = "hai",x = 0,cueId = "LockStepHai"},
          }
        },
        {
          name = "set zoom 2",
          length = 64,
          cues = {
            {name = "zoom2",x = 0,cueId = "silence"},
          }
        },
        {
          name = "add 1 zoom",
          length = 64,
          cues = {
            {name = "zoom+",x = 0,cueId = "silence"},
          }
        },
        {
          name = "sub 1 zoom",
          length = 64,
          cues = {
            {name = "zoom-",x = 0,cueId = "silence"},
          }
        },
      },
    },
    [7] = {
      name = "screw bots",
      img = love.graphics.newImage("/resources/gfx/editor/icons/screwbot.png"),
      blocks = {
        {
          name = "black bot",
          length = 256*2,
          cues = {
            {name = "cBlack1",x = 0,cueId = "ScrewBotsCrane1"},
            {name = "cBlack2",x = 32,cueId = "ScrewBotsCrane2"},
            {name = "dBlack",x = 128,cueId = "ScrewBotsBlackDrop"},
          },
          hits = {
            {name = "sBlack",x = 128+64,cueId = "ScrewBotsBlackScrew",input = "pressAB",pitchToBpm = true},
            {name = "compBlack",x = 256+64,cueId = "ScrewBotsComplete",input = "releaseAB"},
          }
        },
        {
          name = "white bot",
          length = 256*2-64,
          cues = {
            {name = "cWhite1",x = 0,cueId = "ScrewBotsCrane1"},
            {name = "cWhite2",x = 32,cueId = "ScrewBotsCrane2"},
            {name = "",x = 0,cueId = "ScrewBotsCraneWhite"},
            {name = "",x = 32,cueId = "ScrewBotsCraneWhite"},
            {name = "dWhite",x = 128,cueId = "ScrewBotsWhiteDrop"},
          },
          hits = {
            {name = "sWhite",x = 128+64,cueId = "ScrewBotsWhiteScrew",input = "pressAB",pitchToBpm = true},
            {name = "compWhite",x = 256,cueId = "ScrewBotsComplete",input = "releaseAB"},
          }
        },
      },
    },
    [8] = {
      name = "moai doo-wop",
      blocks = {
        {
          name = "left doo",
          length = 64,
          resizable = true,
          cues = {
            {name = "dooLStart",x = 0,cueId = "MoaiDooLStart"},
            {name = "dooL",x = 0,cueId = "MoaiDooL",loop = true},
          }
        },
        {
          name = "left wop",
          length = 32,
          resizable = true,
          cues = {
            {name = "wopL",x = 0,cueId = "MoaiWopL"},
          }
        },
        {
          name = "left pah",
          length = 32,
          resizable = true,
          cues = {
            {name = "pahL",x = 0,cueId = "MoaiPahL"},
          }
        },
        {
          name = "switch",
          length = 64,
          resizable = true,
          cues = {
            {name = "switch",x = 0,cueId = "MoaiSwitch"},
          }
        },
        {
          name = "right doo",
          length = 64,
          resizable = true,
          cues = {
            {name = "dooR",x = 0,cueId = "MoaiDooR",loop = true,silent = true},
          },
          hits = {
            {name = "dooRStart",x = 0,cueId = "MoaiDooRStart",input = "pressA",silent = true},
          }
        },
        {
          name = "right wop",
          length = 32,
          resizable = true,
          hits = {
            {name = "wopR",x = 0,cueId = "MoaiWopR",input = "releaseA",silent = true},
          }
        },
        {
          name = "right pah",
          length = 32,
          resizable = true,
          hits = {
            {name = "pahR",x = 0,cueId = "MoaiPahR",input = "pressB",silent = true},
          }
        },
      }
    }
  }
  
  for _,i in pairs(minigames) do
    print(i.name)
    for _,j in pairs(i.blocks) do
      if j.cues then
        for _,h in pairs(j.cues) do
          if not h.sound then
            h.sound = cue[h.cueId]
          end
        end
      end
      if j.hits then
        for _,h in pairs(j.hits) do
          if not h.sound then
            h.sound = cue[h.cueId]
          end
        end
      end
    end
  end
  
  minigame = 0
  screen = "menu"
  loadMenu()
  
  local w,h = love.graphics.getDimensions()
  view = {
    canvas = love.graphics.newCanvas(w,h),
    width = 1920/2,
    height = 1080/2
  }
  
  loadEditor()
  
  mouse = {
    button = {
      pressed = {},
      released = {}
    }
  }
end

function initializeData()
  data = {
    bpm = 119,
    music = newSource("/resources/music/karate man (GBA).ogg"),
    blocks = {},
    tempoChanges = {},
    version = version,
    options = {
      name = "REMIX",
      header = "Rhythm League Notes",
      rating = {
        ["tryAgain"] = "That...could have been better.",
        ["ok"] = "Eh. Good enough.",
        ["superb"] = "That was great! Really great!",
      },
      okRating = 3,
      tryAgainRating = 10,
      endFadeOutTime = 100,
      minigameFadeTime = 7,
      karateka = {
        flow = true,
        persistent = true,
        startFlow = 0
      },
      lockStep = {
        colors = {
          ["bg"] = "f83888",
          ["marcher0"] = "982860",
          ["marcher1"] = "707070",
          ["marcher2"] = "f8d8e8"
        },
        paletteSwap = "yes"
      },
      clappyTrio = {
        headBeat = false,
      }
    }
  }
  data.music:setVolume(0.25)
end

function love.mousepressed(x,y,btn)
  mouse.button.pressed[btn] = true
end
function love.mousereleased(x,y,btn)
  mouse.button.released[btn] = true
end

function love.filedropped(file)
  if screen == "editor" then
  local filename = file:getFilename()
    if string.lower(string.sub(filename,filename:len()-3)) == ".ogg" or string.lower(string.sub(filename,filename:len()-3)) == ".wav" or string.lower(string.sub(filename,filename:len()-3)) == ".mp3" then
      data.music = love.audio.newSource(file)
      data.music:setVolume(0.25)
    elseif string.lower(string.sub(filename,filename:len()-4)) == ".rhrm" then
      --load data
      if file:open("r") then
        --READ DATA
        local d = file:read()
        print(d)
        data = json.decode(d)
        for _,i in pairs(data.blocks) do
          if i.cues then
            for _,j in pairs(i.cues) do
              j.sound = cue[j.cueId]
            end
          end
          if i.hits then
            for _,j in pairs(i.hits) do
              j.sound = cue[j.cueId]
            end
          end
        end
      end
    elseif string.lower(string.sub(filename,filename:len()-3)) == ".zip" then
      if file:open("r") then
        local d = file:read()
      end
    end
  elseif screen == "menu" then
    filedroppedMenu(file)
  end
end

function love.update(dt)
  if screen == "menu" then
    updateMenu(dt)
  elseif screen == "editor" then
    updateEditor(dt)
  elseif screen == "game" then
    updateGameInputs(dt)
  elseif screen == "save" then
    updateSavescreen(dt)
  elseif screen == "remixOptions" then
    updateRemixOptions(dt)
  end
  
  mouse.button.pressed[1] = false
  mouse.button.released[1] = false
  mouse.button.pressed[2] = false
  mouse.button.released[2] = false
  mouse.button.pressed[3] = false
  mouse.button.released[3] = false

end

function love.draw()
  --set canvas
  love.graphics.setCanvas(view.canvas)
  --love.graphics.clear()
  --draw the stuff
  love.graphics.setFont(font)
  if screen == "menu" then
    drawMenu()
  elseif screen == "editor" then
    drawEditor()
  elseif screen == "game" then
    drawGameInputs()
  elseif screen == "save" then
    drawSavescreen()
  elseif screen == "remixOptions" then
    drawRemixOptions()
  end
  --draw the canvas
  love.graphics.reset()
  love.graphics.setDefaultFilter("nearest","nearest")
  
  local w,h = love.graphics.getDimensions()
  love.graphics.draw(view.canvas,0,0,0,w/view.width,h/view.height)
end

function hex2rgb(hex,returnTable)
    local returnTable = returnTable
    hex = hex:gsub("#","")
    
    if returnTable then
      return {tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)), 255}
    else
      return tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6))
    end
end

function setColorHex(hex,alpha)
  local r,g,b = hex2rgb(hex)
  love.graphics.setColor(r,g,b,alpha or 255)
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function pointTowards(x1,y1,x2,y2)
  return math.atan2((y2 - y1), (x2 - x1))
end

function tableEmpty(t)
  for _,i in pairs(t) do
    return false
  end
  return true
end

function tableFirstEntry(t)
  for _,i in pairs(t) do
    return i
  end
end


function tableLength(t)
  local n = 0
  for _,i in pairs(t) do
    n = n+1
  end
  return n
end

function distance( x1, y1, x2, y2 )
  local dx = x1 - x2
  local dy = y1 - y2
  return math.sqrt ( dx * dx + dy * dy )
end

function loadLuaFile(name)
  local ok, chunk, result
  ok, chunk = pcall( love.filesystem.load, name ) -- load the chunk safely
  if not ok then
    print('The following error happend: ' .. tostring(chunk))
  else
    ok, result = pcall(chunk) -- execute the chunk safely
   
    if not ok then -- will be false if there is an error
      print('The following error happened: ' .. tostring(result))
    else
      print('The result of loading is: ' .. tostring(result))
    end
  end
  return result
end

sourceFilenames = {}
--source
function newSource(filename)
  local s = love.audio.newSource(filename)
  --print(s)
  sourceFilenames[tostring(s)] = filename
  --print(sourceFilenames[tostring(s)])
  return s
end

function cycleTable(t)
  local t = t
  local entry = tableFirstEntry(t)
  print(entry)
  table.insert(t,entry)
  for k,i in pairs(t) do
    if k > 1 then
      t[k] = t[k-1]
      print(i.." from "..k.." to "..k-1)
    end
    if k == tableLength(t)-1 then
      table.remove(t,k)
      print(i.." was removed")
    end
  end
  return t
end

function printNew(str,x,y,r,sx,sy,ox,oy,kx,ky)
  local fnt = love.graphics.getFont()
  local y = y or 0
  love.graphics.print(str,x,y-(fnt:getHeight()/2),r,sx,sy,ox,oy,kx,ky)
end