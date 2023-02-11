{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDeviceOpticalFlowPropertiesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceOpticalFlowPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceOpticalFlowPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"supportedOutputGridSizes" ptr)
       <*> peek (offset @"supportedHintGridSizes" ptr)
       <*> peek (offset @"hintSupported" ptr)
       <*> peek (offset @"costSupported" ptr)
       <*> peek (offset @"bidirectionalFlowSupported" ptr)
       <*> peek (offset @"globalFlowSupported" ptr)
       <*> peek (offset @"minWidth" ptr)
       <*> peek (offset @"minHeight" ptr)
       <*> peek (offset @"maxWidth" ptr)
       <*> peek (offset @"maxHeight" ptr)
       <*> peek (offset @"maxNumRegionsOfInterest" ptr)

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
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, pNext}

instance Offset "supportedOutputGridSizes" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, supportedOutputGridSizes}

instance Offset "supportedHintGridSizes" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, supportedHintGridSizes}

instance Offset "hintSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, hintSupported}

instance Offset "costSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, costSupported}

instance Offset "bidirectionalFlowSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, bidirectionalFlowSupported}

instance Offset "globalFlowSupported" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, globalFlowSupported}

instance Offset "minWidth" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, minWidth}

instance Offset "minHeight" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, minHeight}

instance Offset "maxWidth" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, maxWidth}

instance Offset "maxHeight" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, maxHeight}

instance Offset "maxNumRegionsOfInterest" VkPhysicalDeviceOpticalFlowPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceOpticalFlowPropertiesNV, maxNumRegionsOfInterest}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowPropertiesNV where

#endif