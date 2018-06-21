-- *!***************************************************************************
-- *! Copyright 2014-2018 International Business Machines
-- *!
-- *! Licensed under the Apache License, Version 2.0 (the "License");
-- *! you may not use this file except in compliance with the License.
-- *! You may obtain a copy of the License at
-- *!
-- *!     http://www.apache.org/licenses/LICENSE-2.0
-- *!
-- *! Unless required by applicable law or agreed to in writing, software
-- *! distributed under the License is distributed on an "AS IS" BASIS,
-- *! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- *! See the License for the specific language governing permissions and
-- *! limitations under the License.
-- *!
-- *!***************************************************************************

library ieee;
use ieee.std_logic_1164.all;

ENTITY capi_gpio1 IS
  PORT(pin: inout std_logic;
       id: out std_logic;
       od: in std_logic;
       oe: in std_logic);   -- 0: output 1: input

END capi_gpio1;

ARCHITECTURE capi_gpio1 OF capi_gpio1 IS

Component capi_gpio
  PORT(dataio: inout std_logic;
       dataout: out std_logic;
       datain: in std_logic;
       oe: in  std_logic );
End Component capi_gpio;

begin

io_0: capi_gpio PORT MAP ( dataio=>pin, dataout=>id, datain=>od, oe=>oe );

END capi_gpio1;
