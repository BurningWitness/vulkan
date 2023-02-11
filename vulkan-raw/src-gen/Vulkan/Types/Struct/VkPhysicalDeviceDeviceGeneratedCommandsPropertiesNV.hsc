{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV" #-} VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV =
       VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxGraphicsShaderGroupCount :: #{type uint32_t}
         , maxIndirectSequenceCount :: #{type uint32_t}
         , maxIndirectCommandsTokenCount :: #{type uint32_t}
         , maxIndirectCommandsStreamCount :: #{type uint32_t}
         , maxIndirectCommandsTokenOffset :: #{type uint32_t}
         , maxIndirectCommandsStreamStride :: #{type uint32_t}
         , minSequencesCountBufferOffsetAlignment :: #{type uint32_t}
         , minSequencesIndexBufferOffsetAlignment :: #{type uint32_t}
         , minIndirectCommandsBufferOffsetAlignment :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxGraphicsShaderGroupCount" ptr)
       <*> peek (offset @"maxIndirectSequenceCount" ptr)
       <*> peek (offset @"maxIndirectCommandsTokenCount" ptr)
       <*> peek (offset @"maxIndirectCommandsStreamCount" ptr)
       <*> peek (offset @"maxIndirectCommandsTokenOffset" ptr)
       <*> peek (offset @"maxIndirectCommandsStreamStride" ptr)
       <*> peek (offset @"minSequencesCountBufferOffsetAlignment" ptr)
       <*> peek (offset @"minSequencesIndexBufferOffsetAlignment" ptr)
       <*> peek (offset @"minIndirectCommandsBufferOffsetAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxGraphicsShaderGroupCount" ptr val
    pokeField @"maxIndirectSequenceCount" ptr val
    pokeField @"maxIndirectCommandsTokenCount" ptr val
    pokeField @"maxIndirectCommandsStreamCount" ptr val
    pokeField @"maxIndirectCommandsTokenOffset" ptr val
    pokeField @"maxIndirectCommandsStreamStride" ptr val
    pokeField @"minSequencesCountBufferOffsetAlignment" ptr val
    pokeField @"minSequencesIndexBufferOffsetAlignment" ptr val
    pokeField @"minIndirectCommandsBufferOffsetAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, pNext}

instance Offset "maxGraphicsShaderGroupCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxGraphicsShaderGroupCount}

instance Offset "maxIndirectSequenceCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectSequenceCount}

instance Offset "maxIndirectCommandsTokenCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsTokenCount}

instance Offset "maxIndirectCommandsStreamCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsStreamCount}

instance Offset "maxIndirectCommandsTokenOffset" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsTokenOffset}

instance Offset "maxIndirectCommandsStreamStride" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsStreamStride}

instance Offset "minSequencesCountBufferOffsetAlignment" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, minSequencesCountBufferOffsetAlignment}

instance Offset "minSequencesIndexBufferOffsetAlignment" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, minSequencesIndexBufferOffsetAlignment}

instance Offset "minIndirectCommandsBufferOffsetAlignment" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset struct VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, minIndirectCommandsBufferOffsetAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where

#endif