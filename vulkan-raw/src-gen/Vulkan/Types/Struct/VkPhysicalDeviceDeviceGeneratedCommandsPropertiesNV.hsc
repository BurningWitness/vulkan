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
  sizeOf    _ = #{size      VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxGraphicsShaderGroupCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxIndirectSequenceCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxIndirectCommandsTokenCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxIndirectCommandsStreamCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxIndirectCommandsTokenOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxIndirectCommandsStreamStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSequencesCountBufferOffsetAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSequencesIndexBufferOffsetAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minIndirectCommandsBufferOffsetAlignment" ptr)

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
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, pNext}

instance Offset "maxGraphicsShaderGroupCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxGraphicsShaderGroupCount}

instance Offset "maxIndirectSequenceCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectSequenceCount}

instance Offset "maxIndirectCommandsTokenCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsTokenCount}

instance Offset "maxIndirectCommandsStreamCount" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsStreamCount}

instance Offset "maxIndirectCommandsTokenOffset" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsTokenOffset}

instance Offset "maxIndirectCommandsStreamStride" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, maxIndirectCommandsStreamStride}

instance Offset "minSequencesCountBufferOffsetAlignment" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, minSequencesCountBufferOffsetAlignment}

instance Offset "minSequencesIndexBufferOffsetAlignment" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, minSequencesIndexBufferOffsetAlignment}

instance Offset "minIndirectCommandsBufferOffsetAlignment" VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV, minIndirectCommandsBufferOffsetAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV where

#endif