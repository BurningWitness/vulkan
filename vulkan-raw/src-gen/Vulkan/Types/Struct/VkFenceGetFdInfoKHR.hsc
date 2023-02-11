{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_fd

module Vulkan.Types.Struct.VkFenceGetFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkFenceGetFdInfoKHR" #-} VkFenceGetFdInfoKHR =
       VkFenceGetFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fence :: VkFence
         , handleType :: VkExternalFenceHandleTypeFlagBits
         }

instance Storable VkFenceGetFdInfoKHR where
  sizeOf    _ = #{size      struct VkFenceGetFdInfoKHR}
  alignment _ = #{alignment struct VkFenceGetFdInfoKHR}

  peek ptr = 
    VkFenceGetFdInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fence" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fence" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkFenceGetFdInfoKHR where
  rawOffset = #{offset struct VkFenceGetFdInfoKHR, sType}

instance Offset "pNext" VkFenceGetFdInfoKHR where
  rawOffset = #{offset struct VkFenceGetFdInfoKHR, pNext}

instance Offset "fence" VkFenceGetFdInfoKHR where
  rawOffset = #{offset struct VkFenceGetFdInfoKHR, fence}

instance Offset "handleType" VkFenceGetFdInfoKHR where
  rawOffset = #{offset struct VkFenceGetFdInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkFenceGetFdInfoKHR where

#endif