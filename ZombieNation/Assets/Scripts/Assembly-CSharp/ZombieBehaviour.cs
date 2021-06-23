using UnityEngine;
using UnityEngine.AI;

public class ZombieBehaviour : MonoBehaviour
{
	public NavMeshAgent agent;
	[SerializeField]
	private float attackTime;
	public bool canAttack;
	public bool isDead;
	public AudioClip[] ZombieSounds;
	public int rayMax;
	public int pickedSound;
	public AudioSource source;
}
