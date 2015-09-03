//
//   Copyright 2015 Simone Baechle
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//

Assert := Object clone

Assert areEqual := method(lhObj, rhObj, 
	(
		if(lhObj type != rhObj type, (Exception raise("Not of same type!")))
		if(lhObj isNil, return nil)
		if(lhObj slotNames != rhObj slotNames, (Exception raise("Different list of slotNames")))
		lhObj slotNames foreach(s, 
			if(lhObj getSlot(s) != rhObj getSlot(s), (Exception raise("Slot {#s} differs!")))
		)
	)
)

Assert areNotEqual := method(lhObj, rhObj,
	(
		e := try(areEqual(lhObj, rhObj)) 
		e catch(Exception, return nil)
		if(e isNil, Exception raise("Objects are equal!"))
	)	
)

Assert isTrue := method(boolExpr,
	(
		isNotNull(boolExpr)
		if(boolExpr == false, (Exception raise("Failed!")))
	)
)

Assert isFalse := method(boolExpr,
	(
		isNotNull(boolExpr)
		if(boolExpr == true, (Exception raise("Failed!")))
	)
)

Assert isNull := method(obj,
	if(obj isNil == false, (Exception raise("obj is not nil!")))
)

Assert isNotNull := method(obj,
	if(obj isNil, (Exception raise("obj is nil!")))
)
