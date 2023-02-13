{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_win32

module Vulkan.Types.Struct.VkFenceGetWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkFenceGetWin32HandleInfoKHR" #-} VkFenceGetWin32HandleInfoKHR =
       VkFenceGetWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fence :: VkFence
         , handleType :: VkExternalFenceHandleTypeFlagBits
         }

instance Storable VkFenceGetWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkFenceGetWin32HandleInfoKHR}
  alignment _ = #{alignment VkFenceGetWin32HandleInfoKHR}

  peek ptr = 
    VkFenceGetWin32HandleInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fence" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fence" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkFenceGetWin32HandleInfoKHR where
  rawOffset = #{offset VkFenceGetWin32HandleInfoKHR, sType}

instance Offset "pNext" VkFenceGetWin32HandleInfoKHR where
  rawOffset = #{offset VkFenceGetWin32HandleInfoKHR, pNext}

instance Offset "fence" VkFenceGetWin32HandleInfoKHR where
  rawOffset = #{offset VkFenceGetWin32HandleInfoKHR, fence}

instance Offset "handleType" VkFenceGetWin32HandleInfoKHR where
  rawOffset = #{offset VkFenceGetWin32HandleInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkFenceGetWin32HandleInfoKHR where

#endif