{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructureFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceAccelerationStructureFeaturesKHR" #-} VkPhysicalDeviceAccelerationStructureFeaturesKHR =
       VkPhysicalDeviceAccelerationStructureFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , accelerationStructure :: VkBool32
         , accelerationStructureCaptureReplay :: VkBool32
         , accelerationStructureIndirectBuild :: VkBool32
         , accelerationStructureHostCommands :: VkBool32
         , descriptorBindingAccelerationStructureUpdateAfterBind :: VkBool32
         }

instance Storable VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceAccelerationStructureFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceAccelerationStructureFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceAccelerationStructureFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"accelerationStructure" ptr)
       <*> peek (offset @"accelerationStructureCaptureReplay" ptr)
       <*> peek (offset @"accelerationStructureIndirectBuild" ptr)
       <*> peek (offset @"accelerationStructureHostCommands" ptr)
       <*> peek (offset @"descriptorBindingAccelerationStructureUpdateAfterBind" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"accelerationStructure" ptr val
    pokeField @"accelerationStructureCaptureReplay" ptr val
    pokeField @"accelerationStructureIndirectBuild" ptr val
    pokeField @"accelerationStructureHostCommands" ptr val
    pokeField @"descriptorBindingAccelerationStructureUpdateAfterBind" ptr val

instance Offset "sType" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, pNext}

instance Offset "accelerationStructure" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, accelerationStructure}

instance Offset "accelerationStructureCaptureReplay" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, accelerationStructureCaptureReplay}

instance Offset "accelerationStructureIndirectBuild" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, accelerationStructureIndirectBuild}

instance Offset "accelerationStructureHostCommands" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, accelerationStructureHostCommands}

instance Offset "descriptorBindingAccelerationStructureUpdateAfterBind" VkPhysicalDeviceAccelerationStructureFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceAccelerationStructureFeaturesKHR, descriptorBindingAccelerationStructureUpdateAfterBind}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceAccelerationStructureFeaturesKHR where

#endif