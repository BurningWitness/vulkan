{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Types.Struct.VkMemoryWin32HandlePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryWin32HandlePropertiesKHR" #-} VkMemoryWin32HandlePropertiesKHR =
       VkMemoryWin32HandlePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryTypeBits :: #{type uint32_t}
         }

instance Storable VkMemoryWin32HandlePropertiesKHR where
  sizeOf    _ = #{size      VkMemoryWin32HandlePropertiesKHR}
  alignment _ = #{alignment VkMemoryWin32HandlePropertiesKHR}

  peek ptr = 
    VkMemoryWin32HandlePropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memoryTypeBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryTypeBits" ptr val

instance Offset "sType" VkMemoryWin32HandlePropertiesKHR where
  rawOffset = #{offset VkMemoryWin32HandlePropertiesKHR, sType}

instance Offset "pNext" VkMemoryWin32HandlePropertiesKHR where
  rawOffset = #{offset VkMemoryWin32HandlePropertiesKHR, pNext}

instance Offset "memoryTypeBits" VkMemoryWin32HandlePropertiesKHR where
  rawOffset = #{offset VkMemoryWin32HandlePropertiesKHR, memoryTypeBits}

#else

module Vulkan.Types.Struct.VkMemoryWin32HandlePropertiesKHR where

#endif