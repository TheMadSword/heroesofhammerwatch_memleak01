namespace MemLeak01
{
    [Hook]
  	void GameModeUpdate(Campaign@ campaign, int dt, GameInput& gameInput, MenuInput& menuInput)
    {
        //Takes memory too fast so GC can't collect ? //hypothesis
        //Interestingly, calling without setting in a variable doesn't trigger the memory leak
        PlayerRecord TAKES_MEMORY = GetLocalPlayerRecord();
    }
}
