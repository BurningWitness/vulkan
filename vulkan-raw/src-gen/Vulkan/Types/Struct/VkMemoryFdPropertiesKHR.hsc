{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_fd

module Vulkan.Types.Struct.VkMemoryFdPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryFdPropertiesKHR" #-} VkMemoryFdPropertiesKHR =
       VkMemoryFdPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryTypeBits :: #{type uint32_t}
         }

instance Storable VkMemoryFdPropertiesKHR where
  sizeOf    _ = #{size      struct VkMemoryFdPropertiesKHR}
  alignment _ = #{alignment struct VkMemoryFdPropertiesKHR}

  peek ptr = 
    VkMemoryFdPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "sType" VkMemoryFdPropertiesKHR where
  rawOffset = #{offset struct VkMemoryFdPropertiesKHR, sType}

instance Offset "pNext" VkMemoryFdPropertiesKHR where
  rawOffset = #{offset struct VkMemoryFdPropertiesKHR, pNext}

instance Offset "memoryTypeBits" VkMemoryFdPropertiesKHR where
  rawOffset = #{offset struct VkMemoryFdPropertiesKHR, memoryTypeBits}

#else

module Vulkan.Types.Struct.VkMemoryFdPropertiesKHR where

#endif