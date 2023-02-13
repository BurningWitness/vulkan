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
  sizeOf    _ = #{size      VkCopyAccelerationStructureInfoKHR}
  alignment _ = #{alignment VkCopyAccelerationStructureInfoKHR}

  peek ptr = 
    VkCopyAccelerationStructureInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"src" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dst" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"src" ptr val
    pokeField @"dst" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureInfoKHR, sType}

instance Offset "pNext" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureInfoKHR, pNext}

instance Offset "src" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureInfoKHR, src}

instance Offset "dst" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureInfoKHR, dst}

instance Offset "mode" VkCopyAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureInfoKHR, mode}

#else

module Vulkan.Types.Struct.VkCopyAccelerationStructureInfoKHR where

#endif