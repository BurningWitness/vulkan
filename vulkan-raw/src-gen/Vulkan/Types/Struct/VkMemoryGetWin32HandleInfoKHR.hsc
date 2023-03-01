{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Types.Struct.VkMemoryGetWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryGetWin32HandleInfoKHR" #-} VkMemoryGetWin32HandleInfoKHR =
       VkMemoryGetWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkMemoryGetWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkMemoryGetWin32HandleInfoKHR}
  alignment _ = #{alignment VkMemoryGetWin32HandleInfoKHR}

  peek ptr = 
    VkMemoryGetWin32HandleInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkMemoryGetWin32HandleInfoKHR where
  rawOffset = #{offset VkMemoryGetWin32HandleInfoKHR, sType}

instance Offset "pNext" VkMemoryGetWin32HandleInfoKHR where
  rawOffset = #{offset VkMemoryGetWin32HandleInfoKHR, pNext}

instance Offset "memory" VkMemoryGetWin32HandleInfoKHR where
  rawOffset = #{offset VkMemoryGetWin32HandleInfoKHR, memory}

instance Offset "handleType" VkMemoryGetWin32HandleInfoKHR where
  rawOffset = #{offset VkMemoryGetWin32HandleInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkMemoryGetWin32HandleInfoKHR where

#endif