<?php

declare(strict_types=1);

const FRUIT = 'fruit';
const POSITION = 'position';

/**
 * @param int $id
 *
 * @return string
 */
function getFruitsById(int $id): string
{
	$searchResult = [];
	$result       = [];
	$file = fopen('Список.csv' , 'r');
	while (false !== ($content = fgetcsv($file, 50, ','))) {
		$parentId  = (int) $content[1];
		$defaultId = (int) $content[0];
		$status    = (int) $content[4];
		if ($parentId === $id || $defaultId === $id && 1 === $status) {
			$searchResult[]= [POSITION => $content[3], FRUIT => $content[2]];
		}
	}
	fclose($file);

	asort($searchResult);

	foreach ($searchResult as $item) {
		$result[]= $item[FRUIT];
	}

	return implode(', ', $result);
}

echo getFruitsById(1) . PHP_EOL;