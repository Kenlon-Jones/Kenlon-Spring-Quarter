using UnityEngine;
using TMPro;

public class GameManager : MonoBehaviour
{
    // reate a static viariable that stores itself
    public static GameManager Instance {get; private set;}
    [SerializeField, Tooltip("Tracker of the player's score")]
    private int playerScore = 0;
    [SerializeField, Tooltip("A ref to the score game object")]
    private TextMeshProUGUI scoreText;

    private void Awake()
    {
        // Initialize the the Singleton
        if (Instance == null) // If Instance is empty...
        {
            // ...Assign this instance of the script to the variable
            Instance = this;
        }
        else // This is already another GameManager!
        {
            // Destroy thr duplicate
            Destroy(this);
            Debug.LogWarning("Cannot have mor than one copy of GameManager! Deleting extra copy");
        }
    }

    private void Start()
    {
        // Reset the score 
        playerScore = 0;
        
    }

    public void EarnPoints(int points)
    {
        // Add points to the score
        playerScore = playerScore + points;
        // Update the score text to reflect the new score
        scoreText.text = "Score: " + playerScore.ToString();
    }
}
