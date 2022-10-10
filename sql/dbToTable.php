<?php

function dbToTable($result){
	$cnt=0;
	try {
		$data = array();

		foreach ($result as $row) {
			$data[] = $row;
		}
		$tblheader = array_keys($data[0]);

		$table = "<tr>";
		foreach ($tblheader as $key) {
			$table = $table."\n"."\t<th>".$key."</th>";
		}
		$table = $table."\n"."</tr>";


		foreach ($data as $row) {
			$cnt=$cnt+1;
			$table = $table."\n"."<tr>";
			foreach ($tblheader as $key) {
				$table = $table."\n"."\t<td>".$row[$key]."</td>";
			}
			$table = $table."\n"."</tr>";
		}
		$table = $table."\n"."<tr>";
		$table = $table."<th>Count: </th>\n"."<th>".$cnt."</th>";
		$table = $table."\n"."</tr>";
		
		return $table;
	}catch (\Exception $e) {
		return "";
	}
}
 ?>
