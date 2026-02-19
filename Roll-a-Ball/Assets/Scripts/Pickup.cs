using UnityEngine;

public class Pickup : MonoBehaviour
{
    // Behavior 1: Destroy this object when touched by the player
    // Behavior 2: Continously Rotate

    [SerializedField, Tooltip("Controls the rotation speed of this pickup.")]
    private float rotateSpeed = 10f;

    // This function is called when a collider hits this pickup
    private void OnTriggerEnter(Collider other)
    {
        // Check if we hit the player
        PlayerController controller = other.GetComponent<PlayerController>();

        // Try to store the player's player controller component 
        
    }
}
