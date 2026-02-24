using UnityEngine;

public class Pickup : MonoBehaviour
{
    // Behavior 1: Destroy this object when touched by the player
    // Behavior 2: Continously Rotate

    [SerializeField, Tooltip("Controls the rotation speed of this pickup.")]
    private float rotateSpeed = 10f;

    // This function is called when a collider hits this pickup only when its own collider is marked as a trigger
    private void OnTriggerEnter(Collider other)
    {
        // Check if we hit the player
        PlayerController controller = other.GetComponent<PlayerController>();

        // Try to store the player's player controller component 
        if (controller != null) // We have hit the player
        {
            //Destroy this pickup
            Destroy(gameObject);
        


        }
    }

    private void Update()
    {
        // make the pickup rotate 15 degreeson the x, 45 on the y, and 60 on the z
        transform.Rotate(new Vector3(15, 45, 60) * rotateSpeed * Time.deltaTime, Space.Self);
    }
}
