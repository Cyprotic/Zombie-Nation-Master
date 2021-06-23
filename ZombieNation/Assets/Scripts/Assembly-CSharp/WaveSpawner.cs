using UnityEngine;
using System;
using TMPro;

public class WaveSpawner : MonoBehaviour
{
	[Serializable]
	public class Wave
	{
		public string name;
		public Transform enemy;
		public int count;
		public float rate;
	}

	public Wave[] waves;
	public Transform[] spawnPoints;
	public TextMeshProUGUI zombieCount;
	public TextMeshProUGUI waveCount;
	public float timeBetweenWaves;
}
