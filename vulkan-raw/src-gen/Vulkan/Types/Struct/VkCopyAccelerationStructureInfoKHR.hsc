{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkCopyAccelerationStructureInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCopyAccelerationStructureInfoKHR" #-} VkCopyAccelerationStructureInfoKHR =
       VkCopyAccelerationStructureInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , src :: VkAccelerationStructureKHR
         , dst :: VkAccelerationStructureKHR
         , mode :: VkCopyAccelerationStructureModeKHR
         }

instance Storable VkCopyAccelerationStructureInfoKHR where
  sizeOf    _ = #{size      struct VkCopyAccelerationStructureInfoKHR}
  alignment _ = #{alignment struct VkCopyAccelerationStructureInfoKHR}

  peek ptr = 
    VkCopyAccelerationStructureInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"src" ptr)
       <*> peek (offset @"dst" ptr)
       <*> peek (offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"src" ptr val
    pokeField @"dst" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureInfoKHR, sType}

instance Offset "pNext" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureInfoKHR, pNext}

instance Offset "src" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureInfoKHR, src}

instance Offset "dst" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureInfoKHR, dst}

instance Offset "mode" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureInfoKHR, mode}

#else

module Vulkan.Types.Struct.VkCopyAccelerationStructureInfoKHR where

#endif