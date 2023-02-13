{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSemaphoreSignalInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreSignalInfo" #-} VkSemaphoreSignalInfo =
       VkSemaphoreSignalInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , value :: #{type uint64_t}
         }

instance Storable VkSemaphoreSignalInfo where
  sizeOf    _ = #{size      VkSemaphoreSignalInfo}
  alignment _ = #{alignment VkSemaphoreSignalInfo}

  peek ptr = 
    VkSemaphoreSignalInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"value" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"value" ptr val

instance Offset "sType" VkSemaphoreSignalInfo where
  rawOffset = #{offset VkSemaphoreSignalInfo, sType}

instance Offset "pNext" VkSemaphoreSignalInfo where
  rawOffset = #{offset VkSemaphoreSignalInfo, pNext}

instance Offset "semaphore" VkSemaphoreSignalInfo where
  rawOffset = #{offset VkSemaphoreSignalInfo, semaphore}

instance Offset "value" VkSemaphoreSignalInfo where
  rawOffset = #{offset VkSemaphoreSignalInfo, value}

#else

module Vulkan.Types.Struct.VkSemaphoreSignalInfo where

#endif