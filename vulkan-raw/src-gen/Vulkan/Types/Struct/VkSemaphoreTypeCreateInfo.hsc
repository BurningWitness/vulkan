{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSemaphoreTypeCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSemaphoreType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSemaphoreTypeCreateInfo" #-} VkSemaphoreTypeCreateInfo =
       VkSemaphoreTypeCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphoreType :: VkSemaphoreType
         , initialValue :: #{type uint64_t}
         }

instance Storable VkSemaphoreTypeCreateInfo where
  sizeOf    _ = #{size      struct VkSemaphoreTypeCreateInfo}
  alignment _ = #{alignment struct VkSemaphoreTypeCreateInfo}

  peek ptr = 
    VkSemaphoreTypeCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphoreType" ptr)
       <*> peek (offset @"initialValue" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphoreType" ptr val
    pokeField @"initialValue" ptr val

instance Offset "sType" VkSemaphoreTypeCreateInfo where
  rawOffset = #{offset struct VkSemaphoreTypeCreateInfo, sType}

instance Offset "pNext" VkSemaphoreTypeCreateInfo where
  rawOffset = #{offset struct VkSemaphoreTypeCreateInfo, pNext}

instance Offset "semaphoreType" VkSemaphoreTypeCreateInfo where
  rawOffset = #{offset struct VkSemaphoreTypeCreateInfo, semaphoreType}

instance Offset "initialValue" VkSemaphoreTypeCreateInfo where
  rawOffset = #{offset struct VkSemaphoreTypeCreateInfo, initialValue}

#else

module Vulkan.Types.Struct.VkSemaphoreTypeCreateInfo where

#endif