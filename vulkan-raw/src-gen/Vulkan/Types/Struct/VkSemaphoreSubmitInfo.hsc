{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkSemaphoreSubmitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreSubmitInfo" #-} VkSemaphoreSubmitInfo =
       VkSemaphoreSubmitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , value :: #{type uint64_t}
         , stageMask :: VkPipelineStageFlags2
         , deviceIndex :: #{type uint32_t}
         }

instance Storable VkSemaphoreSubmitInfo where
  sizeOf    _ = #{size      VkSemaphoreSubmitInfo}
  alignment _ = #{alignment VkSemaphoreSubmitInfo}

  peek ptr = 
    VkSemaphoreSubmitInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"value" ptr)
       <*> peek (offset @"stageMask" ptr)
       <*> peek (offset @"deviceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"value" ptr val
    pokeField @"stageMask" ptr val
    pokeField @"deviceIndex" ptr val

instance Offset "sType" VkSemaphoreSubmitInfo where
  rawOffset = #{offset VkSemaphoreSubmitInfo, sType}

instance Offset "pNext" VkSemaphoreSubmitInfo where
  rawOffset = #{offset VkSemaphoreSubmitInfo, pNext}

instance Offset "semaphore" VkSemaphoreSubmitInfo where
  rawOffset = #{offset VkSemaphoreSubmitInfo, semaphore}

instance Offset "value" VkSemaphoreSubmitInfo where
  rawOffset = #{offset VkSemaphoreSubmitInfo, value}

instance Offset "stageMask" VkSemaphoreSubmitInfo where
  rawOffset = #{offset VkSemaphoreSubmitInfo, stageMask}

instance Offset "deviceIndex" VkSemaphoreSubmitInfo where
  rawOffset = #{offset VkSemaphoreSubmitInfo, deviceIndex}

#else

module Vulkan.Types.Struct.VkSemaphoreSubmitInfo where

#endif