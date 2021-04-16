-- Helper Module 1.0 for UnityScript
-- Author of code: k0t0ff
-- Very simplified lua module for creating simple or high-level unity apps and games
-- Link for upd-checking: https://github.com/kotoff-studio/unityhelper

local unity = require 'ms32\\lib\\unity.lib'
local unityweb = require 'ms32\\web\\unityweb.rte'
local unityapi32 = require 'unity\\x86\\x86_api.lib'
local unityqword = require 'unity\\x64\\qword_mgmt.lib'
 
local hook = 1
local qwordPattern = false

function msgbox(uwnd, utext, ucaption, utype)
	unityapi32.messageBoxTrue(uwnd, utext, ucaption, utype)
end

function hookManagement()
	if hook < 1 then
		console.cout[1] = print("[ERROR] Hooks are not initialized and cannot run under your DbgCmd!")
	elseif hook == 1 then
		console.cout[2] = print("[SUCCESS] Hooks are initialized and ready to use!")
	end
end

function patternQWORD()
	local uwnd_target = nil
	local utype_target = nil
	local qwordPattern = true
	if qwordPattern == false then
		msgbox(uwnd_target, "Error!", "Error", ERROR)
	else
		msgbox(uwnd_target, "Success!", "Info", POINT)
	end
end

console = {
	cout = {} -- Outputs the specified message into the debug console(dbgcmd, dbgps - powershelldbg)
}

unity = {
	renderWindow = (), -- Render specified window
	installWndHook = (), -- Installs hardware WindowProc hooks
	createWndThread = (), -- Creating a Window Thread
	suspendWndThread = (), -- Suspending a Window Thread
	removeWndThread = (), -- Removing a Window Thread
	object3D = (), -- Creating an Unity 3D Object
	object2D = (), -- Creating an Unity 2D Object
	colInfo = () -- Creating an Unity Collision Info Class
}

window = {
	getTargetInfo = (),
	setTargetInfo = ()
}

local function window.getTargetInfo(targetWnd, wndName, targetProcessID)
	unity.renderWindow(nil, nil, nil, nil, nil, nil)

function unity.renderWindow(thread, targetProcessID, wndWidth, wndHeight, wndName, wndDestroyTime)
	unityapi32.drawWnd(thread, targetProcID, wndWidth, wndHeight, wndName, wndDestroyTime) -- Calling global lua function from unityapi32
end

function installModule()
	local thread = unityapi32.getThread("Local")
	local targetProcID = nil
	unity.renderWindow(thread, targetProcID, 500, 500, "Unity Helper", nil)
	msgbox(nil, "initialized module!", "information", POINT)
end


