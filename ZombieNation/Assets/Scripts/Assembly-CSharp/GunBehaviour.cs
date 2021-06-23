using UnityEngine;

public class GunBehaviour : MonoBehaviour
{
	public float damage;
	public float range;
	public float impactForce;
	public int maxAmmo;
	public int currentAmmo;
	public float reloadtime;
	public float fireRate;
	public bool isReloading;
	public Animator animator;
	public ParticleSystem muzzleFlash;
	public GameObject impactEffect;
	public string weaponType;
	public string sound;
	public string soundReload;
}
