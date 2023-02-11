{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSemaphoreCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSemaphoreCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreCreateInfo" #-} VkSemaphoreCreateInfo =
       VkSemaphoreCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkSemaphoreCreateFlags -- ^ Semaphore creation flags
         }

instance Storable VkSemaphoreCreateInfo where
  sizeOf    _ = #{size      struct VkSemaphoreCreateInfo}
  alignment _ = #{alignment struct VkSemaphoreCreateInfo}

  peek ptr = 
    VkSemaphoreCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkSemaphoreCreateInfo where
  rawOffset = #{offset struct VkSemaphoreCreateInfo, sType}

instance Offset "pNext" VkSemaphoreCreateInfo where
  rawOffset = #{offset struct VkSemaphoreCreateInfo, pNext}

instance Offset "flags" VkSemaphoreCreateInfo where
  rawOffset = #{offset struct VkSemaphoreCreateInfo, flags}