using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;

public class Enemy : MonoBehaviour
{
    [SerializeField, Tooltip("Ref to the target this enemy follows")]
    private Transform target;
    [SerializeField, Tooltip("Ref to this enemy's nav mesh sgent component")]
    private NavMeshAgent navAgent;

    private void Awake()
    {
        // Initialize the navv mesh agent variable
        navAgent = GetComponent<NavMeshAgent>();
    }

    private void FixedUpdate()
    {
        // Srt the destination of the agent to the target's [ps]
        if (target != null) navAgent.SetDestination(target.position);
    }

    private void OnCollisionEnter(Collision collision)
    {
        //Check if the enemy hit the player by trying to find the player component
        PlayerController player = collision.gameObject.GetComponent<PlayerController>();

        if (player != null) // The enemy hit the player
        {
            // Destroy the player
            Destroy(collision.gameObject);
        }
    }
}
