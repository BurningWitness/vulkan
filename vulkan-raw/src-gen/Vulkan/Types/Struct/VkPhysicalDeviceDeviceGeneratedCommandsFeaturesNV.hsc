{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV" #-} VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV =
       VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceGeneratedCommands :: VkBool32
         }

instance Storable VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"deviceGeneratedCommands" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceGeneratedCommands" ptr val

instance Offset "sType" VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV, pNext}

instance Offset "deviceGeneratedCommands" VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV, deviceGeneratedCommands}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV where

#endif