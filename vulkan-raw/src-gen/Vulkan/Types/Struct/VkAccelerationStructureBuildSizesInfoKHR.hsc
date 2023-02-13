{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureBuildSizesInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureBuildSizesInfoKHR" #-} VkAccelerationStructureBuildSizesInfoKHR =
       VkAccelerationStructureBuildSizesInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructureSize :: VkDeviceSize
         , updateScratchSize :: VkDeviceSize
         , buildScratchSize :: VkDeviceSize
         }

instance Storable VkAccelerationStructureBuildSizesInfoKHR where
  sizeOf    _ = #{size      VkAccelerationStructureBuildSizesInfoKHR}
  alignment _ = #{alignment VkAccelerationStructureBuildSizesInfoKHR}

  peek ptr = 
    VkAccelerationStructureBuildSizesInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"accelerationStructureSize" ptr)
       <*> peek (offset @"updateScratchSize" ptr)
       <*> peek (offset @"buildScratchSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructureSize" ptr val
    pokeField @"updateScratchSize" ptr val
    pokeField @"buildScratchSize" ptr val

instance Offset "sType" VkAccelerationStructureBuildSizesInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildSizesInfoKHR, sType}

instance Offset "pNext" VkAccelerationStructureBuildSizesInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildSizesInfoKHR, pNext}

instance Offset "accelerationStructureSize" VkAccelerationStructureBuildSizesInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildSizesInfoKHR, accelerationStructureSize}

instance Offset "updateScratchSize" VkAccelerationStructureBuildSizesInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildSizesInfoKHR, updateScratchSize}

instance Offset "buildScratchSize" VkAccelerationStructureBuildSizesInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildSizesInfoKHR, buildScratchSize}

#else

module Vulkan.Types.Struct.VkAccelerationStructureBuildSizesInfoKHR where

#endif