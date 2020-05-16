namespace MemLeak01
{
    [Hook]
  	void GameModeUpdate(Campaign@ campaign, int dt, GameInput& gameInput, MenuInput& menuInput)
      {
        //Takes memory too fast so GC can't collect ? //hypothesis
        PlayerRecord TAKES_MEMORY = GetLocalPlayerRecord();
    }
}
