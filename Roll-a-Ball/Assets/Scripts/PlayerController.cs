using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float movementSpeed = 5f; // Variable to controll how fast the player moves
    public CharacterController controller; // Empty reference to thr CharacterController component on the player

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        controller = GetComponent<CharacterController>(); // Get the CharacterController component attactched to the player 
    }

    void FixedUpdate()
    {
        float horizontalInput = Input.GetAxis("Horizontal"); // Stores the Horizontal(Left/Right) input of the player
        float verticalInput = Input.GetAxis("Vertical"); // Stores the Vertical (Up/Down) input of the player

        Vector3 movement = new Vector3(horizontalInput, 0f, verticalInput); // Calculate the direction the player sgould move based on the input
        movement = transform.TransformDirection(movement); // Convert the direction; this means 'forward' will be = to direction the player is facing
        movement *= movementSpeed;

        controller.Move(movement * Time.deltaTime); // Move the player with the characterController component
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
