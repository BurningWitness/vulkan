{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCapabilityFlagsKHR
import Vulkan.Types.Struct.VkExtensionProperties
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkVideoCapabilitiesKHR" #-} VkVideoCapabilitiesKHR =
       VkVideoCapabilitiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoCapabilityFlagsKHR
         , minBitstreamBufferOffsetAlignment :: VkDeviceSize
         , minBitstreamBufferSizeAlignment :: VkDeviceSize
         , pictureAccessGranularity :: VkExtent2D
         , minCodedExtent :: VkExtent2D
         , maxCodedExtent :: VkExtent2D
         , maxDpbSlots :: #{type uint32_t}
         , maxActiveReferencePictures :: #{type uint32_t}
         , stdHeaderVersion :: VkExtensionProperties
         }

instance Storable VkVideoCapabilitiesKHR where
  sizeOf    _ = #{size      struct VkVideoCapabilitiesKHR}
  alignment _ = #{alignment struct VkVideoCapabilitiesKHR}

  peek ptr = 
    VkVideoCapabilitiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"minBitstreamBufferOffsetAlignment" ptr)
       <*> peek (offset @"minBitstreamBufferSizeAlignment" ptr)
       <*> peek (offset @"pictureAccessGranularity" ptr)
       <*> peek (offset @"minCodedExtent" ptr)
       <*> peek (offset @"maxCodedExtent" ptr)
       <*> peek (offset @"maxDpbSlots" ptr)
       <*> peek (offset @"maxActiveReferencePictures" ptr)
       <*> peek (offset @"stdHeaderVersion" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"minBitstreamBufferOffsetAlignment" ptr val
    pokeField @"minBitstreamBufferSizeAlignment" ptr val
    pokeField @"pictureAccessGranularity" ptr val
    pokeField @"minCodedExtent" ptr val
    pokeField @"maxCodedExtent" ptr val
    pokeField @"maxDpbSlots" ptr val
    pokeField @"maxActiveReferencePictures" ptr val
    pokeField @"stdHeaderVersion" ptr val

instance Offset "sType" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, sType}

instance Offset "pNext" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, pNext}

instance Offset "flags" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, flags}

instance Offset "minBitstreamBufferOffsetAlignment" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, minBitstreamBufferOffsetAlignment}

instance Offset "minBitstreamBufferSizeAlignment" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, minBitstreamBufferSizeAlignment}

instance Offset "pictureAccessGranularity" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, pictureAccessGranularity}

instance Offset "minCodedExtent" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, minCodedExtent}

instance Offset "maxCodedExtent" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, maxCodedExtent}

instance Offset "maxDpbSlots" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, maxDpbSlots}

instance Offset "maxActiveReferencePictures" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, maxActiveReferencePictures}

instance Offset "stdHeaderVersion" VkVideoCapabilitiesKHR where
  rawOffset = #{offset struct VkVideoCapabilitiesKHR, stdHeaderVersion}

#else

module Vulkan.Types.Struct.VkVideoCapabilitiesKHR where

#endif