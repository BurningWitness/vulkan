{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkOpticalFlowGridSizeFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceOpticalFlowPropertiesNV" #-} VkPhysicalDeviceOpticalFlowPropertiesNV =
       VkPhysicalDeviceOpticalFlowPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportedOutputGridSizes :: VkOpticalFlowGridSizeFlagsNV
         , supportedHintGridSizes :: VkOpticalFlowGridSizeFlagsNV
         , hintSupported :: VkBool32
         , costSupported :: VkBool32
         , bidirectionalFlowSupported :: VkBool32
         , globalFlowSupported :: VkBool32
         , minWidth :: #{type uint32_t}
         , minHeight :: #{type uint32_t}
         , maxWidth :: #{type uint32_t}
         , maxHeight :: #{type uint32_t}
         , maxNumRegionsOfInterest :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceOpticalFlowPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceOpticalFlowPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceOpticalFlowPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceOpticalFlowPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedOutputGridSizes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supportedHintGridSizes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hintSupported" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"costSupported" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bidirectionalFlowSupported" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"globalFlowSupported" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minWidth" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minHeight" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxWidth" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxHeight" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxNumRegionsOfInterest" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportedOutputGridSizes" ptr val
    pokeField @"supportedHintGridSizes" ptr val
    pokeField @"hintSupported" ptr val
    pokeField @"costSupported" ptr val
    pokeField @"bidirectionalFlowSupported" ptr val
    pokeField @"globalFlowSupported" ptr val
    pokeField @"minWidth" ptr val
    pokeField @"minHeight" ptr val
    pokeField @"maxWidth" ptr val
    pokeField @"maxHeight" ptr val
    pokeField @"maxNumRegionsOfInterest" ptr val

instance Offset "sType" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, pNext}

instance Offset "supportedOutputGridSizes" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, supportedOutputGridSizes}

instance Offset "supportedHintGridSizes" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, supportedHintGridSizes}

instance Offset "hintSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, hintSupported}

instance Offset "costSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, costSupported}

instance Offset "bidirectionalFlowSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, bidirectionalFlowSupported}

instance Offset "globalFlowSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, globalFlowSupported}

instance Offset "minWidth" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, minWidth}

instance Offset "minHeight" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, minHeight}

instance Offset "maxWidth" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, maxWidth}

instance Offset "maxHeight" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, maxHeight}

instance Offset "maxNumRegionsOfInterest" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceOpticalFlowPropertiesNV, maxNumRegionsOfInterest}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowPropertiesNV where

#endif