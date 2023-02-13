{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_driver_properties

module Vulkan.Types.Struct.VkPhysicalDeviceDriverPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDriverId
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkConformanceVersion



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDriverPropertiesKHR" #-} VkPhysicalDeviceDriverPropertiesKHR =
       VkPhysicalDeviceDriverPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , driverID :: VkDriverId
         , driverName :: #{type char}
         , driverInfo :: #{type char}
         , conformanceVersion :: VkConformanceVersion
         }

instance Storable VkPhysicalDeviceDriverPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceDriverPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceDriverPropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceDriverPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"driverID" ptr)
       <*> peek (offset @"driverName" ptr)
       <*> peek (offset @"driverInfo" ptr)
       <*> peek (offset @"conformanceVersion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"driverID" ptr val
    pokeField @"driverName" ptr val
    pokeField @"driverInfo" ptr val
    pokeField @"conformanceVersion" ptr val

instance Offset "sType" VkPhysicalDeviceDriverPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDriverPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceDriverPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDriverPropertiesKHR, pNext}

instance Offset "driverID" VkPhysicalDeviceDriverPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDriverPropertiesKHR, driverID}

instance Offset "driverName" VkPhysicalDeviceDriverPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDriverPropertiesKHR, driverName}

instance Offset "driverInfo" VkPhysicalDeviceDriverPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDriverPropertiesKHR, driverInfo}

instance Offset "conformanceVersion" VkPhysicalDeviceDriverPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceDriverPropertiesKHR, conformanceVersion}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDriverPropertiesKHR where

#endif