#!/bin/bash
#   Copyright (c) 2016 Naitali Brandon
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
MSG="Vous devez fermer vos streams! "
grep -c 'close' $1 
OUTPUT=$?
if [ OUTPUT = 0 ]
then
	feedback --feedback "$MSG"
	echo 1
else
	echo 0
fi