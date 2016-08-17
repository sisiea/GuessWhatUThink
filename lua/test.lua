-- local str = ""
-- local file = io.open("test2.txt" ,"r")  
-- local file2 = io.open("test3.txt" ,"w")  

-- for line in file:lines() do
-- 	str = str.."'"..line.."',"
-- end
-- print(str)
-- str1 = string.sub(str,0,string.len(str)-1)
-- file2:write(str1)
-- file2:close()
-- file:close()  

local jfile = io.open("json.txt" ,"r")  
local jfile2 = io.open("jsonR.txt" ,"w")  

local jsStr = jfile:read("*all");
local jsStr2 =string.gsub(jsStr,"chsname:%S+,","chsname:,")
jfile2:write(jsStr2)
jfile2:close()
jfile:close()  
