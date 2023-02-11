{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_fd

module Vulkan.Types.Struct.VkImportFenceFdInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkFenceImportFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImportFenceFdInfoKHR" #-} VkImportFenceFdInfoKHR =
       VkImportFenceFdInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fence :: VkFence
         , flags :: VkFenceImportFlags
         , handleType :: VkExternalFenceHandleTypeFlagBits
         , fd :: #{type int}
         }

instance Storable VkImportFenceFdInfoKHR where
  sizeOf    _ = #{size      struct VkImportFenceFdInfoKHR}
  alignment _ = #{alignment struct VkImportFenceFdInfoKHR}

  peek ptr = 
    VkImportFenceFdInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fence" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"fd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fence" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"fd" ptr val

instance Offset "sType" VkImportFenceFdInfoKHR where
  rawOffset = #{offset struct VkImportFenceFdInfoKHR, sType}

instance Offset "pNext" VkImportFenceFdInfoKHR where
  rawOffset = #{offset struct VkImportFenceFdInfoKHR, pNext}

instance Offset "fence" VkImportFenceFdInfoKHR where
  rawOffset = #{offset struct VkImportFenceFdInfoKHR, fence}

instance Offset "flags" VkImportFenceFdInfoKHR where
  rawOffset = #{offset struct VkImportFenceFdInfoKHR, flags}

instance Offset "handleType" VkImportFenceFdInfoKHR where
  rawOffset = #{offset struct VkImportFenceFdInfoKHR, handleType}

instance Offset "fd" VkImportFenceFdInfoKHR where
  rawOffset = #{offset struct VkImportFenceFdInfoKHR, fd}

#else

module Vulkan.Types.Struct.VkImportFenceFdInfoKHR where

#endif