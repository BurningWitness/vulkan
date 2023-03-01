{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_workgroup_memory_explicit_layout

module Vulkan.Types.Struct.VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR" #-} VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR =
       VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , workgroupMemoryExplicitLayout :: VkBool32
         , workgroupMemoryExplicitLayoutScalarBlockLayout :: VkBool32
         , workgroupMemoryExplicitLayout8BitAccess :: VkBool32
         , workgroupMemoryExplicitLayout16BitAccess :: VkBool32
         }

instance Storable VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"workgroupMemoryExplicitLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"workgroupMemoryExplicitLayoutScalarBlockLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"workgroupMemoryExplicitLayout8BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"workgroupMemoryExplicitLayout16BitAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"workgroupMemoryExplicitLayout" ptr val
    pokeField @"workgroupMemoryExplicitLayoutScalarBlockLayout" ptr val
    pokeField @"workgroupMemoryExplicitLayout8BitAccess" ptr val
    pokeField @"workgroupMemoryExplicitLayout16BitAccess" ptr val

instance Offset "sType" VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR, pNext}

instance Offset "workgroupMemoryExplicitLayout" VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR, workgroupMemoryExplicitLayout}

instance Offset "workgroupMemoryExplicitLayoutScalarBlockLayout" VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR, workgroupMemoryExplicitLayoutScalarBlockLayout}

instance Offset "workgroupMemoryExplicitLayout8BitAccess" VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR, workgroupMemoryExplicitLayout8BitAccess}

instance Offset "workgroupMemoryExplicitLayout16BitAccess" VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR, workgroupMemoryExplicitLayout16BitAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceWorkgroupMemoryExplicitLayoutFeaturesKHR where

#endif