{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceDriverProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDriverId
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkConformanceVersion



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDriverProperties" #-} VkPhysicalDeviceDriverProperties =
       VkPhysicalDeviceDriverProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , driverID :: VkDriverId
         , driverName :: #{type char}
         , driverInfo :: #{type char}
         , conformanceVersion :: VkConformanceVersion
         }

instance Storable VkPhysicalDeviceDriverProperties where
  sizeOf    _ = #{size      VkPhysicalDeviceDriverProperties}
  alignment _ = #{alignment VkPhysicalDeviceDriverProperties}

  peek ptr = 
    VkPhysicalDeviceDriverProperties
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

instance Offset "sType" VkPhysicalDeviceDriverProperties where
  rawOffset = #{offset VkPhysicalDeviceDriverProperties, sType}

instance Offset "pNext" VkPhysicalDeviceDriverProperties where
  rawOffset = #{offset VkPhysicalDeviceDriverProperties, pNext}

instance Offset "driverID" VkPhysicalDeviceDriverProperties where
  rawOffset = #{offset VkPhysicalDeviceDriverProperties, driverID}

instance Offset "driverName" VkPhysicalDeviceDriverProperties where
  rawOffset = #{offset VkPhysicalDeviceDriverProperties, driverName}

instance Offset "driverInfo" VkPhysicalDeviceDriverProperties where
  rawOffset = #{offset VkPhysicalDeviceDriverProperties, driverInfo}

instance Offset "conformanceVersion" VkPhysicalDeviceDriverProperties where
  rawOffset = #{offset VkPhysicalDeviceDriverProperties, conformanceVersion}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDriverProperties where

#endif